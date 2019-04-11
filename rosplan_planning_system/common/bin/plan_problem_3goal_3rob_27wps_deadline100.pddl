Number of literals: 59
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 80.000)b (8.000 | 310.001)b (6.000 | 460.001)b (5.000 | 470.003)b (4.000 | 670.003)b (3.000 | 690.003)
Resorting to best-first search
b (9.000 | 80.000)b (8.000 | 310.001)b (6.000 | 430.001)b (5.000 | 500.002)b (3.000 | 890.004)b (2.000 | 980.004)b (1.000 | 980.004)
; Plan found with metric 990.003
; States evaluated so far: 289714
; Time 374.66
0.000: (goto_waypoint robot1 wp4 printer0)  [80.000]
0.000: (goto_waypoint robot0 wp2 printer0)  [250.000]
0.000: (goto_waypoint robot2 wp5 printer1)  [270.000]
250.001: (wait_load_at_printer robot1 robot0 printer0)  [60.000]
310.001: (goto_waypoint robot0 printer0 wp5)  [120.000]
310.001: (goto_waypoint robot1 printer0 wp5)  [120.000]
430.001: (ask_unload robot1 wp5)  [20.000]
430.002: (goto_waypoint robot0 wp5 wp3)  [70.000]
450.002: (wait_unload robot1 wp5)  [60.000]
500.003: (goto_waypoint robot0 wp3 printer1)  [200.000]
510.002: (goto_waypoint robot1 wp5 printer1)  [270.000]
710.002: (wait_load_at_printer robot2 robot0 printer1)  [60.000]
770.002: (goto_waypoint robot2 printer1 wp2)  [140.000]
780.002: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
840.002: (goto_waypoint robot1 printer1 wp4)  [70.000]
910.002: (ask_unload robot2 wp2)  [20.000]
910.002: (ask_unload robot1 wp4)  [20.000]
930.003: (wait_unload robot2 wp2)  [60.000]
930.003: (wait_unload robot1 wp4)  [60.000]

 * All goal deadlines now no later than 990.003
