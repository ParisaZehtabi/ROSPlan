(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
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

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 510.00300000000004 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 510.00300000000004 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 510.00300000000004 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 510.00300000000004 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 510.00300000000004 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 6)
    (= (distance wp1 wp0) 6)
    (= (distance wp0 wp2) 17)
    (= (distance wp2 wp0) 17)
    (= (distance wp0 wp3) 17)
    (= (distance wp3 wp0) 17)
    (= (distance wp0 wp4) 3)
    (= (distance wp4 wp0) 3)
    (= (distance wp0 printer0) 29)
    (= (distance printer0 wp0) 29)
    (= (distance wp0 printer1) 7)
    (= (distance printer1 wp0) 7)
    (= (distance wp0 printer2) 4)
    (= (distance printer2 wp0) 4)
    (= (distance wp1 wp2) 11)
    (= (distance wp2 wp1) 11)
    (= (distance wp1 wp3) 17)
    (= (distance wp3 wp1) 17)
    (= (distance wp1 wp4) 3)
    (= (distance wp4 wp1) 3)
    (= (distance wp1 printer0) 29)
    (= (distance printer0 wp1) 29)
    (= (distance wp1 printer1) 1)
    (= (distance printer1 wp1) 1)
    (= (distance wp1 printer2) 2)
    (= (distance printer2 wp1) 2)
    (= (distance wp2 wp3) 16)
    (= (distance wp3 wp2) 16)
    (= (distance wp2 wp4) 14)
    (= (distance wp4 wp2) 14)
    (= (distance wp2 printer0) 22)
    (= (distance printer0 wp2) 22)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp2 printer2) 13)
    (= (distance printer2 wp2) 13)
    (= (distance wp3 wp4) 18)
    (= (distance wp4 wp3) 18)
    (= (distance wp3 printer0) 12)
    (= (distance printer0 wp3) 12)
    (= (distance wp3 printer1) 18)
    (= (distance printer1 wp3) 18)
    (= (distance wp3 printer2) 17)
    (= (distance printer2 wp3) 17)
    (= (distance wp4 printer0) 30)
    (= (distance printer0 wp4) 30)
    (= (distance wp4 printer1) 4)
    (= (distance printer1 wp4) 4)
    (= (distance wp4 printer2) 1)
    (= (distance printer2 wp4) 1)
    (= (distance printer0 printer1) 30)
    (= (distance printer1 printer0) 30)
    (= (distance printer0 printer2) 29)
    (= (distance printer2 printer0) 29)
    (= (distance printer1 printer2) 3)
    (= (distance printer2 printer1) 3)
)
(:goal (and
    (papers_delivered wp2)
))
)
