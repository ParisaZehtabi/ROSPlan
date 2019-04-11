(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
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

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 415.01 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 415.01 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 415.01 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 415.01 (not (delivery_destination wp3)))
    (delivery_destination wp4) ;; (at 415.01 (not (delivery_destination wp4)))
    (delivery_destination wp5) ;; (at 415.01 (not (delivery_destination wp5)))
    (delivery_destination wp6) ;; (at 415.01 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 3)
    (= (distance wp1 wp0) 3)
    (= (distance wp0 wp2) 8)
    (= (distance wp2 wp0) 8)
    (= (distance wp0 wp3) 20)
    (= (distance wp3 wp0) 20)
    (= (distance wp0 wp4) 31)
    (= (distance wp4 wp0) 31)
    (= (distance wp0 wp5) 23)
    (= (distance wp5 wp0) 23)
    (= (distance wp0 wp6) 30)
    (= (distance wp6 wp0) 30)
    (= (distance wp0 printer0) 5)
    (= (distance printer0 wp0) 5)
    (= (distance wp0 printer1) 17)
    (= (distance printer1 wp0) 17)
    (= (distance wp0 printer2) 16)
    (= (distance printer2 wp0) 16)
    (= (distance wp1 wp2) 11)
    (= (distance wp2 wp1) 11)
    (= (distance wp1 wp3) 17)
    (= (distance wp3 wp1) 17)
    (= (distance wp1 wp4) 28)
    (= (distance wp4 wp1) 28)
    (= (distance wp1 wp5) 20)
    (= (distance wp5 wp1) 20)
    (= (distance wp1 wp6) 27)
    (= (distance wp6 wp1) 27)
    (= (distance wp1 printer0) 2)
    (= (distance printer0 wp1) 2)
    (= (distance wp1 printer1) 20)
    (= (distance printer1 wp1) 20)
    (= (distance wp1 printer2) 19)
    (= (distance printer2 wp1) 19)
    (= (distance wp2 wp3) 16)
    (= (distance wp3 wp2) 16)
    (= (distance wp2 wp4) 27)
    (= (distance wp4 wp2) 27)
    (= (distance wp2 wp5) 19)
    (= (distance wp5 wp2) 19)
    (= (distance wp2 wp6) 26)
    (= (distance wp6 wp2) 26)
    (= (distance wp2 printer0) 11)
    (= (distance printer0 wp2) 11)
    (= (distance wp2 printer1) 9)
    (= (distance printer1 wp2) 9)
    (= (distance wp2 printer2) 8)
    (= (distance printer2 wp2) 8)
    (= (distance wp3 wp4) 13)
    (= (distance wp4 wp3) 13)
    (= (distance wp3 wp5) 21)
    (= (distance wp5 wp3) 21)
    (= (distance wp3 wp6) 14)
    (= (distance wp6 wp3) 14)
    (= (distance wp3 printer0) 15)
    (= (distance printer0 wp3) 15)
    (= (distance wp3 printer1) 23)
    (= (distance printer1 wp3) 23)
    (= (distance wp3 printer2) 22)
    (= (distance printer2 wp3) 22)
    (= (distance wp4 wp5) 8)
    (= (distance wp5 wp4) 8)
    (= (distance wp4 wp6) 1)
    (= (distance wp6 wp4) 1)
    (= (distance wp4 printer0) 26)
    (= (distance printer0 wp4) 26)
    (= (distance wp4 printer1) 24)
    (= (distance printer1 wp4) 24)
    (= (distance wp4 printer2) 27)
    (= (distance printer2 wp4) 27)
    (= (distance wp5 wp6) 7)
    (= (distance wp6 wp5) 7)
    (= (distance wp5 printer0) 18)
    (= (distance printer0 wp5) 18)
    (= (distance wp5 printer1) 16)
    (= (distance printer1 wp5) 16)
    (= (distance wp5 printer2) 19)
    (= (distance printer2 wp5) 19)
    (= (distance wp6 printer0) 25)
    (= (distance printer0 wp6) 25)
    (= (distance wp6 printer1) 23)
    (= (distance printer1 wp6) 23)
    (= (distance wp6 printer2) 26)
    (= (distance printer2 wp6) 26)
    (= (distance printer0 printer1) 20)
    (= (distance printer1 printer0) 20)
    (= (distance printer0 printer2) 19)
    (= (distance printer2 printer0) 19)
    (= (distance printer1 printer2) 3)
    (= (distance printer2 printer1) 3)
)
(:goal (and
    (papers_delivered wp0)
    (papers_delivered wp5)
    (papers_delivered wp1)
))
)
