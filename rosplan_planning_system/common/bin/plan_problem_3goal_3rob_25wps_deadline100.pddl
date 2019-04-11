Number of literals: 49
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 50.000)b (8.000 | 80.000)b (7.000 | 140.001)b (6.000 | 240.001)b (5.000 | 240.001)b (4.000 | 480.002)b (3.000 | 500.002)
Resorting to best-first search
b (9.000 | 80.000)b (9.000 | 50.000)b (8.000 | 80.000)b (7.000 | 140.001)b (6.000 | 240.001)b (6.000 | 190.001)b (5.000 | 210.001)b (4.000 | 430.001)b (3.000 | 450.001)b (2.000 | 630.003)b (1.000 | 660.003)b (1.000 | 590.003)
; Plan found with metric 590.003
; States evaluated so far: 319023
; Time 258.00
0.000: (goto_waypoint robot2 wp3 printer1)  [50.000]
0.000: (goto_waypoint robot1 wp4 printer1)  [80.000]
0.000: (goto_waypoint robot0 wp2 printer1)  [100.000]
80.001: (wait_load_at_printer robot1 robot2 printer1)  [60.000]
100.001: (wait_load_at_printer robot0 robot2 printer1)  [60.000]
140.001: (goto_waypoint robot1 printer1 wp3)  [50.000]
160.001: (goto_waypoint robot0 printer1 wp4)  [80.000]
190.001: (ask_unload robot1 wp3)  [20.000]
210.002: (goto_waypoint robot1 wp3 wp2)  [130.000]
240.001: (ask_unload robot0 wp4)  [20.000]
260.002: (wait_unload robot0 wp4)  [60.000]
320.002: (goto_waypoint robot0 wp4 printer1)  [80.000]
340.002: (ask_unload robot1 wp2)  [20.000]
360.003: (wait_unload robot1 wp2)  [60.000]
400.002: (wait_load_at_printer robot0 robot2 printer1)  [60.000]
460.002: (goto_waypoint robot0 printer1 wp3)  [50.000]
510.002: (ask_unload robot0 wp3)  [20.000]
530.003: (wait_unload robot0 wp3)  [60.000]

 * All goal deadlines now no later than 590.003
