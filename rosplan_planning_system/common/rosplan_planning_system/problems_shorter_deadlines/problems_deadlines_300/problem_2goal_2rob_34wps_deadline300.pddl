(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 318.015 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 318.015 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 318.015 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 318.015 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 32)
    (= (distance wp1 wp0) 32)
    (= (distance wp0 wp2) 15)
    (= (distance wp2 wp0) 15)
    (= (distance wp0 wp3) 13)
    (= (distance wp3 wp0) 13)
    (= (distance wp0 printer0) 24)
    (= (distance printer0 wp0) 24)
    (= (distance wp0 printer1) 20)
    (= (distance printer1 wp0) 20)
    (= (distance wp0 printer2) 12)
    (= (distance printer2 wp0) 12)
    (= (distance wp1 wp2) 19)
    (= (distance wp2 wp1) 19)
    (= (distance wp1 wp3) 19)
    (= (distance wp3 wp1) 19)
    (= (distance wp1 printer0) 8)
    (= (distance printer0 wp1) 8)
    (= (distance wp1 printer1) 14)
    (= (distance printer1 wp1) 14)
    (= (distance wp1 printer2) 20)
    (= (distance printer2 wp1) 20)
    (= (distance wp2 wp3) 4)
    (= (distance wp3 wp2) 4)
    (= (distance wp2 printer0) 13)
    (= (distance printer0 wp2) 13)
    (= (distance wp2 printer1) 5)
    (= (distance printer1 wp2) 5)
    (= (distance wp2 printer2) 3)
    (= (distance printer2 wp2) 3)
    (= (distance wp3 printer0) 11)
    (= (distance printer0 wp3) 11)
    (= (distance wp3 printer1) 7)
    (= (distance printer1 wp3) 7)
    (= (distance wp3 printer2) 1)
    (= (distance printer2 wp3) 1)
    (= (distance printer0 printer1) 8)
    (= (distance printer1 printer0) 8)
    (= (distance printer0 printer2) 12)
    (= (distance printer2 printer0) 12)
    (= (distance printer1 printer2) 8)
    (= (distance printer2 printer1) 8)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp3)
))
)
