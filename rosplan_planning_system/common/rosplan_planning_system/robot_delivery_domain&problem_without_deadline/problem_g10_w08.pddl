(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 wp6 wp7 - waypoint
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
    (delivery_destination wp5)
    (delivery_destination wp6)
    (delivery_destination wp7)

    (= (distance wp0 wp1) 129)
    (= (distance wp1 wp0) 129)
    (= (distance wp0 wp2) 103)
    (= (distance wp2 wp0) 103)
    (= (distance wp0 wp3) 107)
    (= (distance wp3 wp0) 107)
    (= (distance wp0 wp4) 76)
    (= (distance wp4 wp0) 76)
    (= (distance wp0 wp5) 92)
    (= (distance wp5 wp0) 92)
    (= (distance wp0 wp6) 41)
    (= (distance wp6 wp0) 41)
    (= (distance wp0 wp7) 102)
    (= (distance wp7 wp0) 102)
    (= (distance wp0 printer0) 94)
    (= (distance printer0 wp0) 94)
    (= (distance wp0 printer1) 5)
    (= (distance printer1 wp0) 5)
    (= (distance wp0 printer2) 90)
    (= (distance printer2 wp0) 90)
    (= (distance wp0 printer3) 114)
    (= (distance printer3 wp0) 114)
    (= (distance wp1 wp2) 26)
    (= (distance wp2 wp1) 26)
    (= (distance wp1 wp3) 84)
    (= (distance wp3 wp1) 84)
    (= (distance wp1 wp4) 53)
    (= (distance wp4 wp1) 53)
    (= (distance wp1 wp5) 37)
    (= (distance wp5 wp1) 37)
    (= (distance wp1 wp6) 102)
    (= (distance wp6 wp1) 102)
    (= (distance wp1 wp7) 95)
    (= (distance wp7 wp1) 95)
    (= (distance wp1 printer0) 105)
    (= (distance printer0 wp1) 105)
    (= (distance wp1 printer1) 134)
    (= (distance printer1 wp1) 134)
    (= (distance wp1 printer2) 39)
    (= (distance printer2 wp1) 39)
    (= (distance wp1 printer3) 85)
    (= (distance printer3 wp1) 85)
    (= (distance wp2 wp3) 82)
    (= (distance wp3 wp2) 82)
    (= (distance wp2 wp4) 27)
    (= (distance wp4 wp2) 27)
    (= (distance wp2 wp5) 11)
    (= (distance wp5 wp2) 11)
    (= (distance wp2 wp6) 76)
    (= (distance wp6 wp2) 76)
    (= (distance wp2 wp7) 93)
    (= (distance wp7 wp2) 93)
    (= (distance wp2 printer0) 103)
    (= (distance printer0 wp2) 103)
    (= (distance wp2 printer1) 108)
    (= (distance printer1 wp2) 108)
    (= (distance wp2 printer2) 27)
    (= (distance printer2 wp2) 27)
    (= (distance wp2 printer3) 83)
    (= (distance printer3 wp2) 83)
    (= (distance wp3 wp4) 85)
    (= (distance wp4 wp3) 85)
    (= (distance wp3 wp5) 71)
    (= (distance wp5 wp3) 71)
    (= (distance wp3 wp6) 80)
    (= (distance wp6 wp3) 80)
    (= (distance wp3 wp7) 11)
    (= (distance wp7 wp3) 11)
    (= (distance wp3 printer0) 21)
    (= (distance printer0 wp3) 21)
    (= (distance wp3 printer1) 112)
    (= (distance printer1 wp3) 112)
    (= (distance wp3 printer2) 55)
    (= (distance printer2 wp3) 55)
    (= (distance wp3 printer3) 7)
    (= (distance printer3 wp3) 7)
    (= (distance wp4 wp5) 16)
    (= (distance wp5 wp4) 16)
    (= (distance wp4 wp6) 49)
    (= (distance wp6 wp4) 49)
    (= (distance wp4 wp7) 96)
    (= (distance wp7 wp4) 96)
    (= (distance wp4 printer0) 106)
    (= (distance printer0 wp4) 106)
    (= (distance wp4 printer1) 81)
    (= (distance printer1 wp4) 81)
    (= (distance wp4 printer2) 30)
    (= (distance printer2 wp4) 30)
    (= (distance wp4 printer3) 86)
    (= (distance printer3 wp4) 86)
    (= (distance wp5 wp6) 65)
    (= (distance wp6 wp5) 65)
    (= (distance wp5 wp7) 82)
    (= (distance wp7 wp5) 82)
    (= (distance wp5 printer0) 92)
    (= (distance printer0 wp5) 92)
    (= (distance wp5 printer1) 97)
    (= (distance printer1 wp5) 97)
    (= (distance wp5 printer2) 16)
    (= (distance printer2 wp5) 16)
    (= (distance wp5 printer3) 72)
    (= (distance printer3 wp5) 72)
    (= (distance wp6 wp7) 89)
    (= (distance wp7 wp6) 89)
    (= (distance wp6 printer0) 99)
    (= (distance printer0 wp6) 99)
    (= (distance wp6 printer1) 46)
    (= (distance printer1 wp6) 46)
    (= (distance wp6 printer2) 63)
    (= (distance printer2 wp6) 63)
    (= (distance wp6 printer3) 87)
    (= (distance printer3 wp6) 87)
    (= (distance wp7 printer0) 10)
    (= (distance printer0 wp7) 10)
    (= (distance wp7 printer1) 107)
    (= (distance printer1 wp7) 107)
    (= (distance wp7 printer2) 66)
    (= (distance printer2 wp7) 66)
    (= (distance wp7 printer3) 12)
    (= (distance printer3 wp7) 12)
    (= (distance printer0 printer1) 99)
    (= (distance printer1 printer0) 99)
    (= (distance printer0 printer2) 76)
    (= (distance printer2 printer0) 76)
    (= (distance printer0 printer3) 20)
    (= (distance printer3 printer0) 20)
    (= (distance printer1 printer2) 95)
    (= (distance printer2 printer1) 95)
    (= (distance printer1 printer3) 119)
    (= (distance printer3 printer1) 119)
    (= (distance printer2 printer3) 56)
    (= (distance printer3 printer2) 56)
)
(:goal (and
    (papers_delivered wp5)
    (papers_delivered wp0)
    (papers_delivered wp5)
    (papers_delivered wp7)
    (papers_delivered wp2)
    (papers_delivered wp5)
    (papers_delivered wp4)
    (papers_delivered wp3)
    (papers_delivered wp6)
    (papers_delivered wp4)
))
)