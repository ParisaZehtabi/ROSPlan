(define (domain rcllsimple)

(:requirements :strips :typing :fluents :durative-actions :timed-initial-literals)

(:types
    order robot waypoint docker - object
    shelf ring_station base_station order_window docker_station - waypoint
)

(:functions
    (ring_count ?o - order)
    (charge_level ?r - robot)
    (battery_capacity ?r - robot)
)

(:predicates

    ;; robot
    (robot_at ?v - robot ?wp - waypoint)
    (carrying_order ?r - robot ?o - order)
    (not_carrying_order ?r - robot)

    ;; orders
    (not_collected ?o - order)
    (collected ?r - robot ?o - order)
    (base_produced ?o - order)
    (ring_produced ?o - order)
    (order_delivered)

    ;; order window
    (accepts_order ?o - order ?ow - order_window)
    (open ?ow - order_window)

    ;; charge
    (charging ?r - robot)

)

;; Move to any waypoint, avoiding terrain
(:durative-action goto_waypoint
	:parameters (?r - robot ?from ?to - waypoint)
	:duration (= ?duration 20)
	:condition (and 
        (at start (robot_at ?r ?from))
        (over all (>= (charge_level ?r) 0)))
	:effect (and
		(at start (not (robot_at ?r ?from)))
		(at end (robot_at ?r ?to))
		)
)

;; Collect order from shelf
(:durative-action collect_order
	:parameters (?r - robot ?s - shelf ?o - order)
	:duration (and (>= ?duration 0) (<= ?duration 1800))
	:condition (and
		(over all (robot_at ?r ?s))
		(at start (not_carrying_order ?r))
		(at start (not_collected ?o))
        (over all (>= (charge_level ?r) 0))
		)
	:effect (and
		(at start (not (not_carrying_order ?r)))
		(at start (not (not_collected ?o)))
        (at start (collected ?r ?o))
		(at end (carrying_order ?r ?o))
        (decrese (charge_level ?r) (* #t 1))
		)
)

;; Wait for and retrieve a base from the base station
(:durative-action produce_base
	:parameters (?r - robot ?bs - base_station ?o - order)
	:duration (and (>= ?duration 0) (<= ?duration 1800))
	:condition (and
		(over all (robot_at ?r ?bs))
		(over all (carrying_order ?r ?o))
        (over all (>= (charge_level ?r) 0))
		)
	:effect (and
		(at end (base_produced ?o))
		)
)

;; Stack a ring onto the base at the ring station
(:durative-action stack_ring
	:parameters (?r - robot ?rs - ring_station ?o - order)
	:duration (= ?duration (* 60 (ring_count ?o)))
	:condition (and
		(over all (robot_at ?r ?rs))
		(at start (base_produced ?o))
		(over all (carrying_order ?r ?o))
        (over all (>= (charge_level ?r) 0))
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
		(at start (base_produced ?o))
		(at start (ring_produced ?o))
		(at start (accepts_order ?o ?ow))
		(over all (carrying_order ?r ?o))
		(over all (robot_at ?r ?ow))
		(at start (open ?ow))
        (over all (>= (charge_level ?r) 0))
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
        (over all (>= (charge_level ?r) 0))
		)
	:effect (and
   		(at end (not (collected ?r ?o)))
		(at end (not (carrying_order ?r ?o)))
		(at end (not_carrying_order ?r))
		(at end (not (base_produced ?o)))
		(at end (not (ring_produced ?o)))
		)
)

;;Charge the robot
(:durative-action charge
    :parameters (?r - robot ?ds - docker_station )
    :duration (= ?duration 5)
    :condition (and
        (over all (< (charge_level ?r) (battery_capacity ?r)))
        (over all (robot_at ?r ?ds))
    :effect (and 
        (assign (charge_level) (battery_capacity))
        )
))

)