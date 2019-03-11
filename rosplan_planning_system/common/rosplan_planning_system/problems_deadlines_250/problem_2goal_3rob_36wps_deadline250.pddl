(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp5)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp4)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 265.0075 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 265.0075 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 265.0075 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 265.0075 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 265.0075 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 265.0075 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 3)
    (= (distance wp1 wp0) 3)
    (= (distance wp0 wp2) 4)
    (= (distance wp2 wp0) 4)
    (= (distance wp0 wp3) 22)
    (= (distance wp3 wp0) 22)
    (= (distance wp0 wp4) 24)
    (= (distance wp4 wp0) 24)
    (= (distance wp0 wp5) 4)
    (= (distance wp5 wp0) 4)
    (= (distance wp0 printer0) 15)
    (= (distance printer0 wp0) 15)
    (= (distance wp0 printer1) 15)
    (= (distance printer1 wp0) 15)
    (= (distance wp0 printer2) 33)
    (= (distance printer2 wp0) 33)
    (= (distance wp1 wp2) 7)
    (= (distance wp2 wp1) 7)
    (= (distance wp1 wp3) 19)
    (= (distance wp3 wp1) 19)
    (= (distance wp1 wp4) 21)
    (= (distance wp4 wp1) 21)
    (= (distance wp1 wp5) 1)
    (= (distance wp5 wp1) 1)
    (= (distance wp1 printer0) 12)
    (= (distance printer0 wp1) 12)
    (= (distance wp1 printer1) 12)
    (= (distance printer1 wp1) 12)
    (= (distance wp1 printer2) 30)
    (= (distance printer2 wp1) 30)
    (= (distance wp2 wp3) 26)
    (= (distance wp3 wp2) 26)
    (= (distance wp2 wp4) 28)
    (= (distance wp4 wp2) 28)
    (= (distance wp2 wp5) 8)
    (= (distance wp5 wp2) 8)
    (= (distance wp2 printer0) 19)
    (= (distance printer0 wp2) 19)
    (= (distance wp2 printer1) 19)
    (= (distance printer1 wp2) 19)
    (= (distance wp2 printer2) 37)
    (= (distance printer2 wp2) 37)
    (= (distance wp3 wp4) 14)
    (= (distance wp4 wp3) 14)
    (= (distance wp3 wp5) 18)
    (= (distance wp5 wp3) 18)
    (= (distance wp3 printer0) 9)
    (= (distance printer0 wp3) 9)
    (= (distance wp3 printer1) 17)
    (= (distance printer1 wp3) 17)
    (= (distance wp3 printer2) 11)
    (= (distance printer2 wp3) 11)
    (= (distance wp4 wp5) 20)
    (= (distance wp5 wp4) 20)
    (= (distance wp4 printer0) 9)
    (= (distance printer0 wp4) 9)
    (= (distance wp4 printer1) 9)
    (= (distance printer1 wp4) 9)
    (= (distance wp4 printer2) 9)
    (= (distance printer2 wp4) 9)
    (= (distance wp5 printer0) 11)
    (= (distance printer0 wp5) 11)
    (= (distance wp5 printer1) 11)
    (= (distance printer1 wp5) 11)
    (= (distance wp5 printer2) 29)
    (= (distance printer2 wp5) 29)
    (= (distance printer0 printer1) 8)
    (= (distance printer1 printer0) 8)
    (= (distance printer0 printer2) 18)
    (= (distance printer2 printer0) 18)
    (= (distance printer1 printer2) 18)
    (= (distance printer2 printer1) 18)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp5)
))
)
