Number of literals: 44
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
== Warning ==

The action (goto_waypoint robot0 wp2 printer1) has a fixed duration of zero,
but also has:

* Propositional over all conditions

In this case, correct handling of the action is unclear (e.g. at what point
must the over all/at end conditions hold if there is no gap between the start
and end of the action).  If the intention is for the action to be truly
instantaneous, use a PDDL (:action rather than a (:durative-action.  For now,
however, the action has been discarded.

Other actions to have been discarded due to zero-durations include
(goto_waypoint robot1 wp2 printer1)
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 60.000)b (8.000 | 210.001)b (7.000 | 290.001)b (6.000 | 400.002)b (5.000 | 420.002)b (4.000 | 750.003)b (3.000 | 770.003)
Resorting to best-first search
b (9.000 | 60.000)b (8.000 | 210.001)b (7.000 | 290.001)b (6.000 | 360.001)b (5.000 | 380.001)b (4.000 | 710.002)b (3.000 | 730.002)b (2.000 | 1000.003)b (1.000 | 1020.003)