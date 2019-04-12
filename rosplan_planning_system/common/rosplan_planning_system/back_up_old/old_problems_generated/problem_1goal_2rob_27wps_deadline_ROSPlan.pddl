(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 - waypoint
    robot0 robot1 - robot
    printer0 printer1 - printer
)
(:init
    (robot_at robot0 printer1)
    (robot_at robot1 wp0)

    (undocked robot0)
    (undocked robot1)


    (localised robot0)
    (localised robot1)

    (dock_at wp0)


    (nocarrying_papers robot0)

    (asked_unload robot1)


    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)
    (delivery_destination wp4)
    (delivery_destination wp5)
    (delivery_destination wp6)

    (at 1029.23 (not (delivery_destination wp0)))
    (at 1029.23 (not (delivery_destination wp1)))
    (at 1029.23 (not (delivery_destination wp2)))
    (at 1029.23 (not (delivery_destination wp3)))
    (at 1029.23 (not (delivery_destination wp4)))
    (at 1029.23 (not (delivery_destination wp5)))
    (at 1029.23 (not (delivery_destination wp6)))

    (= (distance wp0 wp1) 59)
    (= (distance wp1 wp0) 59)
    (= (distance wp0 wp2) 74)
    (= (distance wp2 wp0) 74)
    (= (distance wp0 wp3) 106)
    (= (distance wp3 wp0) 106)
    (= (distance wp0 wp4) 94)
    (= (distance wp4 wp0) 94)
    (= (distance wp0 wp5) 81)
    (= (distance wp5 wp0) 81)
    (= (distance wp0 wp6) 74)
    (= (distance wp6 wp0) 74)
    (= (distance wp0 printer0) 74)
    (= (distance printer0 wp0) 74)
    (= (distance wp0 printer1) 68)
    (= (distance printer1 wp0) 68)
    (= (distance wp1 wp2) 15)
    (= (distance wp2 wp1) 15)
    (= (distance wp1 wp3) 165)
    (= (distance wp3 wp1) 165)
    (= (distance wp1 wp4) 153)
    (= (distance wp4 wp1) 153)
    (= (distance wp1 wp5) 98)
    (= (distance wp5 wp1) 98)
    (= (distance wp1 wp6) 71)
    (= (distance wp6 wp1) 71)
    (= (distance wp1 printer0) 133)
    (= (distance printer0 wp1) 133)
    (= (distance wp1 printer1) 111)
    (= (distance printer1 wp1) 111)
    (= (distance wp2 wp3) 180)
    (= (distance wp3 wp2) 180)
    (= (distance wp2 wp4) 168)
    (= (distance wp4 wp2) 168)
    (= (distance wp2 wp5) 113)
    (= (distance wp5 wp2) 113)
    (= (distance wp2 wp6) 86)
    (= (distance wp6 wp2) 86)
    (= (distance wp2 printer0) 148)
    (= (distance printer0 wp2) 148)
    (= (distance wp2 printer1) 126)
    (= (distance printer1 wp2) 126)
    (= (distance wp3 wp4) 24)
    (= (distance wp4 wp3) 24)
    (= (distance wp3 wp5) 67)
    (= (distance wp5 wp3) 67)
    (= (distance wp3 wp6) 94)
    (= (distance wp6 wp3) 94)
    (= (distance wp3 printer0) 42)
    (= (distance printer0 wp3) 42)
    (= (distance wp3 printer1) 54)
    (= (distance printer1 wp3) 54)
    (= (distance wp4 wp5) 55)
    (= (distance wp5 wp4) 55)
    (= (distance wp4 wp6) 82)
    (= (distance wp6 wp4) 82)
    (= (distance wp4 printer0) 20)
    (= (distance printer0 wp4) 20)
    (= (distance wp4 printer1) 42)
    (= (distance printer1 wp4) 42)
    (= (distance wp5 wp6) 27)
    (= (distance wp6 wp5) 27)
    (= (distance wp5 printer0) 35)
    (= (distance printer0 wp5) 35)
    (= (distance wp5 printer1) 13)
    (= (distance printer1 wp5) 13)
    (= (distance wp6 printer0) 62)
    (= (distance printer0 wp6) 62)
    (= (distance wp6 printer1) 40)
    (= (distance printer1 wp6) 40)
    (= (distance printer0 printer1) 22)
    (= (distance printer1 printer0) 22)

)
(:goal (and
    (papers_delivered wp0)
))
)