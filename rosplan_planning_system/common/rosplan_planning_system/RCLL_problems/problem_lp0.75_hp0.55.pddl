69.0209628226
138.041925645
160.649803163
90.6498031633
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
    (not_collected o1)
    (= (ring_count o1) 3)
    ;; order window
    (open ow0)
    (accepts_order o0 ow0)
    (open ow1)
    (accepts_order o1 ow1)
    ;; order window closes
    (at 508.062888468 (not (open ow0)))
    (at 672.299606327 (not (open ow1)))
)
(:goal (and
    (order_delivered)
)))
