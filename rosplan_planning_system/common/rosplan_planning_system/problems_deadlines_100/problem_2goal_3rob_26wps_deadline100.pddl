(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp5)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp1)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)  (at 400.002 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 400.002 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 400.002 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 400.002 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 400.002 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 400.002 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 9)
    (= (distance wp1 wp0) 9)
    (= (distance wp0 wp2) 14)
    (= (distance wp2 wp0) 14)
    (= (distance wp0 wp3) 3)
    (= (distance wp3 wp0) 3)
    (= (distance wp0 wp4) 12)
    (= (distance wp4 wp0) 12)
    (= (distance wp0 wp5) 22)
    (= (distance wp5 wp0) 22)
    (= (distance wp0 printer0) 9)
    (= (distance printer0 wp0) 9)
    (= (distance wp0 printer1) 24)
    (= (distance printer1 wp0) 24)
    (= (distance wp1 wp2) 15)
    (= (distance wp2 wp1) 15)
    (= (distance wp1 wp3) 8)
    (= (distance wp3 wp1) 8)
    (= (distance wp1 wp4) 13)
    (= (distance wp4 wp1) 13)
    (= (distance wp1 wp5) 23)
    (= (distance wp5 wp1) 23)
    (= (distance wp1 printer0) 12)
    (= (distance printer0 wp1) 12)
    (= (distance wp1 printer1) 25)
    (= (distance printer1 wp1) 25)
    (= (distance wp2 wp3) 11)
    (= (distance wp3 wp2) 11)
    (= (distance wp2 wp4) 6)
    (= (distance wp4 wp2) 6)
    (= (distance wp2 wp5) 8)
    (= (distance wp5 wp2) 8)
    (= (distance wp2 printer0) 9)
    (= (distance printer0 wp2) 9)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp3 wp4) 9)
    (= (distance wp4 wp3) 9)
    (= (distance wp3 wp5) 19)
    (= (distance wp5 wp3) 19)
    (= (distance wp3 printer0) 6)
    (= (distance printer0 wp3) 6)
    (= (distance wp3 printer1) 21)
    (= (distance printer1 wp3) 21)
    (= (distance wp4 wp5) 10)
    (= (distance wp5 wp4) 10)
    (= (distance wp4 printer0) 3)
    (= (distance printer0 wp4) 3)
    (= (distance wp4 printer1) 12)
    (= (distance printer1 wp4) 12)
    (= (distance wp5 printer0) 13)
    (= (distance printer0 wp5) 13)
    (= (distance wp5 printer1) 2)
    (= (distance printer1 wp5) 2)
    (= (distance printer0 printer1) 15)
    (= (distance printer1 printer0) 15)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp5)
))
)
