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
		nh.getParam("action_probability", action_probability);
	}

	/* action dispatch callback */
	bool RPSimulatedActionInterface::concreteCallback(const rosplan_dispatch_msgs::ActionDispatch::ConstPtr& msg) {

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
std::cout << "1" << std::endl;
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
std::cout << "2" << std::endl;
			// update knowledge base
			rosplan_knowledge_msgs::KnowledgeUpdateServiceArray updatePredSrv;
std::cout << "3" << std::endl;
			// numeric END del effects
			for(int i=0; i<op.at_end_assign_effects.size(); i++) {
				rosplan_knowledge_msgs::KnowledgeItem item;
				item.knowledge_type = rosplan_knowledge_msgs::KnowledgeItem::FUNCTION;
				item.attribute_name = op.at_end_assign_effects[i].LHS.name;
std::cout << op.at_end_assign_effects[i].LHS.name << std::endl;
				item.values.clear();
				diagnostic_msgs::KeyValue pair;
				for(size_t j=0; j<op.at_end_assign_effects[i].LHS.typed_parameters.size(); j++) {
std::cout << op.at_end_assign_effects[i].LHS.typed_parameters[i].key << std::endl;
std::map<std::string, rosplan_knowledge_msgs::DomainFormula>::iterator pit = predicates.begin();
for(;pit!=predicates.end();pit++) {
    std::cout << "--" << pit->first << std::endl;
}
std::cout << "A: " << predicates[op.at_end_assign_effects[i].LHS.name].typed_parameters[j].key << std::endl;
std::cout << "B: " << boundParameters[op.at_end_assign_effects[i].LHS.typed_parameters[j].key] << std::endl;
					pair.key = predicates[op.at_end_assign_effects[i].LHS.name].typed_parameters[j].key;
					pair.value = boundParameters[op.at_end_assign_effects[i].LHS.typed_parameters[j].key];
					item.values.push_back(pair);
				}
				item.function_value = assignment_value;
				updatePredSrv.request.knowledge.push_back(item);
				updatePredSrv.request.update_type.push_back(rosplan_knowledge_msgs::KnowledgeUpdateService::Request::ADD_KNOWLEDGE);

				ROS_INFO("KCL: (%s) updating %s in knowledge base to %f", params.name.c_str(), item.attribute_name.c_str(), assignment_value);
			}
std::cout << "4" << std::endl;
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
