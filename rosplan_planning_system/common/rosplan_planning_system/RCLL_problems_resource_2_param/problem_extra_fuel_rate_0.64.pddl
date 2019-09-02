(define (problem example_problem)
(:domain rcllsimple)
(:objects
    s0 - shelf
    bs0 - base_station
    rs0 - ring_station
    r0 - robot
    o0 - order
    ow0 - order_window
    o1 - order
    ow1 - order_window
)
(:init
    ;; robot
    (robot_at r0 s0)
    (not_carrying_order r0 )
    ;; order
    (not_collected o0)
    (= (ring_count o0) 1)
    (= (order_weight o0) 0)
    (not_collected o1)
    (= (ring_count o1) 3)
    (= (order_weight o1) 0)
    ;; order window
    (open ow0)
    (accepts_order o0 ow0)
    (open ow1)
    (accepts_order o1 ow1)
    (not (ready_1))
    (not (ready_2))
    (not (ready_3))
    (not (ready_4))
    (not (ready_5))
    ;; order window closes
    (at 460 (not (open ow0)))
    (at 1010 (not (open ow1)))
    ;; charge level
    (= (battery_capacity r0) 172.8)
    (= (charge_level r0) 163.8)
)
(:goal (and
    (order_delivered)
)))
