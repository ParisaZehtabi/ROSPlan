(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    printer0 printer1 printer2 printer3 - printer
    robot0 robot1 robot2 - robot
)
(:init
    (robot_at robot0 wp0)
    (nocarrying_papers robot0)
    (undocked robot0)
    (localised robot0)

    (robot_at robot1 wp0)
    (nocarrying_papers robot1)
    (undocked robot1)
    (localised robot1)

    (robot_at robot2 wp0)
    (nocarrying_papers robot2)
    (undocked robot2)
    (localised robot2)

    (dock_at wp0)

    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)
    (delivery_destination wp4)

    (= (distance wp0 wp1) 74)
    (= (distance wp1 wp0) 74)
    (= (distance wp0 wp2) 107)
    (= (distance wp2 wp0) 107)
    (= (distance wp0 wp3) 67)
    (= (distance wp3 wp0) 67)
    (= (distance wp0 wp4) 21)
    (= (distance wp4 wp0) 21)
    (= (distance wp0 printer0) 139)
    (= (distance printer0 wp0) 139)
    (= (distance wp0 printer1) 13)
    (= (distance printer1 wp0) 13)
    (= (distance wp0 printer2) 99)
    (= (distance printer2 wp0) 99)
    (= (distance wp0 printer3) 94)
    (= (distance printer3 wp0) 94)
    (= (distance wp1 wp2) 55)
    (= (distance wp2 wp1) 55)
    (= (distance wp1 wp3) 11)
    (= (distance wp3 wp1) 11)
    (= (distance wp1 wp4) 93)
    (= (distance wp4 wp1) 93)
    (= (distance wp1 printer0) 65)
    (= (distance printer0 wp1) 65)
    (= (distance wp1 printer1) 87)
    (= (distance printer1 wp1) 87)
    (= (distance wp1 printer2) 25)
    (= (distance printer2 wp1) 25)
    (= (distance wp1 printer3) 56)
    (= (distance printer3 wp1) 56)
    (= (distance wp2 wp3) 66)
    (= (distance wp3 wp2) 66)
    (= (distance wp2 wp4) 126)
    (= (distance wp4 wp2) 126)
    (= (distance wp2 printer0) 40)
    (= (distance printer0 wp2) 40)
    (= (distance wp2 printer1) 120)
    (= (distance printer1 wp2) 120)
    (= (distance wp2 printer2) 46)
    (= (distance printer2 wp2) 46)
    (= (distance wp2 printer3) 13)
    (= (distance printer3 wp2) 13)
    (= (distance wp3 wp4) 86)
    (= (distance wp4 wp3) 86)
    (= (distance wp3 printer0) 72)
    (= (distance printer0 wp3) 72)
    (= (distance wp3 printer1) 80)
    (= (distance printer1 wp3) 80)
    (= (distance wp3 printer2) 32)
    (= (distance printer2 wp3) 32)
    (= (distance wp3 printer3) 67)
    (= (distance printer3 wp3) 67)
    (= (distance wp4 printer0) 158)
    (= (distance printer0 wp4) 158)
    (= (distance wp4 printer1) 10)
    (= (distance printer1 wp4) 10)
    (= (distance wp4 printer2) 118)
    (= (distance printer2 wp4) 118)
    (= (distance wp4 printer3) 113)
    (= (distance printer3 wp4) 113)
    (= (distance printer0 printer1) 152)
    (= (distance printer1 printer0) 152)
    (= (distance printer0 printer2) 40)
    (= (distance printer2 printer0) 40)
    (= (distance printer0 printer3) 45)
    (= (distance printer3 printer0) 45)
    (= (distance printer1 printer2) 112)
    (= (distance printer2 printer1) 112)
    (= (distance printer1 printer3) 107)
    (= (distance printer3 printer1) 107)
    (= (distance printer2 printer3) 47)
    (= (distance printer3 printer2) 47)
)
(:goal (and
    (papers_delivered wp2)
    (papers_delivered wp0)
    (papers_delivered wp4)
))
)