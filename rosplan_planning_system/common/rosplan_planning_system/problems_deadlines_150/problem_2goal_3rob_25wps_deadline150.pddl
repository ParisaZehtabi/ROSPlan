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

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp1)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 169.5045 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 169.5045 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 169.5045 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 169.5045 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 169.5045 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 27)
    (= (distance wp1 wp0) 27)
    (= (distance wp0 wp2) 18)
    (= (distance wp2 wp0) 18)
    (= (distance wp0 wp3) 26)
    (= (distance wp3 wp0) 26)
    (= (distance wp0 wp4) 4)
    (= (distance wp4 wp0) 4)
    (= (distance wp0 printer0) 15)
    (= (distance printer0 wp0) 15)
    (= (distance wp0 printer1) 24)
    (= (distance printer1 wp0) 24)
    (= (distance wp1 wp2) 13)
    (= (distance wp2 wp1) 13)
    (= (distance wp1 wp3) 9)
    (= (distance wp3 wp1) 9)
    (= (distance wp1 wp4) 25)
    (= (distance wp4 wp1) 25)
    (= (distance wp1 printer0) 12)
    (= (distance printer0 wp1) 12)
    (= (distance wp1 printer1) 3)
    (= (distance printer1 wp1) 3)
    (= (distance wp2 wp3) 8)
    (= (distance wp3 wp2) 8)
    (= (distance wp2 wp4) 16)
    (= (distance wp4 wp2) 16)
    (= (distance wp2 printer0) 19)
    (= (distance printer0 wp2) 19)
    (= (distance wp2 printer1) 12)
    (= (distance printer1 wp2) 12)
    (= (distance wp3 wp4) 24)
    (= (distance wp4 wp3) 24)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 8)
    (= (distance printer1 wp3) 8)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 22)
    (= (distance printer1 wp4) 22)
    (= (distance printer0 printer1) 9)
    (= (distance printer1 printer0) 9)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp4)
))
)
