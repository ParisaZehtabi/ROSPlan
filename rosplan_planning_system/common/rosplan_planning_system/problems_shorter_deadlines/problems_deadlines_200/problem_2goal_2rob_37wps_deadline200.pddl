(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
)
(:init
    (robot_at robot0 wp3)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp6)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 288.008 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 288.008 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 288.008 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 288.008 (not (delivery_destination wp3)))
    (delivery_destination wp4) ;; (at 288.008 (not (delivery_destination wp4)))
    (delivery_destination wp5) ;; (at 288.008 (not (delivery_destination wp5)))
    (delivery_destination wp6) ;; (at 288.008 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 8)
    (= (distance wp1 wp0) 8)
    (= (distance wp0 wp2) 16)
    (= (distance wp2 wp0) 16)
    (= (distance wp0 wp3) 12)
    (= (distance wp3 wp0) 12)
    (= (distance wp0 wp4) 16)
    (= (distance wp4 wp0) 16)
    (= (distance wp0 wp5) 16)
    (= (distance wp5 wp0) 16)
    (= (distance wp0 wp6) 18)
    (= (distance wp6 wp0) 18)
    (= (distance wp0 printer0) 13)
    (= (distance printer0 wp0) 13)
    (= (distance wp0 printer1) 8)
    (= (distance printer1 wp0) 8)
    (= (distance wp0 printer2) 10)
    (= (distance printer2 wp0) 10)
    (= (distance wp1 wp2) 8)
    (= (distance wp2 wp1) 8)
    (= (distance wp1 wp3) 20)
    (= (distance wp3 wp1) 20)
    (= (distance wp1 wp4) 10)
    (= (distance wp4 wp1) 10)
    (= (distance wp1 wp5) 8)
    (= (distance wp5 wp1) 8)
    (= (distance wp1 wp6) 10)
    (= (distance wp6 wp1) 10)
    (= (distance wp1 printer0) 5)
    (= (distance printer0 wp1) 5)
    (= (distance wp1 printer1) 16)
    (= (distance printer1 wp1) 16)
    (= (distance wp1 printer2) 12)
    (= (distance printer2 wp1) 12)
    (= (distance wp2 wp3) 20)
    (= (distance wp3 wp2) 20)
    (= (distance wp2 wp4) 18)
    (= (distance wp4 wp2) 18)
    (= (distance wp2 wp5) 12)
    (= (distance wp5 wp2) 12)
    (= (distance wp2 wp6) 16)
    (= (distance wp6 wp2) 16)
    (= (distance wp2 printer0) 5)
    (= (distance printer0 wp2) 5)
    (= (distance wp2 printer1) 18)
    (= (distance printer1 wp2) 18)
    (= (distance wp2 printer2) 12)
    (= (distance printer2 wp2) 12)
    (= (distance wp3 wp4) 28)
    (= (distance wp4 wp3) 28)
    (= (distance wp3 wp5) 28)
    (= (distance wp5 wp3) 28)
    (= (distance wp3 wp6) 30)
    (= (distance wp6 wp3) 30)
    (= (distance wp3 printer0) 25)
    (= (distance printer0 wp3) 25)
    (= (distance wp3 printer1) 4)
    (= (distance printer1 wp3) 4)
    (= (distance wp3 printer2) 10)
    (= (distance printer2 wp3) 10)
    (= (distance wp4 wp5) 6)
    (= (distance wp5 wp4) 6)
    (= (distance wp4 wp6) 2)
    (= (distance wp6 wp4) 2)
    (= (distance wp4 printer0) 13)
    (= (distance printer0 wp4) 13)
    (= (distance wp4 printer1) 24)
    (= (distance printer1 wp4) 24)
    (= (distance wp4 printer2) 20)
    (= (distance printer2 wp4) 20)
    (= (distance wp5 wp6) 4)
    (= (distance wp6 wp5) 4)
    (= (distance wp5 printer0) 7)
    (= (distance printer0 wp5) 7)
    (= (distance wp5 printer1) 24)
    (= (distance printer1 wp5) 24)
    (= (distance wp5 printer2) 20)
    (= (distance printer2 wp5) 20)
    (= (distance wp6 printer0) 11)
    (= (distance printer0 wp6) 11)
    (= (distance wp6 printer1) 26)
    (= (distance printer1 wp6) 26)
    (= (distance wp6 printer2) 22)
    (= (distance printer2 wp6) 22)
    (= (distance printer0 printer1) 21)
    (= (distance printer1 printer0) 21)
    (= (distance printer0 printer2) 17)
    (= (distance printer2 printer0) 17)
    (= (distance printer1 printer2) 12)
    (= (distance printer2 printer1) 12)
)
(:goal (and
    (papers_delivered wp3)
    (papers_delivered wp6)
))
)
