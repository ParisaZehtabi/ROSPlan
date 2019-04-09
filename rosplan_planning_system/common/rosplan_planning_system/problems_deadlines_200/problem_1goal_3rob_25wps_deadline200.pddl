(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp0)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)  (at 560.004 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 560.004 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 560.004 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 560.004 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 560.004 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 5)
    (= (distance wp1 wp0) 5)
    (= (distance wp0 wp2) 4)
    (= (distance wp2 wp0) 4)
    (= (distance wp0 wp3) 20)
    (= (distance wp3 wp0) 20)
    (= (distance wp0 wp4) 12)
    (= (distance wp4 wp0) 12)
    (= (distance wp0 printer0) 12)
    (= (distance printer0 wp0) 12)
    (= (distance wp0 printer1) 5)
    (= (distance printer1 wp0) 5)
    (= (distance wp1 wp2) 9)
    (= (distance wp2 wp1) 9)
    (= (distance wp1 wp3) 17)
    (= (distance wp3 wp1) 17)
    (= (distance wp1 wp4) 9)
    (= (distance wp4 wp1) 9)
    (= (distance wp1 printer0) 7)
    (= (distance printer0 wp1) 7)
    (= (distance wp1 printer1) 10)
    (= (distance printer1 wp1) 10)
    (= (distance wp2 wp3) 18)
    (= (distance wp3 wp2) 18)
    (= (distance wp2 wp4) 16)
    (= (distance wp4 wp2) 16)
    (= (distance wp2 printer0) 16)
    (= (distance printer0 wp2) 16)
    (= (distance wp2 printer1) 3)
    (= (distance printer1 wp2) 3)
    (= (distance wp3 wp4) 14)
    (= (distance wp4 wp3) 14)
    (= (distance wp3 printer0) 14)
    (= (distance printer0 wp3) 14)
    (= (distance wp3 printer1) 15)
    (= (distance printer1 wp3) 15)
    (= (distance wp4 printer0) 6)
    (= (distance printer0 wp4) 6)
    (= (distance wp4 printer1) 17)
    (= (distance printer1 wp4) 17)
    (= (distance printer0 printer1) 17)
    (= (distance printer1 printer0) 17)
)
(:goal (and
    (papers_delivered wp1)
))
)
