#include "rosplan_action_interface/RPSimulatedActionInterface.h"

/* The implementation of RPSimulatedActionInterface.h */
namespace KCL_rosplan {

	/* constructor */
	RPSimulatedActionInterface::RPSimulatedActionInterface(ros::NodeHandle &nh) {
		action_duration = 0.0;
		action_probability = 1.0;
		nh.getParam("action_duration", action_duration);
		nh.getParam("assignment_value", assignment_value);
		nh.getParam("action_duration_stddev", action_duration_stddev);
		nh.getParam("action_assignment_stddev", action_assignment_stddev);
		nh.getParam("action_probability", action_probability);
	}

	/* action dispatch callback */
	bool RPSimulatedActionInterface::concreteCallback(const rosplan_dispatch_msgs::ActionDispatch::ConstPtr &msg, rosplan_dispatch_msgs::ActionFeedback &fb) {

		// wait for some time
        double duration = msg->duration - 1;
        if(action_duration > 0) {
            duration = action_duration - 1;
        }

        if(action_duration_stddev > 0) {
            std::default_random_engine generator(ros::WallTime::now().toSec());
            std::normal_distribution<double> distribution(duration, action_duration_stddev);
            double d = distribution(generator);
            if(d < duration) d = duration + (duration - d);
            if(d < 0) d = 0;
    		ROS_INFO("KCL: (%s) Action completing with probability %f and duration %f", params.name.c_str(), action_probability, d);
            if(d>0) {
		        ros::Rate wait = 1.0 / d;
		        wait.sleep();
            }
        } else {
    		ROS_INFO("KCL: (%s) Action completing with probability %f and duration %f", params.name.c_str(), action_probability, duration);
            if(duration>0) {
		        ros::Rate wait = 1.0 / duration;
		        wait.sleep();
            }
        }

        // decide action success
        bool succ = (rand() % 100) <= (100 * action_probability);

        // numeric update
        if(succ) {

            // find PDDL parameters
            std::map<std::string, std::string> boundParameters;
            for(size_t j=0; j<params.typed_parameters.size(); j++) {
                for(size_t i=0; i<msg->parameters.size(); i++) {
                    if(params.typed_parameters[j].key == msg->parameters[i].key) {
                        boundParameters[msg->parameters[i].key] = msg->parameters[i].value;
                        break;
                    }
                }
            }

			// update knowledge base
			rosplan_knowledge_msgs::KnowledgeUpdateServiceArray updatePredSrv;

			// numeric END del effects
			for(int i=0; i<op.at_end_assign_effects.size(); i++) {
				rosplan_knowledge_msgs::KnowledgeItem item;
				item.knowledge_type = rosplan_knowledge_msgs::KnowledgeItem::FUNCTION;
				item.attribute_name = op.at_end_assign_effects[i].LHS.name;
				item.values.clear();
				diagnostic_msgs::KeyValue pair;
				for(size_t j=0; j<op.at_end_assign_effects[i].LHS.typed_parameters.size(); j++) {
					pair.key = predicates[op.at_end_assign_effects[i].LHS.name].typed_parameters[j].key;
					pair.value = boundParameters[op.at_end_assign_effects[i].LHS.typed_parameters[j].key];
					item.values.push_back(pair);
				}

                // set up KB service
                ros::NodeHandle nh("~");
                std::string kb = "knowledge_base";
                nh.getParam("knowledge_base", kb);
                std::stringstream ss;
                ss << "/" << kb << "/state/functions";
                ros::service::waitForService(ss.str(),ros::Duration(20));
                ros::ServiceClient funcClient = nh.serviceClient<rosplan_knowledge_msgs::GetAttributeService>(ss.str());

                // fetch existing value of the function
                double function_value = 0;
                rosplan_knowledge_msgs::GetAttributeService funcSrv;
                funcSrv.request.predicate_name = op.at_end_assign_effects[i].LHS.name;
                if(funcClient.call(funcSrv)) {
                    std::vector<rosplan_knowledge_msgs::KnowledgeItem>::iterator kit = funcSrv.response.attributes.begin();
                    for(; kit!=funcSrv.response.attributes.end(); kit++) {
                        bool match = true;
                        if(kit->values.size() != item.values.size()) continue;
                        for(int p=0; p<kit->values.size(); p++) {
                            if(kit->values[p].value != item.values[p].value) {
                                match = false;
                                break;
                            }
                        }
                        if(match) {
                            function_value = kit->function_value;
                            break;
                        }
                    }
                } else {
                    ROS_ERROR("KCL: (%s) could not call Knowledge Base for function value during assignment effect.", params.name.c_str());
                }

                double assign = assignment_value;
                if(action_assignment_stddev > 0) {
                    std::default_random_engine ass_gen(ros::WallTime::now().toSec());
                    std::normal_distribution<double> ass_dist(assignment_value, action_assignment_stddev);
                    assign = ass_dist(ass_gen);
                }

                diagnostic_msgs::KeyValue assignPair;
                assignPair.key = "assignment";
                assignPair.value = std::to_string(assign);
                fb.information.push_back(assignPair);

                switch(op.at_end_assign_effects[i].assign_type) {
                case rosplan_knowledge_msgs::DomainAssignment::ASSIGN:
    				ROS_INFO("KCL: (%s) updating %s in knowledge base to %f", params.name.c_str(), item.attribute_name.c_str(), assign);
    				item.function_value = assign;
                    break;
                case rosplan_knowledge_msgs::DomainAssignment::INCREASE:
    				ROS_INFO("KCL: (%s) increasing %s in knowledge base by %f", params.name.c_str(), item.attribute_name.c_str(), assign);
    				item.function_value = function_value + assign;                    
                    break;
                case rosplan_knowledge_msgs::DomainAssignment::DECREASE:
    				ROS_INFO("KCL: (%s) decreasing %s in knowledge base by %f", params.name.c_str(), item.attribute_name.c_str(), assign);
    				item.function_value = function_value - assign;                    
                    break;
                case rosplan_knowledge_msgs::DomainAssignment::SCALE_UP:
    				ROS_INFO("KCL: (%s) scaling up %s in knowledge base by %f", params.name.c_str(), item.attribute_name.c_str(), assign);
    				item.function_value = function_value * assign;                    
                    break;
                case rosplan_knowledge_msgs::DomainAssignment::SCALE_DOWN:
    				ROS_INFO("KCL: (%s) scaling down %s in knowledge base by %f", params.name.c_str(), item.attribute_name.c_str(), assign);
    				item.function_value = function_value / assign;                    
                    break;
                case rosplan_knowledge_msgs::DomainAssignment::ASSIGN_CTS:
    				ROS_WARN("KCL: (%s) not implemented CONTINUOUS ASSIGNMENT effects of a simulated action.", params.name.c_str());                    
                    break;
                }

				updatePredSrv.request.knowledge.push_back(item);
				updatePredSrv.request.update_type.push_back(rosplan_knowledge_msgs::KnowledgeUpdateService::Request::ADD_KNOWLEDGE);
			}

			if(updatePredSrv.request.knowledge.size()>0 && !update_knowledge_client.call(updatePredSrv))
				ROS_INFO("KCL: (%s) failed to update PDDL model in knowledge base", params.name.c_str());
        }

		// complete the action
		return succ;
	}
} // close namespace

	/*-------------*/
	/* Main method */
	/*-------------*/

	int main(int argc, char **argv) {

		ros::init(argc, argv, "rosplan_simulated_action", ros::init_options::AnonymousName);
		ros::NodeHandle nh("~");

		// create PDDL action subscriber
		KCL_rosplan::RPSimulatedActionInterface rpsa(nh);

		rpsa.runActionInterface();

		return 0;
	}
