(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp1)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 434.01 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 434.01 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 434.01 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 434.01 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 0)
    (= (distance wp1 wp0) 0)
    (= (distance wp0 wp2) 22)
    (= (distance wp2 wp0) 22)
    (= (distance wp0 wp3) 18)
    (= (distance wp3 wp0) 18)
    (= (distance wp0 printer0) 22)
    (= (distance printer0 wp0) 22)
    (= (distance wp0 printer1) 11)
    (= (distance printer1 wp0) 11)
    (= (distance wp1 wp2) 22)
    (= (distance wp2 wp1) 22)
    (= (distance wp1 wp3) 18)
    (= (distance wp3 wp1) 18)
    (= (distance wp1 printer0) 22)
    (= (distance printer0 wp1) 22)
    (= (distance wp1 printer1) 11)
    (= (distance printer1 wp1) 11)
    (= (distance wp2 wp3) 10)
    (= (distance wp3 wp2) 10)
    (= (distance wp2 printer0) 0)
    (= (distance printer0 wp2) 0)
    (= (distance wp2 printer1) 27)
    (= (distance printer1 wp2) 27)
    (= (distance wp3 printer0) 10)
    (= (distance printer0 wp3) 10)
    (= (distance wp3 printer1) 23)
    (= (distance printer1 wp3) 23)
    (= (distance printer0 printer1) 27)
    (= (distance printer1 printer0) 27)
)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp3)
    (papers_delivered wp2)
))
)
