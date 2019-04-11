Number of literals: 32
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%]
== Warning ==

The action (goto_waypoint robot0 wp2 printer0) has a fixed duration of zero,
but also has:

* Propositional over all conditions

In this case, correct handling of the action is unclear (e.g. at what point
must the over all/at end conditions hold if there is no gap between the start
and end of the action).  If the intention is for the action to be truly
instantaneous, use a PDDL (:action rather than a (:durative-action.  For now,
however, the action has been discarded.

Other actions to have been discarded due to zero-durations include
(goto_waypoint robot1 wp2 printer0)
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 220.000)b (8.000 | 220.000)b (7.000 | 280.001)b (6.000 | 380.001)b (5.000 | 400.001)b (4.000 | 820.003)b (3.000 | 840.003)b (2.000 | 1380.005)b (1.000 | 1400.005)
Resorting to best-first search
b (9.000 | 220.000)b (9.000 | 110.000)b (8.000 | 220.000)b (7.000 | 280.001)b (6.000 | 380.001)b (5.000 | 400.001)b (4.000 | 1020.002)b (3.000 | 1040.002)b (3.000 | 940.004)b (2.000 | 1380.005)b (1.000 | 1400.005)