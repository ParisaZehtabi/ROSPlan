(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
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

    (dock_at wp0)

    (delivery_destination wp0)  (at 1600.0075000000002 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 1600.0075000000002 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 1600.0075000000002 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 1600.0075000000002 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 1600.0075000000002 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 1600.0075000000002 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 13)
    (= (distance wp1 wp0) 13)
    (= (distance wp0 wp2) 19)
    (= (distance wp2 wp0) 19)
    (= (distance wp0 wp3) 5)
    (= (distance wp3 wp0) 5)
    (= (distance wp0 wp4) 13)
    (= (distance wp4 wp0) 13)
    (= (distance wp0 wp5) 13)
    (= (distance wp5 wp0) 13)
    (= (distance wp0 printer0) 12)
    (= (distance printer0 wp0) 12)
    (= (distance wp0 printer1) 8)
    (= (distance printer1 wp0) 8)
    (= (distance wp1 wp2) 22)
    (= (distance wp2 wp1) 22)
    (= (distance wp1 wp3) 18)
    (= (distance wp3 wp1) 18)
    (= (distance wp1 wp4) 4)
    (= (distance wp4 wp1) 4)
    (= (distance wp1 wp5) 16)
    (= (distance wp5 wp1) 16)
    (= (distance wp1 printer0) 15)
    (= (distance printer0 wp1) 15)
    (= (distance wp1 printer1) 7)
    (= (distance printer1 wp1) 7)
    (= (distance wp2 wp3) 20)
    (= (distance wp3 wp2) 20)
    (= (distance wp2 wp4) 26)
    (= (distance wp4 wp2) 26)
    (= (distance wp2 wp5) 6)
    (= (distance wp5 wp2) 6)
    (= (distance wp2 printer0) 15)
    (= (distance printer0 wp2) 15)
    (= (distance wp2 printer1) 27)
    (= (distance printer1 wp2) 27)
    (= (distance wp3 wp4) 18)
    (= (distance wp4 wp3) 18)
    (= (distance wp3 wp5) 14)
    (= (distance wp5 wp3) 14)
    (= (distance wp3 printer0) 9)
    (= (distance printer0 wp3) 9)
    (= (distance wp3 printer1) 11)
    (= (distance printer1 wp3) 11)
    (= (distance wp4 wp5) 20)
    (= (distance wp5 wp4) 20)
    (= (distance wp4 printer0) 19)
    (= (distance printer0 wp4) 19)
    (= (distance wp4 printer1) 7)
    (= (distance printer1 wp4) 7)
    (= (distance wp5 printer0) 9)
    (= (distance printer0 wp5) 9)
    (= (distance wp5 printer1) 21)
    (= (distance printer1 wp5) 21)
    (= (distance printer0 printer1) 20)
    (= (distance printer1 printer0) 20)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp1)
))
)
