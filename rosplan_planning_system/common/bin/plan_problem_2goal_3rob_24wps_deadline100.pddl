Number of literals: 44
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 9.000
b (8.000 | 30.000)b (5.000 | 110.001)b (4.000 | 260.001)
Resorting to best-first search
b (8.000 | 30.000)b (7.000 | 60.000)b (6.000 | 120.001)b (5.000 | 160.001)b (4.000 | 180.001)b (3.000 | 240.001)b (2.000 | 260.001)b (1.000 | 260.002)
; Plan found with metric 260.002
; States evaluated so far: 30801
; Time 13.40
0.000: (goto_waypoint robot2 wp2 printer1)  [40.000]
0.000: (goto_waypoint robot0 wp3 printer1)  [60.000]
0.000: (goto_waypoint robot1 wp1 printer1)  [60.000]
60.001: (wait_load_at_printer robot2 robot0 printer1)  [60.000]
60.001: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
120.001: (goto_waypoint robot1 printer1 wp1)  [60.000]
120.001: (goto_waypoint robot2 printer1 wp3)  [60.000]
180.001: (ask_unload robot1 wp1)  [20.000]
180.001: (ask_unload robot2 wp3)  [20.000]
200.002: (wait_unload robot1 wp1)  [60.000]
200.002: (wait_unload robot2 wp3)  [60.000]

 * All goal deadlines now no later than 260.002
