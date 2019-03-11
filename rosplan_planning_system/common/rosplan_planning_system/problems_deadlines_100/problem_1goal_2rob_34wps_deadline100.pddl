(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
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

    (delivery_destination wp0) (at 75.003 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 75.003 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 75.003 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 75.003 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 16)
    (= (distance wp1 wp0) 16)
    (= (distance wp0 wp2) 6)
    (= (distance wp2 wp0) 6)
    (= (distance wp0 wp3) 6)
    (= (distance wp3 wp0) 6)
    (= (distance wp0 printer0) 19)
    (= (distance printer0 wp0) 19)
    (= (distance wp0 printer1) 23)
    (= (distance printer1 wp0) 23)
    (= (distance wp0 printer2) 14)
    (= (distance printer2 wp0) 14)
    (= (distance wp1 wp2) 22)
    (= (distance wp2 wp1) 22)
    (= (distance wp1 wp3) 22)
    (= (distance wp3 wp1) 22)
    (= (distance wp1 printer0) 5)
    (= (distance printer0 wp1) 5)
    (= (distance wp1 printer1) 7)
    (= (distance printer1 wp1) 7)
    (= (distance wp1 printer2) 10)
    (= (distance printer2 wp1) 10)
    (= (distance wp2 wp3) 2)
    (= (distance wp3 wp2) 2)
    (= (distance wp2 printer0) 25)
    (= (distance printer0 wp2) 25)
    (= (distance wp2 printer1) 29)
    (= (distance printer1 wp2) 29)
    (= (distance wp2 printer2) 20)
    (= (distance printer2 wp2) 20)
    (= (distance wp3 printer0) 25)
    (= (distance printer0 wp3) 25)
    (= (distance wp3 printer1) 29)
    (= (distance printer1 wp3) 29)
    (= (distance wp3 printer2) 20)
    (= (distance printer2 wp3) 20)
    (= (distance printer0 printer1) 8)
    (= (distance printer1 printer0) 8)
    (= (distance printer0 printer2) 15)
    (= (distance printer2 printer0) 15)
    (= (distance printer1 printer2) 9)
    (= (distance printer2 printer1) 9)
)
(:goal (and
    (papers_delivered wp2)
))
)
