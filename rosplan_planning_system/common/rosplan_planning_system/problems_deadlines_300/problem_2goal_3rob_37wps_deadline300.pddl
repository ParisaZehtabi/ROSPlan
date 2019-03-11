(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp6)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp4)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp0)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0) (at 309.012 (not (delivery_destination wp0)))
    (delivery_destination wp1) (at 309.012 (not (delivery_destination wp1)))
    (delivery_destination wp2) (at 309.012 (not (delivery_destination wp2)))
    (delivery_destination wp3) (at 309.012 (not (delivery_destination wp3)))
    (delivery_destination wp4) (at 309.012 (not (delivery_destination wp4)))
    (delivery_destination wp5) (at 309.012 (not (delivery_destination wp5)))
    (delivery_destination wp6) (at 309.012 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 16)
    (= (distance wp1 wp0) 16)
    (= (distance wp0 wp2) 13)
    (= (distance wp2 wp0) 13)
    (= (distance wp0 wp3) 30)
    (= (distance wp3 wp0) 30)
    (= (distance wp0 wp4) 10)
    (= (distance wp4 wp0) 10)
    (= (distance wp0 wp5) 6)
    (= (distance wp5 wp0) 6)
    (= (distance wp0 wp6) 23)
    (= (distance wp6 wp0) 23)
    (= (distance wp0 printer0) 14)
    (= (distance printer0 wp0) 14)
    (= (distance wp0 printer1) 13)
    (= (distance printer1 wp0) 13)
    (= (distance wp0 printer2) 3)
    (= (distance printer2 wp0) 3)
    (= (distance wp1 wp2) 13)
    (= (distance wp2 wp1) 13)
    (= (distance wp1 wp3) 14)
    (= (distance wp3 wp1) 14)
    (= (distance wp1 wp4) 18)
    (= (distance wp4 wp1) 18)
    (= (distance wp1 wp5) 20)
    (= (distance wp5 wp1) 20)
    (= (distance wp1 wp6) 31)
    (= (distance wp6 wp1) 31)
    (= (distance wp1 printer0) 4)
    (= (distance printer0 wp1) 4)
    (= (distance wp1 printer1) 21)
    (= (distance printer1 wp1) 21)
    (= (distance wp1 printer2) 17)
    (= (distance printer2 wp1) 17)
    (= (distance wp2 wp3) 17)
    (= (distance wp3 wp2) 17)
    (= (distance wp2 wp4) 9)
    (= (distance wp4 wp2) 9)
    (= (distance wp2 wp5) 17)
    (= (distance wp5 wp2) 17)
    (= (distance wp2 wp6) 18)
    (= (distance wp6 wp2) 18)
    (= (distance wp2 printer0) 9)
    (= (distance printer0 wp2) 9)
    (= (distance wp2 printer1) 8)
    (= (distance printer1 wp2) 8)
    (= (distance wp2 printer2) 14)
    (= (distance printer2 wp2) 14)
    (= (distance wp3 wp4) 26)
    (= (distance wp4 wp3) 26)
    (= (distance wp3 wp5) 34)
    (= (distance wp5 wp3) 34)
    (= (distance wp3 wp6) 19)
    (= (distance wp6 wp3) 19)
    (= (distance wp3 printer0) 16)
    (= (distance printer0 wp3) 16)
    (= (distance wp3 printer1) 17)
    (= (distance printer1 wp3) 17)
    (= (distance wp3 printer2) 31)
    (= (distance printer2 wp3) 31)
    (= (distance wp4 wp5) 8)
    (= (distance wp5 wp4) 8)
    (= (distance wp4 wp6) 13)
    (= (distance wp6 wp4) 13)
    (= (distance wp4 printer0) 14)
    (= (distance printer0 wp4) 14)
    (= (distance wp4 printer1) 9)
    (= (distance printer1 wp4) 9)
    (= (distance wp4 printer2) 7)
    (= (distance printer2 wp4) 7)
    (= (distance wp5 wp6) 17)
    (= (distance wp6 wp5) 17)
    (= (distance wp5 printer0) 18)
    (= (distance printer0 wp5) 18)
    (= (distance wp5 printer1) 17)
    (= (distance printer1 wp5) 17)
    (= (distance wp5 printer2) 3)
    (= (distance printer2 wp5) 3)
    (= (distance wp6 printer0) 27)
    (= (distance printer0 wp6) 27)
    (= (distance wp6 printer1) 10)
    (= (distance printer1 wp6) 10)
    (= (distance wp6 printer2) 20)
    (= (distance printer2 wp6) 20)
    (= (distance printer0 printer1) 17)
    (= (distance printer1 printer0) 17)
    (= (distance printer0 printer2) 15)
    (= (distance printer2 printer0) 15)
    (= (distance printer1 printer2) 14)
    (= (distance printer2 printer1) 14)
)
(:goal (and
    (papers_delivered wp6)
    (papers_delivered wp4)
))
)
