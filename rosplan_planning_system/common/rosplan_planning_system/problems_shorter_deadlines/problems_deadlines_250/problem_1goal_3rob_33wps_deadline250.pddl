(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp2)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 130.005 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 130.005 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 130.005 (not (delivery_destination wp2)))

    (= (distance wp0 wp1) 19)
    (= (distance wp1 wp0) 19)
    (= (distance wp0 wp2) 7)
    (= (distance wp2 wp0) 7)
    (= (distance wp0 printer0) 12)
    (= (distance printer0 wp0) 12)
    (= (distance wp0 printer1) 6)
    (= (distance printer1 wp0) 6)
    (= (distance wp0 printer2) 15)
    (= (distance printer2 wp0) 15)
    (= (distance wp1 wp2) 26)
    (= (distance wp2 wp1) 26)
    (= (distance wp1 printer0) 25)
    (= (distance printer0 wp1) 25)
    (= (distance wp1 printer1) 19)
    (= (distance printer1 wp1) 19)
    (= (distance wp1 printer2) 34)
    (= (distance printer2 wp1) 34)
    (= (distance wp2 printer0) 7)
    (= (distance printer0 wp2) 7)
    (= (distance wp2 printer1) 11)
    (= (distance printer1 wp2) 11)
    (= (distance wp2 printer2) 8)
    (= (distance printer2 wp2) 8)
    (= (distance printer0 printer1) 18)
    (= (distance printer1 printer0) 18)
    (= (distance printer0 printer2) 9)
    (= (distance printer2 printer0) 9)
    (= (distance printer1 printer2) 15)
    (= (distance printer2 printer1) 15)
)
(:goal (and
    (papers_delivered wp0)
))
)
