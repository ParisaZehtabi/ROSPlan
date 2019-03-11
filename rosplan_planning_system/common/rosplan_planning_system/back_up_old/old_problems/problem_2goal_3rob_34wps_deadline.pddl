(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
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

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 2047.5045 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 2047.5045 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 2047.5045 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 2047.5045 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 51)
    (= (distance wp1 wp0) 51)
    (= (distance wp0 wp2) 102)
    (= (distance wp2 wp0) 102)
    (= (distance wp0 wp3) 135)
    (= (distance wp3 wp0) 135)
    (= (distance wp0 printer0) 9)
    (= (distance printer0 wp0) 9)
    (= (distance wp0 printer1) 31)
    (= (distance printer1 wp0) 31)
    (= (distance wp0 printer2) 55)
    (= (distance printer2 wp0) 55)
    (= (distance wp1 wp2) 89)
    (= (distance wp2 wp1) 89)
    (= (distance wp1 wp3) 84)
    (= (distance wp3 wp1) 84)
    (= (distance wp1 printer0) 60)
    (= (distance printer0 wp1) 60)
    (= (distance wp1 printer1) 44)
    (= (distance printer1 wp1) 44)
    (= (distance wp1 printer2) 42)
    (= (distance printer2 wp1) 42)
    (= (distance wp2 wp3) 73)
    (= (distance wp3 wp2) 73)
    (= (distance wp2 printer0) 103)
    (= (distance printer0 wp2) 103)
    (= (distance wp2 printer1) 133)
    (= (distance printer1 wp2) 133)
    (= (distance wp2 printer2) 47)
    (= (distance printer2 wp2) 47)
    (= (distance wp3 printer0) 144)
    (= (distance printer0 wp3) 144)
    (= (distance wp3 printer1) 110)
    (= (distance printer1 wp3) 110)
    (= (distance wp3 printer2) 110)
    (= (distance printer2 wp3) 110)
    (= (distance printer0 printer1) 34)
    (= (distance printer1 printer0) 34)
    (= (distance printer0 printer2) 56)
    (= (distance printer2 printer0) 56)
    (= (distance printer1 printer2) 86)
    (= (distance printer2 printer1) 86)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
