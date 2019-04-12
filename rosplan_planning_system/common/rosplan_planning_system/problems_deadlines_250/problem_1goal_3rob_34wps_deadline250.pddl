(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp2)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp1)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp3)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 675.005 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 675.005 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 675.005 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 675.005 (not (delivery_destination wp3)))

    (= (distance wp0 wp1) 16)
    (= (distance wp1 wp0) 16)
    (= (distance wp0 wp2) 12)
    (= (distance wp2 wp0) 12)
    (= (distance wp0 wp3) 7)
    (= (distance wp3 wp0) 7)
    (= (distance wp0 printer0) 13)
    (= (distance printer0 wp0) 13)
    (= (distance wp0 printer1) 16)
    (= (distance printer1 wp0) 16)
    (= (distance wp0 printer2) 5)
    (= (distance printer2 wp0) 5)
    (= (distance wp1 wp2) 28)
    (= (distance wp2 wp1) 28)
    (= (distance wp1 wp3) 23)
    (= (distance wp3 wp1) 23)
    (= (distance wp1 printer0) 7)
    (= (distance printer0 wp1) 7)
    (= (distance wp1 printer1) 32)
    (= (distance printer1 wp1) 32)
    (= (distance wp1 printer2) 13)
    (= (distance printer2 wp1) 13)
    (= (distance wp2 wp3) 5)
    (= (distance wp3 wp2) 5)
    (= (distance wp2 printer0) 25)
    (= (distance printer0 wp2) 25)
    (= (distance wp2 printer1) 4)
    (= (distance printer1 wp2) 4)
    (= (distance wp2 printer2) 15)
    (= (distance printer2 wp2) 15)
    (= (distance wp3 printer0) 20)
    (= (distance printer0 wp3) 20)
    (= (distance wp3 printer1) 9)
    (= (distance printer1 wp3) 9)
    (= (distance wp3 printer2) 10)
    (= (distance printer2 wp3) 10)
    (= (distance printer0 printer1) 29)
    (= (distance printer1 printer0) 29)
    (= (distance printer0 printer2) 16)
    (= (distance printer2 printer0) 16)
    (= (distance printer1 printer2) 19)
    (= (distance printer2 printer1) 19)
)
(:goal (and
    (papers_delivered wp2)
))
)