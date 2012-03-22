; Structure and Interpretation of Computer programs
; Exercise 1.3
;
; Define a procedure that takes three numbers as arguments and 
; return the sum of the two largest numbers

(define (sumlarge x y z)
  (cond ( (and (< z x) (< z y)) (+ x y) )
	( (and (< y x) (< y z)) (+ x z) )
	( (and (< x y) (< x z)) (+ y z) )))