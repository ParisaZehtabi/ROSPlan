0.000: (goto_waypoint robot0 wp0 printer0)  [185.000]
0.000: (goto_waypoint robot1 wp0 printer0)  [185.000]
0.000: (goto_waypoint robot2 wp0 wp8)  [215.000]
185.001: (wait_load_at_printer robot0 robot1 printer0)  [15.000]
200.001: (goto_waypoint robot1 printer0 wp2)  [35.000]
200.001: (goto_waypoint robot0 printer0 wp2)  [35.000]
215.001: (goto_waypoint robot2 wp8 printer3)  [210.000]
235.001: (ask_unload robot0 wp2)  [5.000]
235.002: (goto_waypoint robot1 wp2 wp1)  [100.000]
335.003: (goto_waypoint robot1 wp1 wp3)  [155.000]
490.004: (goto_waypoint robot1 wp3 printer3)  [500.000]
990.004: (wait_load_at_printer robot2 robot1 printer3)  [15.000]
1005.004: (goto_waypoint robot2 printer3 wp0)  [425.000]
1180.005: (goto_waypoint robot1 printer3 wp5)  [270.000]
1215.004: (goto_waypoint robot0 wp2 wp3)  [215.000]
1430.004: (ask_unload robot0 wp3)  [5.000]
1430.004: (ask_unload robot2 wp0)  [5.000]
1435.005: (wait_unload robot0 wp3)  [15.000]
1435.005: (wait_unload robot2 wp0)  [15.000]