(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 - printer
    robot0 robot1 robot2 - robot
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

    (robot_at robot2 wp4)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 555.003 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 555.003 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 555.003 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 555.003 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 555.003 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 555.003 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 555.003 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 15)
    (= (distance wp1 wp0) 15)
    (= (distance wp0 wp2) 15)
    (= (distance wp2 wp0) 15)
    (= (distance wp0 wp3) 18)
    (= (distance wp3 wp0) 18)
    (= (distance wp0 wp4) 19)
    (= (distance wp4 wp0) 19)
    (= (distance wp0 wp5) 18)
    (= (distance wp5 wp0) 18)
    (= (distance wp0 wp6) 11)
    (= (distance wp6 wp0) 11)
    (= (distance wp0 printer0) 17)
    (= (distance printer0 wp0) 17)
    (= (distance wp0 printer1) 28)
    (= (distance printer1 wp0) 28)
    (= (distance wp1 wp2) 4)
    (= (distance wp2 wp1) 4)
    (= (distance wp1 wp3) 13)
    (= (distance wp3 wp1) 13)
    (= (distance wp1 wp4) 18)
    (= (distance wp4 wp1) 18)
    (= (distance wp1 wp5) 13)
    (= (distance wp5 wp1) 13)
    (= (distance wp1 wp6) 22)
    (= (distance wp6 wp1) 22)
    (= (distance wp1 printer0) 6)
    (= (distance printer0 wp1) 6)
    (= (distance wp1 printer1) 13)
    (= (distance printer1 wp1) 13)
    (= (distance wp2 wp3) 17)
    (= (distance wp3 wp2) 17)
    (= (distance wp2 wp4) 22)
    (= (distance wp4 wp2) 22)
    (= (distance wp2 wp5) 17)
    (= (distance wp5 wp2) 17)
    (= (distance wp2 wp6) 26)
    (= (distance wp6 wp2) 26)
    (= (distance wp2 printer0) 2)
    (= (distance printer0 wp2) 2)
    (= (distance wp2 printer1) 17)
    (= (distance printer1 wp2) 17)
    (= (distance wp3 wp4) 5)
    (= (distance wp4 wp3) 5)
    (= (distance wp3 wp5) 0)
    (= (distance wp5 wp3) 0)
    (= (distance wp3 wp6) 13)
    (= (distance wp6 wp3) 13)
    (= (distance wp3 printer0) 19)
    (= (distance printer0 wp3) 19)
    (= (distance wp3 printer1) 10)
    (= (distance printer1 wp3) 10)
    (= (distance wp4 wp5) 5)
    (= (distance wp5 wp4) 5)
    (= (distance wp4 wp6) 14)
    (= (distance wp6 wp4) 14)
    (= (distance wp4 printer0) 24)
    (= (distance printer0 wp4) 24)
    (= (distance wp4 printer1) 9)
    (= (distance printer1 wp4) 9)
    (= (distance wp5 wp6) 13)
    (= (distance wp6 wp5) 13)
    (= (distance wp5 printer0) 19)
    (= (distance printer0 wp5) 19)
    (= (distance wp5 printer1) 10)
    (= (distance printer1 wp5) 10)
    (= (distance wp6 printer0) 28)
    (= (distance printer0 wp6) 28)
    (= (distance wp6 printer1) 23)
    (= (distance printer1 wp6) 23)
    (= (distance printer0 printer1) 19)
    (= (distance printer1 printer0) 19)
)
(:goal (and
    (papers_delivered wp1)
))
)
