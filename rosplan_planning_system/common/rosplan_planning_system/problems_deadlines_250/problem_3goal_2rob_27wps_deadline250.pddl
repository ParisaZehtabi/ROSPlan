(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
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

    (dock_at wp0)

    (delivery_destination wp0)  (at 2700.0099999999998 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 2700.0099999999998 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 2700.0099999999998 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 2700.0099999999998 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 2700.0099999999998 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 2700.0099999999998 (not (delivery_destination wp5)))
    (delivery_destination wp6)  (at 2700.0099999999998 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 12)
    (= (distance wp1 wp0) 12)
    (= (distance wp0 wp2) 5)
    (= (distance wp2 wp0) 5)
    (= (distance wp0 wp3) 11)
    (= (distance wp3 wp0) 11)
    (= (distance wp0 wp4) 17)
    (= (distance wp4 wp0) 17)
    (= (distance wp0 wp5) 13)
    (= (distance wp5 wp0) 13)
    (= (distance wp0 wp6) 5)
    (= (distance wp6 wp0) 5)
    (= (distance wp0 printer0) 8)
    (= (distance printer0 wp0) 8)
    (= (distance wp0 printer1) 5)
    (= (distance printer1 wp0) 5)
    (= (distance wp1 wp2) 7)
    (= (distance wp2 wp1) 7)
    (= (distance wp1 wp3) 17)
    (= (distance wp3 wp1) 17)
    (= (distance wp1 wp4) 15)
    (= (distance wp4 wp1) 15)
    (= (distance wp1 wp5) 11)
    (= (distance wp5 wp1) 11)
    (= (distance wp1 wp6) 13)
    (= (distance wp6 wp1) 13)
    (= (distance wp1 printer0) 6)
    (= (distance printer0 wp1) 6)
    (= (distance wp1 printer1) 7)
    (= (distance printer1 wp1) 7)
    (= (distance wp2 wp3) 16)
    (= (distance wp3 wp2) 16)
    (= (distance wp2 wp4) 22)
    (= (distance wp4 wp2) 22)
    (= (distance wp2 wp5) 18)
    (= (distance wp5 wp2) 18)
    (= (distance wp2 wp6) 6)
    (= (distance wp6 wp2) 6)
    (= (distance wp2 printer0) 3)
    (= (distance printer0 wp2) 3)
    (= (distance wp2 printer1) 0)
    (= (distance printer1 wp2) 0)
    (= (distance wp3 wp4) 8)
    (= (distance wp4 wp3) 8)
    (= (distance wp3 wp5) 14)
    (= (distance wp5 wp3) 14)
    (= (distance wp3 wp6) 16)
    (= (distance wp6 wp3) 16)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 16)
    (= (distance printer1 wp3) 16)
    (= (distance wp4 wp5) 6)
    (= (distance wp5 wp4) 6)
    (= (distance wp4 wp6) 22)
    (= (distance wp6 wp4) 22)
    (= (distance wp4 printer0) 21)
    (= (distance printer0 wp4) 21)
    (= (distance wp4 printer1) 22)
    (= (distance printer1 wp4) 22)
    (= (distance wp5 wp6) 18)
    (= (distance wp6 wp5) 18)
    (= (distance wp5 printer0) 17)
    (= (distance printer0 wp5) 17)
    (= (distance wp5 printer1) 18)
    (= (distance printer1 wp5) 18)
    (= (distance wp6 printer0) 9)
    (= (distance printer0 wp6) 9)
    (= (distance wp6 printer1) 6)
    (= (distance printer1 wp6) 6)
    (= (distance printer0 printer1) 3)
    (= (distance printer1 printer0) 3)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp3)
    (papers_delivered wp6)
))
)
