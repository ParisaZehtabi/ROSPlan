(define (problem task)
(:domain turtlebot)
(:objects
    wp0 wp1 wp2 wp3 wp4 wp5 - waypoint
    robot0 robot1 robot2 - robot
    printer0 printer1 printer2 printer3 - printer
)
(:init
    (robot_at robot0 wp0)
    (robot_at robot1 wp0)
    (robot_at robot2 wp0)

    (undocked robot0)
    (undocked robot1)
    (undocked robot2)


    (localised robot0)
    (localised robot1)
    (localised robot2)

    (dock_at wp0)


    (nocarrying_papers robot0)
    (nocarrying_papers robot1)
    (nocarrying_papers robot2)



    (delivery_destination wp0)
    (delivery_destination wp1)
    (delivery_destination wp2)
    (delivery_destination wp3)
    (delivery_destination wp4)
    (delivery_destination wp5)

    (= (distance wp0 wp1) 125)
    (= (distance wp1 wp0) 125)
    (= (distance wp0 wp2) 101)
    (= (distance wp2 wp0) 101)
    (= (distance wp0 wp3) 66)
    (= (distance wp3 wp0) 66)
    (= (distance wp0 wp4) 68)
    (= (distance wp4 wp0) 68)
    (= (distance wp0 wp5) 87)
    (= (distance wp5 wp0) 87)
    (= (distance wp0 printer0) 78)
    (= (distance printer0 wp0) 78)
    (= (distance wp0 printer1) 95)
    (= (distance printer1 wp0) 95)
    (= (distance wp0 printer2) 83)
    (= (distance printer2 wp0) 83)
    (= (distance wp0 printer3) 90)
    (= (distance printer3 wp0) 90)
    (= (distance wp1 wp2) 52)
    (= (distance wp2 wp1) 52)
    (= (distance wp1 wp3) 59)
    (= (distance wp3 wp1) 59)
    (= (distance wp1 wp4) 61)
    (= (distance wp4 wp1) 61)
    (= (distance wp1 wp5) 38)
    (= (distance wp5 wp1) 38)
    (= (distance wp1 printer0) 65)
    (= (distance printer0 wp1) 65)
    (= (distance wp1 printer1) 30)
    (= (distance printer1 wp1) 30)
    (= (distance wp1 printer2) 42)
    (= (distance printer2 wp1) 42)
    (= (distance wp1 printer3) 43)
    (= (distance printer3 wp1) 43)
    (= (distance wp2 wp3) 35)
    (= (distance wp3 wp2) 35)
    (= (distance wp2 wp4) 69)
    (= (distance wp4 wp2) 69)
    (= (distance wp2 wp5) 52)
    (= (distance wp5 wp2) 52)
    (= (distance wp2 printer0) 23)
    (= (distance printer0 wp2) 23)
    (= (distance wp2 printer1) 38)
    (= (distance printer1 wp2) 38)
    (= (distance wp2 printer2) 22)
    (= (distance printer2 wp2) 22)
    (= (distance wp2 printer3) 11)
    (= (distance printer3 wp2) 11)
    (= (distance wp3 wp4) 72)
    (= (distance wp4 wp3) 72)
    (= (distance wp3 wp5) 55)
    (= (distance wp5 wp3) 55)
    (= (distance wp3 printer0) 12)
    (= (distance printer0 wp3) 12)
    (= (distance wp3 printer1) 41)
    (= (distance printer1 wp3) 41)
    (= (distance wp3 printer2) 25)
    (= (distance printer2 wp3) 25)
    (= (distance wp3 printer3) 24)
    (= (distance printer3 wp3) 24)
    (= (distance wp4 wp5) 23)
    (= (distance wp5 wp4) 23)
    (= (distance wp4 printer0) 82)
    (= (distance printer0 wp4) 82)
    (= (distance wp4 printer1) 31)
    (= (distance printer1 wp4) 31)
    (= (distance wp4 printer2) 47)
    (= (distance printer2 wp4) 47)
    (= (distance wp4 printer3) 60)
    (= (distance printer3 wp4) 60)
    (= (distance wp5 printer0) 65)
    (= (distance printer0 wp5) 65)
    (= (distance wp5 printer1) 14)
    (= (distance printer1 wp5) 14)
    (= (distance wp5 printer2) 30)
    (= (distance printer2 wp5) 30)
    (= (distance wp5 printer3) 43)
    (= (distance printer3 wp5) 43)
    (= (distance printer0 printer1) 51)
    (= (distance printer1 printer0) 51)
    (= (distance printer0 printer2) 35)
    (= (distance printer2 printer0) 35)
    (= (distance printer0 printer3) 22)
    (= (distance printer3 printer0) 22)
    (= (distance printer1 printer2) 16)
    (= (distance printer2 printer1) 16)
    (= (distance printer1 printer3) 29)
    (= (distance printer3 printer1) 29)
    (= (distance printer2 printer3) 13)
    (= (distance printer3 printer2) 13)

)
(:goal (and
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp1)
    (papers_delivered wp4)
    (papers_delivered wp5)
    (papers_delivered wp2)
    (papers_delivered wp3)
    (papers_delivered wp1)
))
)