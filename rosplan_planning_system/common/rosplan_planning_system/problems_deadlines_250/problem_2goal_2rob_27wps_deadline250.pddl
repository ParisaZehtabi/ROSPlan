(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp6)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 1950.0075000000002 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1950.0075000000002 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1950.0075000000002 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1950.0075000000002 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1950.0075000000002 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 1950.0075000000002 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 1950.0075000000002 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 24)
    (= (distance wp1 wp0) 24)
    (= (distance wp0 wp2) 13)
    (= (distance wp2 wp0) 13)
    (= (distance wp0 wp3) 14)
    (= (distance wp3 wp0) 14)
    (= (distance wp0 wp4) 23)
    (= (distance wp4 wp0) 23)
    (= (distance wp0 wp5) 14)
    (= (distance wp5 wp0) 14)
    (= (distance wp0 wp6) 14)
    (= (distance wp6 wp0) 14)
    (= (distance wp0 printer0) 5)
    (= (distance printer0 wp0) 5)
    (= (distance wp0 printer1) 7)
    (= (distance printer1 wp0) 7)
    (= (distance wp1 wp2) 29)
    (= (distance wp2 wp1) 29)
    (= (distance wp1 wp3) 20)
    (= (distance wp3 wp1) 20)
    (= (distance wp1 wp4) 3)
    (= (distance wp4 wp1) 3)
    (= (distance wp1 wp5) 10)
    (= (distance wp5 wp1) 10)
    (= (distance wp1 wp6) 10)
    (= (distance wp6 wp1) 10)
    (= (distance wp1 printer0) 23)
    (= (distance printer0 wp1) 23)
    (= (distance wp1 printer1) 19)
    (= (distance printer1 wp1) 19)
    (= (distance wp2 wp3) 9)
    (= (distance wp3 wp2) 9)
    (= (distance wp2 wp4) 28)
    (= (distance wp4 wp2) 28)
    (= (distance wp2 wp5) 19)
    (= (distance wp5 wp2) 19)
    (= (distance wp2 wp6) 19)
    (= (distance wp6 wp2) 19)
    (= (distance wp2 printer0) 18)
    (= (distance printer0 wp2) 18)
    (= (distance wp2 printer1) 20)
    (= (distance printer1 wp2) 20)
    (= (distance wp3 wp4) 19)
    (= (distance wp4 wp3) 19)
    (= (distance wp3 wp5) 10)
    (= (distance wp5 wp3) 10)
    (= (distance wp3 wp6) 10)
    (= (distance wp6 wp3) 10)
    (= (distance wp3 printer0) 19)
    (= (distance printer0 wp3) 19)
    (= (distance wp3 printer1) 21)
    (= (distance printer1 wp3) 21)
    (= (distance wp4 wp5) 9)
    (= (distance wp5 wp4) 9)
    (= (distance wp4 wp6) 9)
    (= (distance wp6 wp4) 9)
    (= (distance wp4 printer0) 22)
    (= (distance printer0 wp4) 22)
    (= (distance wp4 printer1) 18)
    (= (distance printer1 wp4) 18)
    (= (distance wp5 wp6) 2)
    (= (distance wp6 wp5) 2)
    (= (distance wp5 printer0) 13)
    (= (distance printer0 wp5) 13)
    (= (distance wp5 printer1) 15)
    (= (distance printer1 wp5) 15)
    (= (distance wp6 printer0) 15)
    (= (distance printer0 wp6) 15)
    (= (distance wp6 printer1) 17)
    (= (distance printer1 wp6) 17)
    (= (distance printer0 printer1) 4)
    (= (distance printer1 printer0) 4)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp6)
))
)
