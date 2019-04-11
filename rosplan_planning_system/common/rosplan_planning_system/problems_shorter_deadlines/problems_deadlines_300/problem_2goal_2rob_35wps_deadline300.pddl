(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 - printer
    robot0 robot1 - robot
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

    (dock_at wp0)

    (delivery_destination wp0) ;; (at 390.012 (not (delivery_destination wp0)))
    (delivery_destination wp1) ;; (at 390.012 (not (delivery_destination wp1)))
    (delivery_destination wp2) ;; (at 390.012 (not (delivery_destination wp2)))
    (delivery_destination wp3) ;; (at 390.012 (not (delivery_destination wp3)))
    (delivery_destination wp4) ;; (at 390.012 (not (delivery_destination wp4)))

    (= (distance wp0 wp1) 11)
    (= (distance wp1 wp0) 11)
    (= (distance wp0 wp2) 15)
    (= (distance wp2 wp0) 15)
    (= (distance wp0 wp3) 6)
    (= (distance wp3 wp0) 6)
    (= (distance wp0 wp4) 18)
    (= (distance wp4 wp0) 18)
    (= (distance wp0 printer0) 15)
    (= (distance printer0 wp0) 15)
    (= (distance wp0 printer1) 12)
    (= (distance printer1 wp0) 12)
    (= (distance wp0 printer2) 4)
    (= (distance printer2 wp0) 4)
    (= (distance wp1 wp2) 26)
    (= (distance wp2 wp1) 26)
    (= (distance wp1 wp3) 17)
    (= (distance wp3 wp1) 17)
    (= (distance wp1 wp4) 27)
    (= (distance wp4 wp1) 27)
    (= (distance wp1 printer0) 24)
    (= (distance printer0 wp1) 24)
    (= (distance wp1 printer1) 23)
    (= (distance printer1 wp1) 23)
    (= (distance wp1 printer2) 7)
    (= (distance printer2 wp1) 7)
    (= (distance wp2 wp3) 9)
    (= (distance wp3 wp2) 9)
    (= (distance wp2 wp4) 21)
    (= (distance wp4 wp2) 21)
    (= (distance wp2 printer0) 18)
    (= (distance printer0 wp2) 18)
    (= (distance wp2 printer1) 15)
    (= (distance printer1 wp2) 15)
    (= (distance wp2 printer2) 19)
    (= (distance printer2 wp2) 19)
    (= (distance wp3 wp4) 14)
    (= (distance wp4 wp3) 14)
    (= (distance wp3 printer0) 11)
    (= (distance printer0 wp3) 11)
    (= (distance wp3 printer1) 8)
    (= (distance printer1 wp3) 8)
    (= (distance wp3 printer2) 10)
    (= (distance printer2 wp3) 10)
    (= (distance wp4 printer0) 3)
    (= (distance printer0 wp4) 3)
    (= (distance wp4 printer1) 6)
    (= (distance printer1 wp4) 6)
    (= (distance wp4 printer2) 20)
    (= (distance printer2 wp4) 20)
    (= (distance printer0 printer1) 3)
    (= (distance printer1 printer0) 3)
    (= (distance printer0 printer2) 17)
    (= (distance printer2 printer0) 17)
    (= (distance printer1 printer2) 16)
    (= (distance printer2 printer1) 16)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp1)
))
)
