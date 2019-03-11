(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 171.006 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 171.006 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 171.006 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 171.006 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 171.006 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 18)
    (= (distance wp1 wp0) 18)
    (= (distance wp0 wp2) 18)
    (= (distance wp2 wp0) 18)
    (= (distance wp0 wp3) 9)
    (= (distance wp3 wp0) 9)
    (= (distance wp0 wp4) 22)
    (= (distance wp4 wp0) 22)
    (= (distance wp0 printer0) 17)
    (= (distance printer0 wp0) 17)
    (= (distance wp0 printer1) 14)
    (= (distance printer1 wp0) 14)
    (= (distance wp1 wp2) 2)
    (= (distance wp2 wp1) 2)
    (= (distance wp1 wp3) 13)
    (= (distance wp3 wp1) 13)
    (= (distance wp1 wp4) 10)
    (= (distance wp4 wp1) 10)
    (= (distance wp1 printer0) 23)
    (= (distance printer0 wp1) 23)
    (= (distance wp1 printer1) 10)
    (= (distance printer1 wp1) 10)
    (= (distance wp2 wp3) 13)
    (= (distance wp3 wp2) 13)
    (= (distance wp2 wp4) 10)
    (= (distance wp4 wp2) 10)
    (= (distance wp2 printer0) 23)
    (= (distance printer0 wp2) 23)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp3 wp4) 13)
    (= (distance wp4 wp3) 13)
    (= (distance wp3 printer0) 10)
    (= (distance printer0 wp3) 10)
    (= (distance wp3 printer1) 5)
    (= (distance printer1 wp3) 5)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 8)
    (= (distance printer1 wp4) 8)
    (= (distance printer0 printer1) 13)
    (= (distance printer1 printer0) 13)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp4)
    (papers_delivered wp3)
))
)
