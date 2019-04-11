(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp3)
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

    (delivery_destination wp0) ;; (at 265.0075 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 265.0075 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 265.0075 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 265.0075 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 25)
    (= (distance wp1 wp0) 25)
    (= (distance wp0 wp2) 8)
    (= (distance wp2 wp0) 8)
    (= (distance wp0 wp3) 10)
    (= (distance wp3 wp0) 10)
    (= (distance wp0 printer0) 21)
    (= (distance printer0 wp0) 21)
    (= (distance wp0 printer1) 16)
    (= (distance printer1 wp0) 16)
    (= (distance wp0 printer2) 6)
    (= (distance printer2 wp0) 6)
    (= (distance wp1 wp2) 33)
    (= (distance wp2 wp1) 33)
    (= (distance wp1 wp3) 27)
    (= (distance wp3 wp1) 27)
    (= (distance wp1 printer0) 4)
    (= (distance printer0 wp1) 4)
    (= (distance wp1 printer1) 13)
    (= (distance printer1 wp1) 13)
    (= (distance wp1 printer2) 21)
    (= (distance printer2 wp1) 21)
    (= (distance wp2 wp3) 10)
    (= (distance wp3 wp2) 10)
    (= (distance wp2 printer0) 29)
    (= (distance printer0 wp2) 29)
    (= (distance wp2 printer1) 20)
    (= (distance printer1 wp2) 20)
    (= (distance wp2 printer2) 12)
    (= (distance printer2 wp2) 12)
    (= (distance wp3 printer0) 23)
    (= (distance printer0 wp3) 23)
    (= (distance wp3 printer1) 14)
    (= (distance printer1 wp3) 14)
    (= (distance wp3 printer2) 6)
    (= (distance printer2 wp3) 6)
    (= (distance printer0 printer1) 9)
    (= (distance printer1 printer0) 9)
    (= (distance printer0 printer2) 17)
    (= (distance printer2 printer0) 17)
    (= (distance printer1 printer2) 10)
    (= (distance printer2 printer1) 10)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp0)
    (papers_delivered wp2)
))
)
