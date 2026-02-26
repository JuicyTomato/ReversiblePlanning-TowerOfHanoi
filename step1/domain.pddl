(define (domain hanoi)
  (:requirements :strips :typing :negative-preconditions)

  (:types
    disk peg - location
  )

  (:predicates
    (on ?d - disk ?l - location)   ; disk ?d on ?l
    (clear ?l - location)          ; nothing on top of ?l
    (smaller ?d1 - disk ?d2 - disk) ; ?d1 is smaller than ?d2
  )

  ;; Move a disk from one location (peg or disk) to a peg
  (:action move
    :parameters (?d - disk ?from - location ?to - peg)
    :precondition (and
      (on ?d ?from)
      (clear ?d)
      (clear ?to)
      (not (= ?from ?to))
    )
    :effect (and
      (on ?d ?to)
      (clear ?from)
      (not (on ?d ?from))
      (not (clear ?to))
    )
  )

  ;; rev cond
  (:action move_onto_disk
    :parameters (?d - disk ?from - location ?to - disk)
    :precondition (and
      (on ?d ?from)
      (clear ?d)
      (clear ?to)
      (not (= ?d ?to))
      (not (= ?from ?to))
      (smaller ?d ?to)
    )
    :effect (and
      (on ?d ?to)
      (clear ?from)
      (not (on ?d ?from))
      (not (clear ?to))
    )
  )
)
