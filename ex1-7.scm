; Structure and Interpretation of Computer Programs
; Exercise 1.7
;
; This program computes square roots using Newton's method, but with 
; a better check for when to stop

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve-sqrt-guess guess x) guess x)))

(define (improve-sqrt-guess guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) 0.00001))

(define (sqrt x) (sqrt-iter 1.0 2.0 x))
