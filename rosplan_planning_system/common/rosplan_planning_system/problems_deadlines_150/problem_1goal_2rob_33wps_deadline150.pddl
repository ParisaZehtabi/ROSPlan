(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 405.00300000000004 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 405.00300000000004 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 405.00300000000004 (not (delivery_destination wp2)))

    (= (distance wp0 wp1) 15)
    (= (distance wp1 wp0) 15)
    (= (distance wp0 wp2) 28)
    (= (distance wp2 wp0) 28)
    (= (distance wp0 printer0) 2)
    (= (distance printer0 wp0) 2)
    (= (distance wp0 printer1) 23)
    (= (distance printer1 wp0) 23)
    (= (distance wp0 printer2) 11)
    (= (distance printer2 wp0) 11)
    (= (distance wp1 wp2) 13)
    (= (distance wp2 wp1) 13)
    (= (distance wp1 printer0) 15)
    (= (distance printer0 wp1) 15)
    (= (distance wp1 printer1) 8)
    (= (distance printer1 wp1) 8)
    (= (distance wp1 printer2) 6)
    (= (distance printer2 wp1) 6)
    (= (distance wp2 printer0) 28)
    (= (distance printer0 wp2) 28)
    (= (distance wp2 printer1) 5)
    (= (distance printer1 wp2) 5)
    (= (distance wp2 printer2) 19)
    (= (distance printer2 wp2) 19)
    (= (distance printer0 printer1) 23)
    (= (distance printer1 printer0) 23)
    (= (distance printer0 printer2) 9)
    (= (distance printer2 printer0) 9)
    (= (distance printer1 printer2) 14)
    (= (distance printer2 printer1) 14)
)
(:goal (and
    (papers_delivered wp2)
))
)