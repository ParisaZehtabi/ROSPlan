0.000: (goto_waypoint robot0 wp0 printer3)  [95.000]
0.000: (goto_waypoint robot1 wp0 printer3)  [95.000]
0.000: (goto_waypoint robot2 wp0 printer3)  [95.000]
95.001: (wait_load_at_printer robot0 robot1 printer3)  [15.000]
110.001: (goto_waypoint robot0 printer3 wp3)  [210.000]
130.002: (goto_waypoint robot1 printer3 wp3)  [210.000]
320.001: (ask_unload robot0 wp3)  [5.000]
325.002: (wait_unload robot0 wp3)  [15.000]