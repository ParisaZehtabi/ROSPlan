(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp4)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 892.503 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 892.503 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 892.503 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 892.503 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 892.503 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 103)
    (= (distance wp1 wp0) 103)
    (= (distance wp0 wp2) 63)
    (= (distance wp2 wp0) 63)
    (= (distance wp0 wp3) 84)
    (= (distance wp3 wp0) 84)
    (= (distance wp0 wp4) 18)
    (= (distance wp4 wp0) 18)
    (= (distance wp0 printer0) 76)
    (= (distance printer0 wp0) 76)
    (= (distance wp0 printer1) 28)
    (= (distance printer1 wp0) 28)
    (= (distance wp1 wp2) 40)
    (= (distance wp2 wp1) 40)
    (= (distance wp1 wp3) 77)
    (= (distance wp3 wp1) 77)
    (= (distance wp1 wp4) 119)
    (= (distance wp4 wp1) 119)
    (= (distance wp1 printer0) 79)
    (= (distance printer0 wp1) 79)
    (= (distance wp1 printer1) 103)
    (= (distance printer1 wp1) 103)
    (= (distance wp2 wp3) 103)
    (= (distance wp3 wp2) 103)
    (= (distance wp2 wp4) 79)
    (= (distance wp4 wp2) 79)
    (= (distance wp2 printer0) 41)
    (= (distance printer0 wp2) 41)
    (= (distance wp2 printer1) 63)
    (= (distance printer1 wp2) 63)
    (= (distance wp3 wp4) 66)
    (= (distance wp4 wp3) 66)
    (= (distance wp3 printer0) 144)
    (= (distance printer0 wp3) 144)
    (= (distance wp3 printer1) 56)
    (= (distance printer1 wp3) 56)
    (= (distance wp4 printer0) 92)
    (= (distance printer0 wp4) 92)
    (= (distance wp4 printer1) 16)
    (= (distance printer1 wp4) 16)
    (= (distance printer0 printer1) 88)
    (= (distance printer1 printer0) 88)
)
(:goal (and
    (papers_delivered wp3)
))
)