(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 817.503 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 817.503 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 817.503 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 817.503 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 51)
    (= (distance wp1 wp0) 51)
    (= (distance wp0 wp2) 109)
    (= (distance wp2 wp0) 109)
    (= (distance wp0 wp3) 62)
    (= (distance wp3 wp0) 62)
    (= (distance wp0 printer0) 51)
    (= (distance printer0 wp0) 51)
    (= (distance wp0 printer1) 95)
    (= (distance printer1 wp0) 95)
    (= (distance wp0 printer2) 68)
    (= (distance printer2 wp0) 68)
    (= (distance wp1 wp2) 100)
    (= (distance wp2 wp1) 100)
    (= (distance wp1 wp3) 71)
    (= (distance wp3 wp1) 71)
    (= (distance wp1 printer0) 20)
    (= (distance printer0 wp1) 20)
    (= (distance wp1 printer1) 44)
    (= (distance printer1 wp1) 44)
    (= (distance wp1 printer2) 59)
    (= (distance printer2 wp1) 59)
    (= (distance wp2 wp3) 171)
    (= (distance wp3 wp2) 171)
    (= (distance wp2 printer0) 120)
    (= (distance printer0 wp2) 120)
    (= (distance wp2 printer1) 100)
    (= (distance printer1 wp2) 100)
    (= (distance wp2 printer2) 41)
    (= (distance printer2 wp2) 41)
    (= (distance wp3 printer0) 51)
    (= (distance printer0 wp3) 51)
    (= (distance wp3 printer1) 71)
    (= (distance printer1 wp3) 71)
    (= (distance wp3 printer2) 130)
    (= (distance printer2 wp3) 130)
    (= (distance printer0 printer1) 44)
    (= (distance printer1 printer0) 44)
    (= (distance printer0 printer2) 79)
    (= (distance printer2 printer0) 79)
    (= (distance printer1 printer2) 59)
    (= (distance printer2 printer1) 59)
)
(:goal (and
    (papers_delivered wp0)
))
)
