(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0)  (at 840.0045 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 840.0045 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 840.0045 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 840.0045 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 14)
    (= (distance wp1 wp0) 14)
    (= (distance wp0 wp2) 17)
    (= (distance wp2 wp0) 17)
    (= (distance wp0 wp3) 9)
    (= (distance wp3 wp0) 9)
    (= (distance wp0 printer0) 5)
    (= (distance printer0 wp0) 5)
    (= (distance wp0 printer1) 11)
    (= (distance printer1 wp0) 11)
    (= (distance wp1 wp2) 19)
    (= (distance wp2 wp1) 19)
    (= (distance wp1 wp3) 19)
    (= (distance wp3 wp1) 19)
    (= (distance wp1 printer0) 9)
    (= (distance printer0 wp1) 9)
    (= (distance wp1 printer1) 15)
    (= (distance printer1 wp1) 15)
    (= (distance wp2 wp3) 22)
    (= (distance wp3 wp2) 22)
    (= (distance wp2 printer0) 12)
    (= (distance printer0 wp2) 12)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp3 printer0) 10)
    (= (distance printer0 wp3) 10)
    (= (distance wp3 printer1) 12)
    (= (distance printer1 wp3) 12)
    (= (distance printer0 printer1) 6)
    (= (distance printer1 printer0) 6)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp0)
))
)
