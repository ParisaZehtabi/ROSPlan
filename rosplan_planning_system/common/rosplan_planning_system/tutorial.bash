echo "Generating a Problem"
rosservice call /rosplan_problem_interface/problem_generation_server

echo "Planning"
rosservice call /rosplan_planner_interface/planning_server

echo "Parsing plan" 
rosservice call /rosplan_parsing_interface/parse_plan

sleep 3

echo "prepare the robust"
#rosservice call /run_STN

#rosservice call /rosplan_plan_dispatcher/dispatch_plan





