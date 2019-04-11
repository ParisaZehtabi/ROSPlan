Number of literals: 59
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 8.000
b (7.000 | 140.000)b (6.000 | 140.000)b (4.000 | 370.001)b (3.000 | 390.001)
Resorting to best-first search
b (7.000 | 140.000)b (7.000 | 90.000)b (6.000 | 140.000)b (6.000 | 110.000)b (5.000 | 240.001)b (4.000 | 350.001)b (3.000 | 370.001)b (2.000 | 530.002)b (1.000 | 530.002)
; Plan found with metric 530.002
; States evaluated so far: 80613
; Time 45.06
0.000: (goto_waypoint robot2 wp6 wp2)  [90.000]
0.000: (goto_waypoint robot0 wp0 printer0)  [140.000]
0.000: (goto_waypoint robot1 wp4 printer0)  [170.000]
90.001: (goto_waypoint robot2 wp2 printer0)  [130.000]
170.001: (wait_load_at_printer robot1 robot0 printer0)  [60.000]
220.001: (wait_load_at_printer robot2 robot0 printer0)  [60.000]
230.001: (goto_waypoint robot1 printer0 wp0)  [140.000]
280.001: (goto_waypoint robot2 printer0 wp4)  [170.000]
370.001: (ask_unload robot1 wp0)  [20.000]
390.002: (wait_unload robot1 wp0)  [60.000]
450.001: (ask_unload robot2 wp4)  [20.000]
470.002: (wait_unload robot2 wp4)  [60.000]

 * All goal deadlines now no later than 530.002
b (1.000 | 500.002)
; Plan found with metric 500.002
; States evaluated so far: 86332
; Time 47.54
0.000: (goto_waypoint robot2 wp6 wp2)  [90.000]
0.000: (goto_waypoint robot0 wp0 printer0)  [140.000]
0.000: (goto_waypoint robot1 wp4 printer0)  [170.000]
90.001: (goto_waypoint robot2 wp2 printer0)  [130.000]
170.001: (wait_load_at_printer robot1 robot0 printer0)  [60.000]
220.001: (wait_load_at_printer robot2 robot0 printer0)  [60.000]
230.001: (goto_waypoint robot1 printer0 wp4)  [170.000]
280.001: (goto_waypoint robot2 printer0 wp0)  [140.000]
400.001: (ask_unload robot1 wp4)  [20.000]
420.001: (ask_unload robot2 wp0)  [20.000]
420.002: (wait_unload robot1 wp4)  [60.000]
440.002: (wait_unload robot2 wp0)  [60.000]

 * All goal deadlines now no later than 500.002
b (1.000 | 500.001)b (1.000 | 480.002)