Number of literals: 57
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
== Warning ==

The action (goto_waypoint robot0 wp0 printer2) has a fixed duration of zero,
but also has:

* Propositional over all conditions

In this case, correct handling of the action is unclear (e.g. at what point
must the over all/at end conditions hold if there is no gap between the start
and end of the action).  If the intention is for the action to be truly
instantaneous, use a PDDL (:action rather than a (:durative-action.  For now,
however, the action has been discarded.

Other actions to have been discarded due to zero-durations include
(goto_waypoint robot1 wp0 printer2)
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 13.000
b (12.000 | 50.000)b (8.000 | 110.000)b (7.000 | 240.001)b (6.000 | 370.001)b (5.000 | 580.002)
Resorting to best-first search
b (12.000 | 50.000)b (11.000 | 260.000)b (11.000 | 110.000)b (11.000 | 20.000)b (8.000 | 50.000)b (7.000 | 210.001)b (6.000 | 330.001)b (5.000 | 340.002)b (4.000 | 500.003)b (3.000 | 710.003)b (3.000 | 630.003)