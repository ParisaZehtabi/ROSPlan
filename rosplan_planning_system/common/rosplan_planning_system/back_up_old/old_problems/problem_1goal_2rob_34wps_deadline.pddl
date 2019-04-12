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

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 862.5045 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 862.5045 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 862.5045 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 862.5045 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 82)
    (= (distance wp1 wp0) 82)
    (= (distance wp0 wp2) 84)
    (= (distance wp2 wp0) 84)
    (= (distance wp0 wp3) 129)
    (= (distance wp3 wp0) 129)
    (= (distance wp0 printer0) 56)
    (= (distance printer0 wp0) 56)
    (= (distance wp0 printer1) 103)
    (= (distance printer1 wp0) 103)
    (= (distance wp0 printer2) 77)
    (= (distance printer2 wp0) 77)
    (= (distance wp1 wp2) 2)
    (= (distance wp2 wp1) 2)
    (= (distance wp1 wp3) 61)
    (= (distance wp3 wp1) 61)
    (= (distance wp1 printer0) 50)
    (= (distance printer0 wp1) 50)
    (= (distance wp1 printer1) 39)
    (= (distance printer1 wp1) 39)
    (= (distance wp1 printer2) 15)
    (= (distance printer2 wp1) 15)
    (= (distance wp2 wp3) 59)
    (= (distance wp3 wp2) 59)
    (= (distance wp2 printer0) 52)
    (= (distance printer0 wp2) 52)
    (= (distance wp2 printer1) 41)
    (= (distance printer1 wp2) 41)
    (= (distance wp2 printer2) 17)
    (= (distance printer2 wp2) 17)
    (= (distance wp3 printer0) 97)
    (= (distance printer0 wp3) 97)
    (= (distance wp3 printer1) 100)
    (= (distance printer1 wp3) 100)
    (= (distance wp3 printer2) 76)
    (= (distance printer2 wp3) 76)
    (= (distance printer0 printer1) 71)
    (= (distance printer1 printer0) 71)
    (= (distance printer0 printer2) 45)
    (= (distance printer2 printer0) 45)
    (= (distance printer1 printer2) 26)
    (= (distance printer2 printer1) 26)
)
(:goal (and
    (papers_delivered wp2)
))
)