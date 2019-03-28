(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 2670.012 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 2670.012 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 2670.012 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 2670.012 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 13)
    (= (distance wp1 wp0) 13)
    (= (distance wp0 wp2) 12)
    (= (distance wp2 wp0) 12)
    (= (distance wp0 wp3) 13)
    (= (distance wp3 wp0) 13)
    (= (distance wp0 printer0) 18)
    (= (distance printer0 wp0) 18)
    (= (distance wp0 printer1) 16)
    (= (distance printer1 wp0) 16)
    (= (distance wp1 wp2) 7)
    (= (distance wp2 wp1) 7)
    (= (distance wp1 wp3) 8)
    (= (distance wp3 wp1) 8)
    (= (distance wp1 printer0) 13)
    (= (distance printer0 wp1) 13)
    (= (distance wp1 printer1) 3)
    (= (distance printer1 wp1) 3)
    (= (distance wp2 wp3) 7)
    (= (distance wp3 wp2) 7)
    (= (distance wp2 printer0) 6)
    (= (distance printer0 wp2) 6)
    (= (distance wp2 printer1) 10)
    (= (distance printer1 wp2) 10)
    (= (distance wp3 printer0) 11)
    (= (distance printer0 wp3) 11)
    (= (distance wp3 printer1) 11)
    (= (distance printer1 wp3) 11)
    (= (distance printer0 printer1) 16)
    (= (distance printer1 printer0) 16)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp0)
    (papers_delivered wp2)
))
)
