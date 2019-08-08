(define (domain rcllsimple)

(:requirements :strips :typing :fluents :durative-actions :timed-initial-literals)

(:types
    order robot waypoint - object
    shelf ring_station base_station order_window - waypoint
)

(:functions
    (ring_count ?o - order)
)

(:predicates

    ;; robot
    (robot_at ?v - robot ?wp - waypoint)
    (carrying_order ?r - robot ?o - order)
    (not_carrying_order ?r - robot)

    ;; orders
    (not_collected ?o - order)
    (collected ?r - robot ?o - order)
    (base_produced_1 ?o - order)
    (base_produced_2 ?o - order)
    (base_produced_3 ?o - order)
    (base_produced_4 ?o - order)
    (base_produced_5 ?o - order)
    (ring_produced ?o - order)
    (order_delivered)

    ;; order window
    (accepts_order ?o - order ?ow - order_window)
    (open ?ow - order_window)
)

;; Move to any waypoint, avoiding terrain
(:durative-action goto_waypoint
    :parameters (?r - robot ?from ?to - waypoint)
    :duration (= ?duration 20)
    :condition (at start (robot_at ?r ?from))
    :effect (and
        (at start (not (robot_at ?r ?from)))
        (at end (robot_at ?r ?to))
        )
)

;; Collect order from shelf
(:durative-action collect_order
    :parameters (?r - robot ?s - shelf ?o - order)
    :duration (= ?duration 60)
    :condition (and
        (over all (robot_at ?r ?s))
        (at start (not_carrying_order ?r))
        (at start (not_collected ?o))
        )
    :effect (and
        (at start (not (not_carrying_order ?r)))
        (at start (not (not_collected ?o)))
                (at start (collected ?r ?o))
        (at end (carrying_order ?r ?o))
        )
)

;; Wait for and retrieve a base from the base station
(:durative-action produce_base_1
    :parameters (?r - robot ?bs - base_station ?o - order)
    :duration (= ?duration 120)
    :condition (and
        (over all (robot_at ?r ?bs))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (base_produced_1 ?o))
        )
)

(:durative-action produce_base_2
    :parameters (?r - robot ?bs - base_station ?o - order)
    :duration (= ?duration 120)
    :condition (and
        (over all (robot_at ?r ?bs))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (base_produced_2 ?o))
        )
)

(:durative-action produce_base_3
    :parameters (?r - robot ?bs - base_station ?o - order)
    :duration (= ?duration 120)
    :condition (and
        (over all (robot_at ?r ?bs))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (base_produced_3 ?o))
        )
)

(:durative-action produce_base_4
    :parameters (?r - robot ?bs - base_station ?o - order)
    :duration (= ?duration 120)
    :condition (and
        (over all (robot_at ?r ?bs))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (base_produced_4 ?o))
        )
)

(:durative-action produce_base_5
    :parameters (?r - robot ?bs - base_station ?o - order)
    :duration (= ?duration 120)
    :condition (and
        (over all (robot_at ?r ?bs))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (base_produced_5 ?o))
        )
)


;; Stack a ring onto the base at the ring station
(:durative-action stack_ring
    :parameters (?r - robot ?rs - ring_station ?o - order)
    :duration (= ?duration (* 60 (ring_count ?o)))
    :condition (and
        (over all (robot_at ?r ?rs))
        (at start (base_produced_1 ?o))
        (at start (base_produced_2 ?o))
        (at start (base_produced_3 ?o))
        (at start (base_produced_4 ?o))
        (at start (base_produced_5 ?o))
        (over all (carrying_order ?r ?o))
        )
    :effect (and
        (at end (ring_produced ?o))
        )
)

;; Deliver an order at an order window
(:durative-action deliver_order
    :parameters (?r - robot ?ow - order_window ?o - order)
    :duration (= ?duration 1)
    :condition (and
        (at start (base_produced_1 ?o))
        (at start (base_produced_2 ?o))
        (at start (base_produced_3 ?o))
        (at start (base_produced_4 ?o))
        (at start (base_produced_5 ?o))
        (at start (ring_produced ?o))
        (at start (accepts_order ?o ?ow))
        (over all (carrying_order ?r ?o))
        (over all (robot_at ?r ?ow))
        (at start (open ?ow))
        )
    :effect (and
        (at end (order_delivered))
        (at end (not (carrying_order ?r ?o)))
        (at end (not_carrying_order ?r))
        )
)

;; Dispose of a bad order
(:durative-action dispose
    :parameters (?r - robot ?s - shelf ?o - order)
    :duration (= ?duration 10)
    :condition (and
        (at start (collected ?r ?o))
        (over all (robot_at ?r ?s))
        )
    :effect (and
        (at end (not (collected ?r ?o)))
        (at end (not (carrying_order ?r ?o)))
        (at end (not_carrying_order ?r))
        (at end (not (base_produced_1 ?o)))
        (at end (not (base_produced_2 ?o)))
        (at end (not (base_produced_3 ?o)))
        (at end (not (base_produced_4 ?o)))
        (at end (not (base_produced_5 ?o)))
        (at end (not (ring_produced ?o)))
        )
)

)
