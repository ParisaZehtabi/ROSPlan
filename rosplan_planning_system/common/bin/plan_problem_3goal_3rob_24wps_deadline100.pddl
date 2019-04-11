Number of literals: 44
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 9.000
b (8.000 | 30.000)b (7.000 | 160.001)b (6.000 | 260.001)b (5.000 | 280.001)b (4.000 | 580.003)b (3.000 | 580.003)
Resorting to best-first search
b (8.000 | 130.000)b (8.000 | 30.000)b (7.000 | 190.001)b (6.000 | 250.001)b (5.000 | 270.001)b (4.000 | 520.002)b (3.000 | 520.002)b (2.000 | 640.002)b (1.000 | 640.002)
; Plan found with metric 660.003
; States evaluated so far: 27827
; Time 16.21
0.000: (goto_waypoint robot0 wp1 printer0)  [130.000]
0.000: (goto_waypoint robot2 wp2 printer0)  [60.000]
0.000: (dock robot1 wp0)  [120.000]
120.001: (undock robot1 wp0)  [20.000]
130.001: (wait_load_at_printer robot2 robot0 printer0)  [60.000]
140.001: (goto_waypoint robot1 wp0 printer0)  [180.000]
190.001: (goto_waypoint robot2 printer0 wp2)  [60.000]
190.001: (goto_waypoint robot0 printer0 wp2)  [60.000]
250.001: (ask_unload robot2 wp2)  [20.000]
250.002: (goto_waypoint robot0 wp2 printer0)  [60.000]
270.002: (wait_unload robot2 wp2)  [60.000]
320.001: (wait_load_at_printer robot1 robot0 printer0)  [60.000]
330.002: (goto_waypoint robot2 wp2 printer0)  [60.000]
390.002: (wait_load_at_printer robot0 robot2 printer0)  [60.000]
400.002: (goto_waypoint robot1 printer0 wp0)  [180.000]
450.002: (goto_waypoint robot0 printer0 wp1)  [130.000]
580.002: (ask_unload robot1 wp0)  [20.000]
580.002: (ask_unload robot0 wp1)  [20.000]
600.003: (wait_unload robot1 wp0)  [60.000]
600.003: (wait_unload robot0 wp1)  [60.000]

 * All goal deadlines now no later than 660.003
b (1.000 | 600.003)
; Plan found with metric 650.003
; States evaluated so far: 203493
; Time 131.66
0.000: (goto_waypoint robot0 wp1 printer0)  [130.000]
0.000: (goto_waypoint robot2 wp2 printer0)  [60.000]
0.000: (dock robot1 wp0)  [120.000]
120.001: (undock robot1 wp0)  [20.000]
130.001: (wait_load_at_printer robot2 robot0 printer0)  [60.000]
140.001: (goto_waypoint robot1 wp0 printer1)  [160.000]
190.001: (goto_waypoint robot2 printer0 wp2)  [60.000]
190.001: (goto_waypoint robot0 printer0 wp2)  [60.000]
250.001: (ask_unload robot2 wp2)  [20.000]
250.002: (goto_waypoint robot0 wp2 printer1)  [100.000]
270.002: (wait_unload robot2 wp2)  [60.000]
350.002: (wait_load_at_printer robot0 robot1 printer1)  [60.000]
380.002: (goto_waypoint robot2 wp2 printer1)  [100.000]
410.002: (goto_waypoint robot0 printer1 wp0)  [160.000]
480.002: (wait_load_at_printer robot2 robot1 printer1)  [60.000]
540.002: (goto_waypoint robot2 printer1 wp1)  [30.000]
570.002: (ask_unload robot0 wp0)  [20.000]
570.002: (ask_unload robot2 wp1)  [20.000]
590.003: (wait_unload robot2 wp1)  [60.000]
590.003: (wait_unload robot0 wp0)  [60.000]

 * All goal deadlines now no later than 650.003
