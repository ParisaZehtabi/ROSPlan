(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp3)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) (at 2430.0075 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 2430.0075 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 2430.0075 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 2430.0075 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 2430.0075 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 2430.0075 (not (delivery_destination wp5)))

    (= (distance wp0 wp1) 18)
    (= (distance wp1 wp0) 18)
    (= (distance wp0 wp2) 68)
    (= (distance wp2 wp0) 68)
    (= (distance wp0 wp3) 32)
    (= (distance wp3 wp0) 32)
    (= (distance wp0 wp4) 75)
    (= (distance wp4 wp0) 75)
    (= (distance wp0 wp5) 32)
    (= (distance wp5 wp0) 32)
    (= (distance wp0 printer0) 30)
    (= (distance printer0 wp0) 30)
    (= (distance wp0 printer1) 30)
    (= (distance printer1 wp0) 30)
    (= (distance wp0 printer2) 71)
    (= (distance printer2 wp0) 71)
    (= (distance wp1 wp2) 50)
    (= (distance wp2 wp1) 50)
    (= (distance wp1 wp3) 36)
    (= (distance wp3 wp1) 36)
    (= (distance wp1 wp4) 79)
    (= (distance wp4 wp1) 79)
    (= (distance wp1 wp5) 36)
    (= (distance wp5 wp1) 36)
    (= (distance wp1 printer0) 42)
    (= (distance printer0 wp1) 42)
    (= (distance wp1 printer1) 22)
    (= (distance printer1 wp1) 22)
    (= (distance wp1 printer2) 67)
    (= (distance printer2 wp1) 67)
    (= (distance wp2 wp3) 48)
    (= (distance wp3 wp2) 48)
    (= (distance wp2 wp4) 59)
    (= (distance wp4 wp2) 59)
    (= (distance wp2 wp5) 60)
    (= (distance wp5 wp2) 60)
    (= (distance wp2 printer0) 92)
    (= (distance printer0 wp2) 92)
    (= (distance wp2 printer1) 38)
    (= (distance printer1 wp2) 38)
    (= (distance wp2 printer2) 87)
    (= (distance printer2 wp2) 87)
    (= (distance wp3 wp4) 43)
    (= (distance wp4 wp3) 43)
    (= (distance wp3 wp5) 12)
    (= (distance wp5 wp3) 12)
    (= (distance wp3 printer0) 44)
    (= (distance printer0 wp3) 44)
    (= (distance wp3 printer1) 14)
    (= (distance printer1 wp3) 14)
    (= (distance wp3 printer2) 103)
    (= (distance printer2 wp3) 103)
    (= (distance wp4 wp5) 45)
    (= (distance wp5 wp4) 45)
    (= (distance wp4 printer0) 77)
    (= (distance printer0 wp4) 77)
    (= (distance wp4 printer1) 57)
    (= (distance printer1 wp4) 57)
    (= (distance wp4 printer2) 146)
    (= (distance printer2 wp4) 146)
    (= (distance wp5 printer0) 32)
    (= (distance printer0 wp5) 32)
    (= (distance wp5 printer1) 22)
    (= (distance printer1 wp5) 22)
    (= (distance wp5 printer2) 103)
    (= (distance printer2 wp5) 103)
    (= (distance printer0 printer1) 54)
    (= (distance printer1 printer0) 54)
    (= (distance printer0 printer2) 101)
    (= (distance printer2 printer0) 101)
    (= (distance printer1 printer2) 89)
    (= (distance printer2 printer1) 89)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp3)
    (papers_delivered wp4)
))
)
