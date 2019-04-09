(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0)  (at 1410.006 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 1410.006 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 1410.006 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 1410.006 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 1410.006 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 1410.006 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 11)
    (= (distance wp1 wp0) 11)
    (= (distance wp0 wp2) 14)
    (= (distance wp2 wp0) 14)
    (= (distance wp0 wp3) 14)
    (= (distance wp3 wp0) 14)
    (= (distance wp0 wp4) 20)
    (= (distance wp4 wp0) 20)
    (= (distance wp0 wp5) 16)
    (= (distance wp5 wp0) 16)
    (= (distance wp0 printer0) 27)
    (= (distance printer0 wp0) 27)
    (= (distance wp0 printer1) 14)
    (= (distance printer1 wp0) 14)
    (= (distance wp0 printer2) 22)
    (= (distance printer2 wp0) 22)
    (= (distance wp1 wp2) 11)
    (= (distance wp2 wp1) 11)
    (= (distance wp1 wp3) 11)
    (= (distance wp3 wp1) 11)
    (= (distance wp1 wp4) 23)
    (= (distance wp4 wp1) 23)
    (= (distance wp1 wp5) 27)
    (= (distance wp5 wp1) 27)
    (= (distance wp1 printer0) 20)
    (= (distance printer0 wp1) 20)
    (= (distance wp1 printer1) 23)
    (= (distance printer1 wp1) 23)
    (= (distance wp1 printer2) 27)
    (= (distance printer2 wp1) 27)
    (= (distance wp2 wp3) 0)
    (= (distance wp3 wp2) 0)
    (= (distance wp2 wp4) 12)
    (= (distance wp4 wp2) 12)
    (= (distance wp2 wp5) 16)
    (= (distance wp5 wp2) 16)
    (= (distance wp2 printer0) 13)
    (= (distance printer0 wp2) 13)
    (= (distance wp2 printer1) 12)
    (= (distance printer1 wp2) 12)
    (= (distance wp2 printer2) 16)
    (= (distance printer2 wp2) 16)
    (= (distance wp3 wp4) 12)
    (= (distance wp4 wp3) 12)
    (= (distance wp3 wp5) 16)
    (= (distance wp5 wp3) 16)
    (= (distance wp3 printer0) 13)
    (= (distance printer0 wp3) 13)
    (= (distance wp3 printer1) 12)
    (= (distance printer1 wp3) 12)
    (= (distance wp3 printer2) 16)
    (= (distance printer2 wp3) 16)
    (= (distance wp4 wp5) 14)
    (= (distance wp5 wp4) 14)
    (= (distance wp4 printer0) 7)
    (= (distance printer0 wp4) 7)
    (= (distance wp4 printer1) 6)
    (= (distance printer1 wp4) 6)
    (= (distance wp4 printer2) 4)
    (= (distance printer2 wp4) 4)
    (= (distance wp5 printer0) 21)
    (= (distance printer0 wp5) 21)
    (= (distance wp5 printer1) 8)
    (= (distance printer1 wp5) 8)
    (= (distance wp5 printer2) 16)
    (= (distance printer2 wp5) 16)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
    (= (distance printer0 printer2) 7)
    (= (distance printer2 printer0) 7)
    (= (distance printer1 printer2) 8)
    (= (distance printer2 printer1) 8)
)
(:goal (and
    (papers_delivered wp2)
))
)
