0.000: (goto_waypoint robot0 wp0 wp3)  [415.000]
0.000: (goto_waypoint robot1 wp0 wp1)  [605.000]
0.000: (goto_waypoint robot2 wp0 printer0)  [535.000]
415.001: (goto_waypoint robot0 wp3 printer0)  [120.000]
535.001: (wait_load_at_printer robot2 robot0 printer0)  [15.000]
550.001: (goto_waypoint robot2 printer0 wp3)  [120.000]
550.001: (goto_waypoint robot0 printer0 wp2)  [215.000]
605.001: (goto_waypoint robot1 wp1 printer2)  [330.000]
670.001: (ask_unload robot2 wp3)  [5.000]
675.002: (wait_unload robot2 wp3)  [15.000]
690.002: (goto_waypoint robot2 wp3 printer3)  [195.000]
765.002: (goto_waypoint robot0 wp2 printer3)  [140.000]
905.002: (wait_load_at_printer robot2 robot0 printer3)  [15.000]
920.002: (goto_waypoint robot2 printer3 wp4)  [160.000]
935.002: (goto_waypoint robot1 printer2 printer1)  [210.000]
1025.004: (goto_waypoint robot0 printer3 wp0)  [220.000]
1080.002: (ask_unload robot2 wp4)  [5.000]
1085.003: (wait_unload robot2 wp4)  [15.000]
1100.003: (goto_waypoint robot2 wp4 printer1)  [125.000]
1145.003: (goto_waypoint robot1 printer1 wp0)  [65.000]
1210.004: (goto_waypoint robot1 wp0 printer1)  [65.000]
1245.005: (goto_waypoint robot0 wp0 wp1)  [605.000]
1275.004: (wait_load_at_printer robot2 robot1 printer1)  [15.000]
1290.004: (goto_waypoint robot2 printer1 wp1)  [540.000]
1830.004: (ask_unload robot2 wp1)  [5.000]
1835.005: (wait_unload robot2 wp1)  [15.000]