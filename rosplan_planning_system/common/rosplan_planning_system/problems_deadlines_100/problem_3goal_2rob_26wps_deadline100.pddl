(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp5)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0)  (at 1380.004 (not (delivery_destination wp0)))
    (delivery_destination wp1)  (at 1380.004 (not (delivery_destination wp1)))
    (delivery_destination wp2)  (at 1380.004 (not (delivery_destination wp2)))
    (delivery_destination wp3)  (at 1380.004 (not (delivery_destination wp3)))
    (delivery_destination wp4)  (at 1380.004 (not (delivery_destination wp4)))
    (delivery_destination wp5)  (at 1380.004 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 28)
    (= (distance wp1 wp0) 28)
    (= (distance wp0 wp2) 14)
    (= (distance wp2 wp0) 14)
    (= (distance wp0 wp3) 24)
    (= (distance wp3 wp0) 24)
    (= (distance wp0 wp4) 15)
    (= (distance wp4 wp0) 15)
    (= (distance wp0 wp5) 18)
    (= (distance wp5 wp0) 18)
    (= (distance wp0 printer0) 28)
    (= (distance printer0 wp0) 28)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp1 wp2) 14)
    (= (distance wp2 wp1) 14)
    (= (distance wp1 wp3) 4)
    (= (distance wp3 wp1) 4)
    (= (distance wp1 wp4) 13)
    (= (distance wp4 wp1) 13)
    (= (distance wp1 wp5) 10)
    (= (distance wp5 wp1) 10)
    (= (distance wp1 printer0) 8)
    (= (distance printer0 wp1) 8)
    (= (distance wp1 printer1) 11)
    (= (distance printer1 wp1) 11)
    (= (distance wp2 wp3) 12)
    (= (distance wp3 wp2) 12)
    (= (distance wp2 wp4) 11)
    (= (distance wp4 wp2) 11)
    (= (distance wp2 wp5) 10)
    (= (distance wp5 wp2) 10)
    (= (distance wp2 printer0) 14)
    (= (distance printer0 wp2) 14)
    (= (distance wp2 printer1) 19)
    (= (distance printer1 wp2) 19)
    (= (distance wp3 wp4) 9)
    (= (distance wp4 wp3) 9)
    (= (distance wp3 wp5) 6)
    (= (distance wp5 wp3) 6)
    (= (distance wp3 printer0) 6)
    (= (distance printer0 wp3) 6)
    (= (distance wp3 printer1) 7)
    (= (distance printer1 wp3) 7)
    (= (distance wp4 wp5) 3)
    (= (distance wp5 wp4) 3)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 8)
    (= (distance printer1 wp4) 8)
    (= (distance wp5 printer0) 10)
    (= (distance printer0 wp5) 10)
    (= (distance wp5 printer1) 9)
    (= (distance printer1 wp5) 9)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
)
(:goal (and
    (papers_delivered wp5)
    (papers_delivered wp2)
    (papers_delivered wp0)
))
)
