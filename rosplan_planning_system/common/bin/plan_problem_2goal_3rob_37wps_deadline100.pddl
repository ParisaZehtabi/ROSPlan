Number of literals: 62
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 11.000
b (8.000 | 100.000)b (6.000 | 100.000)b (5.000 | 270.001)b (4.000 | 330.002)
Resorting to best-first search
b (10.000 | 140.000)b (6.000 | 90.000)b (5.000 | 360.002)b (4.000 | 360.002)b (2.000 | 360.002)b (1.000 | 360.002)
; Plan found with metric 360.002
; States evaluated so far: 3704
; Time 1.30
0.000: (goto_waypoint robot1 wp4 printer1)  [90.000]
0.000: (goto_waypoint robot2 wp0 printer1)  [130.000]
0.000: (goto_waypoint robot0 wp6 printer1)  [100.000]
100.001: (wait_load_at_printer robot0 robot1 printer1)  [60.000]
130.001: (wait_load_at_printer robot2 robot1 printer1)  [60.000]
160.001: (goto_waypoint robot0 printer1 wp6)  [100.000]
190.001: (goto_waypoint robot2 printer1 wp4)  [90.000]
260.001: (ask_unload robot0 wp6)  [20.000]
280.001: (ask_unload robot2 wp4)  [20.000]
280.002: (wait_unload robot0 wp6)  [60.000]
300.002: (wait_unload robot2 wp4)  [60.000]

 * All goal deadlines now no later than 360.002
