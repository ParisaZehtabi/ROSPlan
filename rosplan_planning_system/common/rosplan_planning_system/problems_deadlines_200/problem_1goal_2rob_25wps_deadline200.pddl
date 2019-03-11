(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 138.004 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 138.004 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 138.004 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 138.004 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 138.004 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 7)
    (= (distance wp1 wp0) 7)
    (= (distance wp0 wp2) 15)
    (= (distance wp2 wp0) 15)
    (= (distance wp0 wp3) 8)
    (= (distance wp3 wp0) 8)
    (= (distance wp0 wp4) 10)
    (= (distance wp4 wp0) 10)
    (= (distance wp0 printer0) 2)
    (= (distance printer0 wp0) 2)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp1 wp2) 10)
    (= (distance wp2 wp1) 10)
    (= (distance wp1 wp3) 13)
    (= (distance wp3 wp1) 13)
    (= (distance wp1 wp4) 15)
    (= (distance wp4 wp1) 15)
    (= (distance wp1 printer0) 7)
    (= (distance printer0 wp1) 7)
    (= (distance wp1 printer1) 12)
    (= (distance printer1 wp1) 12)
    (= (distance wp2 wp3) 23)
    (= (distance wp3 wp2) 23)
    (= (distance wp2 wp4) 25)
    (= (distance wp4 wp2) 25)
    (= (distance wp2 printer0) 17)
    (= (distance printer0 wp2) 17)
    (= (distance wp2 printer1) 4)
    (= (distance printer1 wp2) 4)
    (= (distance wp3 wp4) 2)
    (= (distance wp4 wp3) 2)
    (= (distance wp3 printer0) 6)
    (= (distance printer0 wp3) 6)
    (= (distance wp3 printer1) 25)
    (= (distance printer1 wp3) 25)
    (= (distance wp4 printer0) 8)
    (= (distance printer0 wp4) 8)
    (= (distance wp4 printer1) 27)
    (= (distance printer1 wp4) 27)
    (= (distance printer0 printer1) 19)
    (= (distance printer1 printer0) 19)
)
(:goal (and
    (papers_delivered wp0)
))
)
