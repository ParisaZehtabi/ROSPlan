(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp1)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)  (at 840.004 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 840.004 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 840.004 (not (delivery_destination wp2)))

    (= (distance wp0 wp1) 11)
    (= (distance wp1 wp0) 11)
    (= (distance wp0 wp2) 3)
    (= (distance wp2 wp0) 3)
    (= (distance wp0 printer0) 16)
    (= (distance printer0 wp0) 16)
    (= (distance wp0 printer1) 9)
    (= (distance printer1 wp0) 9)
    (= (distance wp0 printer2) 10)
    (= (distance printer2 wp0) 10)
    (= (distance wp1 wp2) 14)
    (= (distance wp2 wp1) 14)
    (= (distance wp1 printer0) 5)
    (= (distance printer0 wp1) 5)
    (= (distance wp1 printer1) 8)
    (= (distance printer1 wp1) 8)
    (= (distance wp1 printer2) 21)
    (= (distance printer2 wp1) 21)
    (= (distance wp2 printer0) 19)
    (= (distance printer0 wp2) 19)
    (= (distance wp2 printer1) 12)
    (= (distance printer1 wp2) 12)
    (= (distance wp2 printer2) 7)
    (= (distance printer2 wp2) 7)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
    (= (distance printer0 printer2) 26)
    (= (distance printer2 printer0) 26)
    (= (distance printer1 printer2) 15)
    (= (distance printer2 printer1) 15)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
