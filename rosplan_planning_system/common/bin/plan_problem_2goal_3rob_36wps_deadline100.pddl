Number of literals: 57
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 7.000
b (6.000 | 90.000)b (4.000 | 280.001)b (3.000 | 300.001)
Resorting to best-first search
b (6.000 | 90.000)b (4.000 | 320.001)b (3.000 | 340.001)b (3.000 | 300.001)b (2.000 | 540.002)b (1.000 | 540.002)
; Plan found with metric 540.002
; States evaluated so far: 200379
; Time 140.06
0.000: (goto_waypoint robot2 wp4 printer0)  [90.000]
0.000: (dock robot0 wp0)  [120.000]
0.000: (goto_waypoint robot1 wp5 printer0)  [110.000]
110.001: (wait_load_at_printer robot2 robot1 printer0)  [60.000]
120.001: (undock robot0 wp0)  [20.000]
140.001: (goto_waypoint robot0 wp0 printer1)  [150.000]
170.001: (goto_waypoint robot2 printer0 wp5)  [110.000]
170.001: (goto_waypoint robot1 printer0 printer1)  [80.000]
280.001: (ask_unload robot2 wp5)  [20.000]
290.001: (wait_load_at_printer robot1 robot0 printer1)  [60.000]
300.002: (goto_waypoint robot2 wp5 wp0)  [40.000]
340.002: (ask_unload robot2 wp0)  [20.000]
350.001: (goto_waypoint robot1 printer1 wp5)  [110.000]
360.003: (wait_unload robot2 wp0)  [60.000]
460.001: (ask_unload robot1 wp5)  [20.000]
480.002: (wait_unload robot1 wp5)  [60.000]

 * All goal deadlines now no later than 540.002
b (1.000 | 480.001)