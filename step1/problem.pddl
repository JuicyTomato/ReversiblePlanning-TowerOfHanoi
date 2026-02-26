;; Problema ha 2 dischi e 3 pioli
;; Oggetti sono d1, d2, peg1, peg2, peg3
;; Stato iniziale: torre completa su peg1
;; Goal: torre completa su peg3

(define (problem hanoi-grounded-2dischi)
  (:domain hanoi-grounded)

  (:init
   ;; posizoine dischi
    (on_d2_peg1) ; d2 sul primo peg
    (on_d1_d2) ;d1 su d2

   ;; se clear_x allora sopra x è vuoto
    (clear_d1)
    (clear_peg2)
    (clear_peg3)
  )

  ;; d1 peg1 peg2 sono clear + d2 su peg3 e d1 su d2
  (:goal
    (and
      (on_d2_peg3)
      (on_d1_d2)
      (clear_d1)
      (clear_peg1)
      (clear_peg2)
    )
  )
)
