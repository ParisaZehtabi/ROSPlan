(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp5)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)  (at 1590.0045 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 1590.0045 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 1590.0045 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 1590.0045 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 1590.0045 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 1590.0045 (not (delivery_destination wp5)))
    (delivery_destination wp6)  (at 1590.0045 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 22)
    (= (distance wp1 wp0) 22)
    (= (distance wp0 wp2) 6)
    (= (distance wp2 wp0) 6)
    (= (distance wp0 wp3) 14)
    (= (distance wp3 wp0) 14)
    (= (distance wp0 wp4) 13)
    (= (distance wp4 wp0) 13)
    (= (distance wp0 wp5) 21)
    (= (distance wp5 wp0) 21)
    (= (distance wp0 wp6) 14)
    (= (distance wp6 wp0) 14)
    (= (distance wp0 printer0) 19)
    (= (distance printer0 wp0) 19)
    (= (distance wp0 printer1) 8)
    (= (distance printer1 wp0) 8)
    (= (distance wp1 wp2) 28)
    (= (distance wp2 wp1) 28)
    (= (distance wp1 wp3) 20)
    (= (distance wp3 wp1) 20)
    (= (distance wp1 wp4) 9)
    (= (distance wp4 wp1) 9)
    (= (distance wp1 wp5) 13)
    (= (distance wp5 wp1) 13)
    (= (distance wp1 wp6) 8)
    (= (distance wp6 wp1) 8)
    (= (distance wp1 printer0) 3)
    (= (distance printer0 wp1) 3)
    (= (distance wp1 printer1) 14)
    (= (distance printer1 wp1) 14)
    (= (distance wp2 wp3) 8)
    (= (distance wp3 wp2) 8)
    (= (distance wp2 wp4) 19)
    (= (distance wp4 wp2) 19)
    (= (distance wp2 wp5) 15)
    (= (distance wp5 wp2) 15)
    (= (distance wp2 wp6) 20)
    (= (distance wp6 wp2) 20)
    (= (distance wp2 printer0) 25)
    (= (distance printer0 wp2) 25)
    (= (distance wp2 printer1) 14)
    (= (distance printer1 wp2) 14)
    (= (distance wp3 wp4) 13)
    (= (distance wp4 wp3) 13)
    (= (distance wp3 wp5) 7)
    (= (distance wp5 wp3) 7)
    (= (distance wp3 wp6) 12)
    (= (distance wp6 wp3) 12)
    (= (distance wp3 printer0) 17)
    (= (distance printer0 wp3) 17)
    (= (distance wp3 printer1) 20)
    (= (distance printer1 wp3) 20)
    (= (distance wp4 wp5) 20)
    (= (distance wp5 wp4) 20)
    (= (distance wp4 wp6) 11)
    (= (distance wp6 wp4) 11)
    (= (distance wp4 printer0) 8)
    (= (distance printer0 wp4) 8)
    (= (distance wp4 printer1) 7)
    (= (distance printer1 wp4) 7)
    (= (distance wp5 wp6) 9)
    (= (distance wp6 wp5) 9)
    (= (distance wp5 printer0) 12)
    (= (distance printer0 wp5) 12)
    (= (distance wp5 printer1) 27)
    (= (distance printer1 wp5) 27)
    (= (distance wp6 printer0) 5)
    (= (distance printer0 wp6) 5)
    (= (distance wp6 printer1) 18)
    (= (distance printer1 wp6) 18)
    (= (distance printer0 printer1) 15)
    (= (distance printer1 printer0) 15)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp4)
    (papers_delivered wp5)
))
)
