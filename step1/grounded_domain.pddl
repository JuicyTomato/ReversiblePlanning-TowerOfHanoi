(define (domain hanoi-grounded)
  (:requirements :strips :negative-preconditions)
  (:predicates
    (on_d1_d2)   (on_d1_peg1)   (on_d1_peg2)   (on_d1_peg3)
    (on_d2_peg1) (on_d2_peg2)   (on_d2_peg3)
    (clear_d1)   (clear_d2)
    (clear_peg1) (clear_peg2)   (clear_peg3)
  )

  (:action move_d1_from_peg1_to_peg2
    :parameters ()
    :precondition (and
      (on_d1_peg1)
      (not (on_d1_peg2)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg1))
      (clear_d1)
      (clear_peg2)
      (not (on_d2_peg2))
    )
    :effect (and (on_d1_peg2) (clear_peg1) (not (on_d1_peg1)) (not (clear_peg2))))

  (:action move_d1_from_peg2_to_peg1
    :parameters ()
    :precondition (and
      (on_d1_peg2)
      (not (on_d1_peg1)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg2))
      (clear_d1)
      (clear_peg1)
      (not (on_d2_peg1))
    )
    :effect (and (on_d1_peg1) (clear_peg2) (not (on_d1_peg2)) (not (clear_peg1))))

  (:action move_d1_from_peg1_to_peg3
    :parameters ()
    :precondition (and
      (on_d1_peg1)
      (not (on_d1_peg2)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg1))
      (clear_d1)
      (clear_peg3)
      (not (on_d2_peg3))
    )
    :effect (and (on_d1_peg3) (clear_peg1) (not (on_d1_peg1)) (not (clear_peg3))))

  (:action move_d1_from_peg3_to_peg1
    :parameters ()
    :precondition (and
      (on_d1_peg3)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_d2))
      (not (clear_peg3))
      (clear_d1)
      (clear_peg1)
      (not (on_d2_peg1))
    )
    :effect (and (on_d1_peg1) (clear_peg3) (not (on_d1_peg3)) (not (clear_peg1))))

  (:action move_d1_from_peg2_to_peg3
    :parameters ()
    :precondition (and
      (on_d1_peg2)
      (not (on_d1_peg1)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg2))
      (clear_d1)
      (clear_peg3)
      (not (on_d2_peg3))
    )
    :effect (and (on_d1_peg3) (clear_peg2) (not (on_d1_peg2)) (not (clear_peg3))))

  (:action move_d1_from_peg3_to_peg2
    :parameters ()
    :precondition (and
      (on_d1_peg3)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_d2))
      (not (clear_peg3))
      (clear_d1)
      (clear_peg2)
      (not (on_d2_peg2))
    )
    :effect (and (on_d1_peg2) (clear_peg3) (not (on_d1_peg3)) (not (clear_peg2))))

  (:action move_d1_from_peg1_to_d2
    :parameters ()
    :precondition (and
      (on_d1_peg1)
      (not (on_d1_peg2)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg1))
      (clear_d1)
      (clear_d2)
    )
    :effect (and (on_d1_d2) (clear_peg1) (not (on_d1_peg1)) (not (clear_d2))))

  (:action move_d1_from_d2_to_peg1
    :parameters ()
    :precondition (and
      (on_d1_d2)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_peg3))
      (not (clear_d2))
      (clear_d1)
      (clear_peg1)
      (not (on_d2_peg1))
    )
    :effect (and (on_d1_peg1) (clear_d2) (not (on_d1_d2)) (not (clear_peg1))))

  (:action move_d1_from_peg2_to_d2
    :parameters ()
    :precondition (and
      (on_d1_peg2)
      (not (on_d1_peg1)) (not (on_d1_peg3)) (not (on_d1_d2))
      (not (clear_peg2))
      (clear_d1)
      (clear_d2)
    )
    :effect (and (on_d1_d2) (clear_peg2) (not (on_d1_peg2)) (not (clear_d2))))

  (:action move_d1_from_d2_to_peg2
    :parameters ()
    :precondition (and
      (on_d1_d2)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_peg3))
      (not (clear_d2))
      (clear_d1)
      (clear_peg2)
      (not (on_d2_peg2))
    )
    :effect (and (on_d1_peg2) (clear_d2) (not (on_d1_d2)) (not (clear_peg2))))

  (:action move_d1_from_peg3_to_d2
    :parameters ()
    :precondition (and
      (on_d1_peg3)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_d2))
      (not (clear_peg3))
      (clear_d1)
      (clear_d2)
    )
    :effect (and (on_d1_d2) (clear_peg3) (not (on_d1_peg3)) (not (clear_d2))))

  (:action move_d1_from_d2_to_peg3
    :parameters ()
    :precondition (and
      (on_d1_d2)
      (not (on_d1_peg1)) (not (on_d1_peg2)) (not (on_d1_peg3))
      (not (clear_d2))
      (clear_d1)
      (clear_peg3)
      (not (on_d2_peg3))
    )
    :effect (and (on_d1_peg3) (clear_d2) (not (on_d1_d2)) (not (clear_peg3))))

  ;; -------------------------------------------------------

  (:action move_d2_from_peg1_to_peg2
    :parameters ()
    :precondition (and
      (on_d2_peg1)
      (not (on_d2_peg2)) (not (on_d2_peg3))
      (not (clear_peg1))
      (clear_d2) (not (on_d1_d2))
      (clear_peg2)
      (not (on_d1_peg2))
    )
    :effect (and (on_d2_peg2) (clear_peg1) (not (on_d2_peg1)) (not (clear_peg2))))

  (:action move_d2_from_peg2_to_peg1
    :parameters ()
    :precondition (and
      (on_d2_peg2)
      (not (on_d2_peg1)) (not (on_d2_peg3))
      (not (clear_peg2))
      (clear_d2) (not (on_d1_d2))
      (clear_peg1)
      (not (on_d1_peg1))
    )
    :effect (and (on_d2_peg1) (clear_peg2) (not (on_d2_peg2)) (not (clear_peg1))))

  (:action move_d2_from_peg1_to_peg3
    :parameters ()
    :precondition (and
      (on_d2_peg1)
      (not (on_d2_peg2)) (not (on_d2_peg3))
      (not (clear_peg1))
      (clear_d2) (not (on_d1_d2))
      (clear_peg3)
      (not (on_d1_peg3))
    )
    :effect (and (on_d2_peg3) (clear_peg1) (not (on_d2_peg1)) (not (clear_peg3))))

  (:action move_d2_from_peg3_to_peg1
    :parameters ()
    :precondition (and
      (on_d2_peg3)
      (not (on_d2_peg1)) (not (on_d2_peg2))
      (not (clear_peg3))
      (clear_d2) (not (on_d1_d2))
      (clear_peg1)
      (not (on_d1_peg1))
    )
    :effect (and (on_d2_peg1) (clear_peg3) (not (on_d2_peg3)) (not (clear_peg1))))

  (:action move_d2_from_peg2_to_peg3
    :parameters ()
    :precondition (and
      (on_d2_peg2)
      (not (on_d2_peg1)) (not (on_d2_peg3))
      (not (clear_peg2))
      (clear_d2) (not (on_d1_d2))
      (clear_peg3)
      (not (on_d1_peg3))
    )
    :effect (and (on_d2_peg3) (clear_peg2) (not (on_d2_peg2)) (not (clear_peg3))))

  (:action move_d2_from_peg3_to_peg2
    :parameters ()
    :precondition (and
      (on_d2_peg3)
      (not (on_d2_peg1)) (not (on_d2_peg2))
      (not (clear_peg3))
      (clear_d2) (not (on_d1_d2))
      (clear_peg2)
      (not (on_d1_peg2))
    )
    :effect (and (on_d2_peg2) (clear_peg3) (not (on_d2_peg3)) (not (clear_peg2))))
)
