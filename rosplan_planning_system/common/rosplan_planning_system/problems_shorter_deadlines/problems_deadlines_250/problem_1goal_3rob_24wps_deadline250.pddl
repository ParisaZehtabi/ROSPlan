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

    (robot_at robot1 wp2)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 172.5075 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 172.5075 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 172.5075 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 172.5075 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 18)
    (= (distance wp1 wp0) 18)
    (= (distance wp0 wp2) 11)
    (= (distance wp2 wp0) 11)
    (= (distance wp0 wp3) 12)
    (= (distance wp3 wp0) 12)
    (= (distance wp0 printer0) 4)
    (= (distance printer0 wp0) 4)
    (= (distance wp0 printer1) 20)
    (= (distance printer1 wp0) 20)
    (= (distance wp1 wp2) 29)
    (= (distance wp2 wp1) 29)
    (= (distance wp1 wp3) 8)
    (= (distance wp3 wp1) 8)
    (= (distance wp1 printer0) 18)
    (= (distance printer0 wp1) 18)
    (= (distance wp1 printer1) 18)
    (= (distance printer1 wp1) 18)
    (= (distance wp2 wp3) 23)
    (= (distance wp3 wp2) 23)
    (= (distance wp2 printer0) 11)
    (= (distance printer0 wp2) 11)
    (= (distance wp2 printer1) 21)
    (= (distance printer1 wp2) 21)
    (= (distance wp3 printer0) 12)
    (= (distance printer0 wp3) 12)
    (= (distance wp3 printer1) 26)
    (= (distance printer1 wp3) 26)
    (= (distance printer0 printer1) 24)
    (= (distance printer1 printer0) 24)
)
(:goal (and
    (papers_delivered wp1)
))
)
