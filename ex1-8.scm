; Structure and Interpretation of Computer Programs
; Exercise 1.8
; 
; This program computes cube roots using Newton's Method


(define (cuberoot-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cuberoot-iter (improve-cuberoot-guess guess x) guess x)))

(define (square x) (* x x))

(define (improve-cuberoot-guess guess x)
  (/ (+ (/ x (square guess)) (* 2.0 guess)) 3.0))

; Uncomment if you don't load code from exercise 1.7
;
;(define (average x y)
;  (/ (+ x y) 2))
;(define (good-enough? guess prev-guess)
;  (< (abs (- guess prev-guess)) 0.00001))

(define (cuberoot x) (cuberoot-iter 1.0 2.0 x))
