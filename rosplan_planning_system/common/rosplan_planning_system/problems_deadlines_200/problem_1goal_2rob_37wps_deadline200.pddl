(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp6)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp5)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0)  (at 580.004 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 580.004 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 580.004 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 580.004 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 580.004 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 580.004 (not (delivery_destination wp5)))
    (delivery_destination wp6)  (at 580.004 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 4)
    (= (distance wp1 wp0) 4)
    (= (distance wp0 wp2) 6)
    (= (distance wp2 wp0) 6)
    (= (distance wp0 wp3) 10)
    (= (distance wp3 wp0) 10)
    (= (distance wp0 wp4) 13)
    (= (distance wp4 wp0) 13)
    (= (distance wp0 wp5) 9)
    (= (distance wp5 wp0) 9)
    (= (distance wp0 wp6) 14)
    (= (distance wp6 wp0) 14)
    (= (distance wp0 printer0) 8)
    (= (distance printer0 wp0) 8)
    (= (distance wp0 printer1) 19)
    (= (distance printer1 wp0) 19)
    (= (distance wp0 printer2) 13)
    (= (distance printer2 wp0) 13)
    (= (distance wp1 wp2) 10)
    (= (distance wp2 wp1) 10)
    (= (distance wp1 wp3) 14)
    (= (distance wp3 wp1) 14)
    (= (distance wp1 wp4) 17)
    (= (distance wp4 wp1) 17)
    (= (distance wp1 wp5) 7)
    (= (distance wp5 wp1) 7)
    (= (distance wp1 wp6) 12)
    (= (distance wp6 wp1) 12)
    (= (distance wp1 printer0) 6)
    (= (distance printer0 wp1) 6)
    (= (distance wp1 printer1) 15)
    (= (distance printer1 wp1) 15)
    (= (distance wp1 printer2) 17)
    (= (distance printer2 wp1) 17)
    (= (distance wp2 wp3) 16)
    (= (distance wp3 wp2) 16)
    (= (distance wp2 wp4) 7)
    (= (distance wp4 wp2) 7)
    (= (distance wp2 wp5) 15)
    (= (distance wp5 wp2) 15)
    (= (distance wp2 wp6) 20)
    (= (distance wp6 wp2) 20)
    (= (distance wp2 printer0) 14)
    (= (distance printer0 wp2) 14)
    (= (distance wp2 printer1) 25)
    (= (distance printer1 wp2) 25)
    (= (distance wp2 printer2) 7)
    (= (distance printer2 wp2) 7)
    (= (distance wp3 wp4) 11)
    (= (distance wp4 wp3) 11)
    (= (distance wp3 wp5) 19)
    (= (distance wp5 wp3) 19)
    (= (distance wp3 wp6) 8)
    (= (distance wp6 wp3) 8)
    (= (distance wp3 printer0) 10)
    (= (distance printer0 wp3) 10)
    (= (distance wp3 printer1) 29)
    (= (distance printer1 wp3) 29)
    (= (distance wp3 printer2) 15)
    (= (distance printer2 wp3) 15)
    (= (distance wp4 wp5) 22)
    (= (distance wp5 wp4) 22)
    (= (distance wp4 wp6) 15)
    (= (distance wp6 wp4) 15)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 32)
    (= (distance printer1 wp4) 32)
    (= (distance wp4 printer2) 4)
    (= (distance printer2 wp4) 4)
    (= (distance wp5 wp6) 11)
    (= (distance wp6 wp5) 11)
    (= (distance wp5 printer0) 9)
    (= (distance printer0 wp5) 9)
    (= (distance wp5 printer1) 10)
    (= (distance printer1 wp5) 10)
    (= (distance wp5 printer2) 22)
    (= (distance printer2 wp5) 22)
    (= (distance wp6 printer0) 6)
    (= (distance printer0 wp6) 6)
    (= (distance wp6 printer1) 21)
    (= (distance printer1 wp6) 21)
    (= (distance wp6 printer2) 19)
    (= (distance printer2 wp6) 19)
    (= (distance printer0 printer1) 19)
    (= (distance printer1 printer0) 19)
    (= (distance printer0 printer2) 13)
    (= (distance printer2 printer0) 13)
    (= (distance printer1 printer2) 32)
    (= (distance printer2 printer1) 32)
)
(:goal (and
    (papers_delivered wp6)
))
)
