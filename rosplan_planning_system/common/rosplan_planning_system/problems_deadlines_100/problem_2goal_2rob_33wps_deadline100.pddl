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

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 620.003 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 620.003 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 620.003 (not (delivery_destination wp2)))

    (= (distance wp0 wp1) 16)
    (= (distance wp1 wp0) 16)
    (= (distance wp0 wp2) 17)
    (= (distance wp2 wp0) 17)
    (= (distance wp0 printer0) 13)
    (= (distance printer0 wp0) 13)
    (= (distance wp0 printer1) 5)
    (= (distance printer1 wp0) 5)
    (= (distance wp0 printer2) 10)
    (= (distance printer2 wp0) 10)
    (= (distance wp1 wp2) 23)
    (= (distance wp2 wp1) 23)
    (= (distance wp1 printer0) 3)
    (= (distance printer0 wp1) 3)
    (= (distance wp1 printer1) 13)
    (= (distance printer1 wp1) 13)
    (= (distance wp1 printer2) 16)
    (= (distance printer2 wp1) 16)
    (= (distance wp2 printer0) 22)
    (= (distance printer0 wp2) 22)
    (= (distance wp2 printer1) 12)
    (= (distance printer1 wp2) 12)
    (= (distance wp2 printer2) 7)
    (= (distance printer2 wp2) 7)
    (= (distance printer0 printer1) 10)
    (= (distance printer1 printer0) 10)
    (= (distance printer0 printer2) 15)
    (= (distance printer2 printer0) 15)
    (= (distance printer1 printer2) 5)
    (= (distance printer2 printer1) 5)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
