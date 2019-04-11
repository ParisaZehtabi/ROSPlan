Number of literals: 42
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 8.000
b (7.000 | 60.000)b (6.000 | 200.001)b (5.000 | 310.001)b (4.000 | 340.002)b (3.000 | 360.002)
Resorting to best-first search
b (7.000 | 60.000)b (6.000 | 200.001)b (5.000 | 200.001)b (4.000 | 340.001)b (3.000 | 360.001)b (2.000 | 680.002)b (1.000 | 700.002)b (1.000 | 620.003)
; Plan found with metric 680.004
; States evaluated so far: 9310
; Time 3.76
0.000: (goto_waypoint robot0 wp1 printer1)  [60.000]
0.000: (goto_waypoint robot1 wp2 printer1)  [140.000]
140.001: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
200.001: (goto_waypoint robot1 printer1 wp1)  [60.000]
200.001: (goto_waypoint robot0 printer1 printer2)  [100.000]
260.001: (ask_unload robot1 wp1)  [20.000]
280.002: (wait_unload robot1 wp1)  [60.000]
300.002: (goto_waypoint robot0 printer2 wp1)  [40.000]
340.002: (goto_waypoint robot1 wp1 printer1)  [60.000]
340.003: (goto_waypoint robot0 wp1 printer1)  [60.000]
400.003: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
460.003: (goto_waypoint robot1 printer1 wp2)  [140.000]
600.003: (ask_unload robot1 wp2)  [20.000]
620.004: (wait_unload robot1 wp2)  [60.000]

 * All goal deadlines now no later than 680.004
