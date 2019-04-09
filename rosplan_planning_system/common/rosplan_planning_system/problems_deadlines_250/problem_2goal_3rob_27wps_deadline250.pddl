(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp6)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 1775.0075000000002 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1775.0075000000002 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1775.0075000000002 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1775.0075000000002 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1775.0075000000002 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 1775.0075000000002 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 1775.0075000000002 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 13)
    (= (distance wp1 wp0) 13)
    (= (distance wp0 wp2) 7)
    (= (distance wp2 wp0) 7)
    (= (distance wp0 wp3) 19)
    (= (distance wp3 wp0) 19)
    (= (distance wp0 wp4) 7)
    (= (distance wp4 wp0) 7)
    (= (distance wp0 wp5) 10)
    (= (distance wp5 wp0) 10)
    (= (distance wp0 wp6) 16)
    (= (distance wp6 wp0) 16)
    (= (distance wp0 printer0) 14)
    (= (distance printer0 wp0) 14)
    (= (distance wp0 printer1) 11)
    (= (distance printer1 wp0) 11)
    (= (distance wp1 wp2) 12)
    (= (distance wp2 wp1) 12)
    (= (distance wp1 wp3) 14)
    (= (distance wp3 wp1) 14)
    (= (distance wp1 wp4) 16)
    (= (distance wp4 wp1) 16)
    (= (distance wp1 wp5) 21)
    (= (distance wp5 wp1) 21)
    (= (distance wp1 wp6) 5)
    (= (distance wp6 wp1) 5)
    (= (distance wp1 printer0) 1)
    (= (distance printer0 wp1) 1)
    (= (distance wp1 printer1) 22)
    (= (distance printer1 wp1) 22)
    (= (distance wp2 wp3) 12)
    (= (distance wp3 wp2) 12)
    (= (distance wp2 wp4) 4)
    (= (distance wp4 wp2) 4)
    (= (distance wp2 wp5) 17)
    (= (distance wp5 wp2) 17)
    (= (distance wp2 wp6) 9)
    (= (distance wp6 wp2) 9)
    (= (distance wp2 printer0) 13)
    (= (distance printer0 wp2) 13)
    (= (distance wp2 printer1) 18)
    (= (distance printer1 wp2) 18)
    (= (distance wp3 wp4) 12)
    (= (distance wp4 wp3) 12)
    (= (distance wp3 wp5) 29)
    (= (distance wp5 wp3) 29)
    (= (distance wp3 wp6) 9)
    (= (distance wp6 wp3) 9)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 30)
    (= (distance printer1 wp3) 30)
    (= (distance wp4 wp5) 17)
    (= (distance wp5 wp4) 17)
    (= (distance wp4 wp6) 11)
    (= (distance wp6 wp4) 11)
    (= (distance wp4 printer0) 17)
    (= (distance printer0 wp4) 17)
    (= (distance wp4 printer1) 18)
    (= (distance printer1 wp4) 18)
    (= (distance wp5 wp6) 26)
    (= (distance wp6 wp5) 26)
    (= (distance wp5 printer0) 22)
    (= (distance printer0 wp5) 22)
    (= (distance wp5 printer1) 5)
    (= (distance printer1 wp5) 5)
    (= (distance wp6 printer0) 6)
    (= (distance printer0 wp6) 6)
    (= (distance wp6 printer1) 27)
    (= (distance printer1 wp6) 27)
    (= (distance printer0 printer1) 23)
    (= (distance printer1 printer0) 23)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp4)
))
)
