(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 1050.006 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 1050.006 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 1050.006 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 1050.006 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 1050.006 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 24)
    (= (distance wp1 wp0) 24)
    (= (distance wp0 wp2) 26)
    (= (distance wp2 wp0) 26)
    (= (distance wp0 wp3) 9)
    (= (distance wp3 wp0) 9)
    (= (distance wp0 wp4) 23)
    (= (distance wp4 wp0) 23)
    (= (distance wp0 printer0) 18)
    (= (distance printer0 wp0) 18)
    (= (distance wp0 printer1) 7)
    (= (distance printer1 wp0) 7)
    (= (distance wp1 wp2) 4)
    (= (distance wp2 wp1) 4)
    (= (distance wp1 wp3) 15)
    (= (distance wp3 wp1) 15)
    (= (distance wp1 wp4) 7)
    (= (distance wp4 wp1) 7)
    (= (distance wp1 printer0) 8)
    (= (distance printer0 wp1) 8)
    (= (distance wp1 printer1) 17)
    (= (distance printer1 wp1) 17)
    (= (distance wp2 wp3) 17)
    (= (distance wp3 wp2) 17)
    (= (distance wp2 wp4) 3)
    (= (distance wp4 wp2) 3)
    (= (distance wp2 printer0) 8)
    (= (distance printer0 wp2) 8)
    (= (distance wp2 printer1) 19)
    (= (distance printer1 wp2) 19)
    (= (distance wp3 wp4) 14)
    (= (distance wp4 wp3) 14)
    (= (distance wp3 printer0) 9)
    (= (distance printer0 wp3) 9)
    (= (distance wp3 printer1) 6)
    (= (distance printer1 wp3) 6)
    (= (distance wp4 printer0) 5)
    (= (distance printer0 wp4) 5)
    (= (distance wp4 printer1) 16)
    (= (distance printer1 wp4) 16)
    (= (distance printer0 printer1) 11)
    (= (distance printer1 printer0) 11)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp2)
))
)
