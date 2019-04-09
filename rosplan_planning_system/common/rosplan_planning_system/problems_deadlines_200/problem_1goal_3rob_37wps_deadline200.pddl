(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp5)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp4)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)  (at 680.004 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 680.004 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 680.004 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 680.004 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 680.004 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 680.004 (not (delivery_destination wp5)))
    (delivery_destination wp6)  (at 680.004 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 12)
    (= (distance wp1 wp0) 12)
    (= (distance wp0 wp2) 25)
    (= (distance wp2 wp0) 25)
    (= (distance wp0 wp3) 8)
    (= (distance wp3 wp0) 8)
    (= (distance wp0 wp4) 16)
    (= (distance wp4 wp0) 16)
    (= (distance wp0 wp5) 4)
    (= (distance wp5 wp0) 4)
    (= (distance wp0 wp6) 18)
    (= (distance wp6 wp0) 18)
    (= (distance wp0 printer0) 16)
    (= (distance printer0 wp0) 16)
    (= (distance wp0 printer1) 6)
    (= (distance printer1 wp0) 6)
    (= (distance wp0 printer2) 16)
    (= (distance printer2 wp0) 16)
    (= (distance wp1 wp2) 19)
    (= (distance wp2 wp1) 19)
    (= (distance wp1 wp3) 20)
    (= (distance wp3 wp1) 20)
    (= (distance wp1 wp4) 28)
    (= (distance wp4 wp1) 28)
    (= (distance wp1 wp5) 16)
    (= (distance wp5 wp1) 16)
    (= (distance wp1 wp6) 30)
    (= (distance wp6 wp1) 30)
    (= (distance wp1 printer0) 24)
    (= (distance printer0 wp1) 24)
    (= (distance wp1 printer1) 8)
    (= (distance printer1 wp1) 8)
    (= (distance wp1 printer2) 28)
    (= (distance printer2 wp1) 28)
    (= (distance wp2 wp3) 17)
    (= (distance wp3 wp2) 17)
    (= (distance wp2 wp4) 19)
    (= (distance wp4 wp2) 19)
    (= (distance wp2 wp5) 21)
    (= (distance wp5 wp2) 21)
    (= (distance wp2 wp6) 17)
    (= (distance wp6 wp2) 17)
    (= (distance wp2 printer0) 11)
    (= (distance printer0 wp2) 11)
    (= (distance wp2 printer1) 27)
    (= (distance printer1 wp2) 27)
    (= (distance wp2 printer2) 23)
    (= (distance printer2 wp2) 23)
    (= (distance wp3 wp4) 8)
    (= (distance wp4 wp3) 8)
    (= (distance wp3 wp5) 4)
    (= (distance wp5 wp3) 4)
    (= (distance wp3 wp6) 10)
    (= (distance wp6 wp3) 10)
    (= (distance wp3 printer0) 8)
    (= (distance printer0 wp3) 8)
    (= (distance wp3 printer1) 14)
    (= (distance printer1 wp3) 14)
    (= (distance wp3 printer2) 8)
    (= (distance printer2 wp3) 8)
    (= (distance wp4 wp5) 12)
    (= (distance wp5 wp4) 12)
    (= (distance wp4 wp6) 6)
    (= (distance wp6 wp4) 6)
    (= (distance wp4 printer0) 10)
    (= (distance printer0 wp4) 10)
    (= (distance wp4 printer1) 22)
    (= (distance printer1 wp4) 22)
    (= (distance wp4 printer2) 4)
    (= (distance printer2 wp4) 4)
    (= (distance wp5 wp6) 14)
    (= (distance wp6 wp5) 14)
    (= (distance wp5 printer0) 12)
    (= (distance printer0 wp5) 12)
    (= (distance wp5 printer1) 10)
    (= (distance printer1 wp5) 10)
    (= (distance wp5 printer2) 12)
    (= (distance printer2 wp5) 12)
    (= (distance wp6 printer0) 6)
    (= (distance printer0 wp6) 6)
    (= (distance wp6 printer1) 24)
    (= (distance printer1 wp6) 24)
    (= (distance wp6 printer2) 10)
    (= (distance printer2 wp6) 10)
    (= (distance printer0 printer1) 18)
    (= (distance printer1 printer0) 18)
    (= (distance printer0 printer2) 14)
    (= (distance printer2 printer0) 14)
    (= (distance printer1 printer2) 22)
    (= (distance printer2 printer1) 22)
)
(:goal (and
    (papers_delivered wp5)
))
)
