(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp4)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 153.009 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 153.009 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 153.009 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 153.009 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 153.009 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 153.009 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 23)
    (= (distance wp1 wp0) 23)
    (= (distance wp0 wp2) 7)
    (= (distance wp2 wp0) 7)
    (= (distance wp0 wp3) 18)
    (= (distance wp3 wp0) 18)
    (= (distance wp0 wp4) 3)
    (= (distance wp4 wp0) 3)
    (= (distance wp0 wp5) 8)
    (= (distance wp5 wp0) 8)
    (= (distance wp0 printer0) 3)
    (= (distance printer0 wp0) 3)
    (= (distance wp0 printer1) 10)
    (= (distance printer1 wp0) 10)
    (= (distance wp1 wp2) 16)
    (= (distance wp2 wp1) 16)
    (= (distance wp1 wp3) 11)
    (= (distance wp3 wp1) 11)
    (= (distance wp1 wp4) 24)
    (= (distance wp4 wp1) 24)
    (= (distance wp1 wp5) 15)
    (= (distance wp5 wp1) 15)
    (= (distance wp1 printer0) 26)
    (= (distance printer0 wp1) 26)
    (= (distance wp1 printer1) 13)
    (= (distance printer1 wp1) 13)
    (= (distance wp2 wp3) 11)
    (= (distance wp3 wp2) 11)
    (= (distance wp2 wp4) 8)
    (= (distance wp4 wp2) 8)
    (= (distance wp2 wp5) 9)
    (= (distance wp5 wp2) 9)
    (= (distance wp2 printer0) 10)
    (= (distance printer0 wp2) 10)
    (= (distance wp2 printer1) 5)
    (= (distance printer1 wp2) 5)
    (= (distance wp3 wp4) 19)
    (= (distance wp4 wp3) 19)
    (= (distance wp3 wp5) 14)
    (= (distance wp5 wp3) 14)
    (= (distance wp3 printer0) 21)
    (= (distance printer0 wp3) 21)
    (= (distance wp3 printer1) 8)
    (= (distance printer1 wp3) 8)
    (= (distance wp4 wp5) 9)
    (= (distance wp5 wp4) 9)
    (= (distance wp4 printer0) 6)
    (= (distance printer0 wp4) 6)
    (= (distance wp4 printer1) 13)
    (= (distance printer1 wp4) 13)
    (= (distance wp5 printer0) 11)
    (= (distance printer0 wp5) 11)
    (= (distance wp5 printer1) 14)
    (= (distance printer1 wp5) 14)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
)
(:goal (and
    (papers_delivered wp4)
))
)
