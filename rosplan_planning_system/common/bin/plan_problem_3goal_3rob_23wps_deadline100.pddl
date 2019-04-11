Number of literals: 39
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 9.000
b (8.000 | 100.000)b (7.000 | 160.001)b (6.000 | 320.001)b (5.000 | 320.001)b (4.000 | 640.003)b (3.000 | 700.004)
Resorting to best-first search
b (8.000 | 140.000)b (8.000 | 100.000)b (7.000 | 160.001)b (6.000 | 260.001)b (5.000 | 440.002)b (5.000 | 400.002)b (3.000 | 760.004)b (3.000 | 620.002)b (2.000 | 780.003)b (1.000 | 780.003)
; Plan found with metric 780.003
; States evaluated so far: 48121
; Time 24.70
0.000: (goto_waypoint robot0 wp1 printer0)  [140.000]
0.000: (goto_waypoint robot2 wp0 printer0)  [60.000]
0.000: (goto_waypoint robot1 wp2 wp0)  [180.000]
140.001: (wait_load_at_printer robot0 robot2 printer0)  [60.000]
180.001: (goto_waypoint robot1 wp0 wp2)  [180.000]
200.001: (goto_waypoint robot2 printer0 wp1)  [140.000]
200.001: (goto_waypoint robot0 printer0 wp1)  [140.000]
340.001: (ask_unload robot0 wp1)  [20.000]
340.002: (goto_waypoint robot2 wp1 printer0)  [140.000]
360.002: (wait_unload robot0 wp1)  [60.000]
360.002: (goto_waypoint robot1 wp2 printer0)  [140.000]
420.002: (goto_waypoint robot0 wp1 printer0)  [140.000]
500.002: (wait_load_at_printer robot1 robot2 printer0)  [60.000]
560.002: (goto_waypoint robot1 printer0 wp2)  [140.000]
560.002: (wait_load_at_printer robot2 robot0 printer0)  [60.000]
620.002: (goto_waypoint robot2 printer0 wp0)  [60.000]
680.002: (ask_unload robot2 wp0)  [20.000]
700.002: (ask_unload robot1 wp2)  [20.000]
700.003: (wait_unload robot2 wp0)  [60.000]
720.003: (wait_unload robot1 wp2)  [60.000]

 * All goal deadlines now no later than 780.003
b (1.000 | 760.003)
; Plan found with metric 760.003
; States evaluated so far: 65188
; Time 33.34
0.000: (goto_waypoint robot0 wp1 printer0)  [140.000]
0.000: (goto_waypoint robot2 wp0 printer0)  [60.000]
0.000: (goto_waypoint robot1 wp2 wp0)  [180.000]
140.001: (wait_load_at_printer robot0 robot2 printer0)  [60.000]
180.001: (goto_waypoint robot1 wp0 wp2)  [180.000]
200.001: (goto_waypoint robot2 printer0 wp1)  [140.000]
200.001: (goto_waypoint robot0 printer0 wp2)  [140.000]
340.001: (ask_unload robot0 wp2)  [20.000]
340.002: (goto_waypoint robot2 wp1 printer1)  [100.000]
360.002: (wait_unload robot0 wp2)  [60.000]
360.002: (goto_waypoint robot1 wp2 printer1)  [160.000]
420.002: (goto_waypoint robot0 wp2 printer1)  [160.000]
520.002: (wait_load_at_printer robot2 robot1 printer1)  [60.000]
580.002: (goto_waypoint robot2 printer1 wp1)  [100.000]
580.002: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
640.002: (goto_waypoint robot1 printer1 wp0)  [20.000]
660.002: (ask_unload robot1 wp0)  [20.000]
680.002: (ask_unload robot2 wp1)  [20.000]
680.003: (wait_unload robot1 wp0)  [60.000]
700.003: (wait_unload robot2 wp1)  [60.000]

 * All goal deadlines now no later than 760.003
b (1.000 | 740.003)