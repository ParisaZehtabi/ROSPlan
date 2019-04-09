(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 1100.005 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1100.005 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1100.005 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1100.005 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1100.005 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 17)
    (= (distance wp1 wp0) 17)
    (= (distance wp0 wp2) 5)
    (= (distance wp2 wp0) 5)
    (= (distance wp0 wp3) 17)
    (= (distance wp3 wp0) 17)
    (= (distance wp0 wp4) 28)
    (= (distance wp4 wp0) 28)
    (= (distance wp0 printer0) 15)
    (= (distance printer0 wp0) 15)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp0 printer2) 9)
    (= (distance printer2 wp0) 9)
    (= (distance wp1 wp2) 12)
    (= (distance wp2 wp1) 12)
    (= (distance wp1 wp3) 6)
    (= (distance wp3 wp1) 6)
    (= (distance wp1 wp4) 21)
    (= (distance wp4 wp1) 21)
    (= (distance wp1 printer0) 8)
    (= (distance printer0 wp1) 8)
    (= (distance wp1 printer1) 12)
    (= (distance printer1 wp1) 12)
    (= (distance wp1 printer2) 8)
    (= (distance printer2 wp1) 8)
    (= (distance wp2 wp3) 12)
    (= (distance wp3 wp2) 12)
    (= (distance wp2 wp4) 27)
    (= (distance wp4 wp2) 27)
    (= (distance wp2 printer0) 14)
    (= (distance printer0 wp2) 14)
    (= (distance wp2 printer1) 16)
    (= (distance printer1 wp2) 16)
    (= (distance wp2 printer2) 6)
    (= (distance printer2 wp2) 6)
    (= (distance wp3 wp4) 19)
    (= (distance wp4 wp3) 19)
    (= (distance wp3 printer0) 2)
    (= (distance printer0 wp3) 2)
    (= (distance wp3 printer1) 12)
    (= (distance printer1 wp3) 12)
    (= (distance wp3 printer2) 8)
    (= (distance printer2 wp3) 8)
    (= (distance wp4 printer0) 17)
    (= (distance printer0 wp4) 17)
    (= (distance wp4 printer1) 11)
    (= (distance printer1 wp4) 11)
    (= (distance wp4 printer2) 21)
    (= (distance printer2 wp4) 21)
    (= (distance printer0 printer1) 10)
    (= (distance printer1 printer0) 10)
    (= (distance printer0 printer2) 8)
    (= (distance printer2 printer0) 8)
    (= (distance printer1 printer2) 10)
    (= (distance printer2 printer1) 10)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp3)
))
)
