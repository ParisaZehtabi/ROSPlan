(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0)  (at 3180.0119999999997 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 3180.0119999999997 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 3180.0119999999997 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 3180.0119999999997 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 3180.0119999999997 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 3180.0119999999997 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 14)
    (= (distance wp1 wp0) 14)
    (= (distance wp0 wp2) 10)
    (= (distance wp2 wp0) 10)
    (= (distance wp0 wp3) 14)
    (= (distance wp3 wp0) 14)
    (= (distance wp0 wp4) 21)
    (= (distance wp4 wp0) 21)
    (= (distance wp0 wp5) 35)
    (= (distance wp5 wp0) 35)
    (= (distance wp0 printer0) 12)
    (= (distance printer0 wp0) 12)
    (= (distance wp0 printer1) 6)
    (= (distance printer1 wp0) 6)
    (= (distance wp0 printer2) 34)
    (= (distance printer2 wp0) 34)
    (= (distance wp1 wp2) 20)
    (= (distance wp2 wp1) 20)
    (= (distance wp1 wp3) 24)
    (= (distance wp3 wp1) 24)
    (= (distance wp1 wp4) 17)
    (= (distance wp4 wp1) 17)
    (= (distance wp1 wp5) 21)
    (= (distance wp5 wp1) 21)
    (= (distance wp1 printer0) 16)
    (= (distance printer0 wp1) 16)
    (= (distance wp1 printer1) 16)
    (= (distance printer1 wp1) 16)
    (= (distance wp1 printer2) 20)
    (= (distance printer2 wp1) 20)
    (= (distance wp2 wp3) 4)
    (= (distance wp3 wp2) 4)
    (= (distance wp2 wp4) 11)
    (= (distance wp4 wp2) 11)
    (= (distance wp2 wp5) 25)
    (= (distance wp5 wp2) 25)
    (= (distance wp2 printer0) 4)
    (= (distance printer0 wp2) 4)
    (= (distance wp2 printer1) 4)
    (= (distance printer1 wp2) 4)
    (= (distance wp2 printer2) 24)
    (= (distance printer2 wp2) 24)
    (= (distance wp3 wp4) 7)
    (= (distance wp4 wp3) 7)
    (= (distance wp3 wp5) 21)
    (= (distance wp5 wp3) 21)
    (= (distance wp3 printer0) 8)
    (= (distance printer0 wp3) 8)
    (= (distance wp3 printer1) 8)
    (= (distance printer1 wp3) 8)
    (= (distance wp3 printer2) 20)
    (= (distance printer2 wp3) 20)
    (= (distance wp4 wp5) 14)
    (= (distance wp5 wp4) 14)
    (= (distance wp4 printer0) 9)
    (= (distance printer0 wp4) 9)
    (= (distance wp4 printer1) 15)
    (= (distance printer1 wp4) 15)
    (= (distance wp4 printer2) 13)
    (= (distance printer2 wp4) 13)
    (= (distance wp5 printer0) 23)
    (= (distance printer0 wp5) 23)
    (= (distance wp5 printer1) 29)
    (= (distance printer1 wp5) 29)
    (= (distance wp5 printer2) 1)
    (= (distance printer2 wp5) 1)
    (= (distance printer0 printer1) 6)
    (= (distance printer1 printer0) 6)
    (= (distance printer0 printer2) 22)
    (= (distance printer2 printer0) 22)
    (= (distance printer1 printer2) 28)
    (= (distance printer2 printer1) 28)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
