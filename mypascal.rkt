#lang planet neil/sicp
(define (depth d n)
  (if (> (- n d) 0) (depth (+ 1 d) (- n d)) d))

(define (sum n) (sum-iter 0 1 n))
(define (sum-iter v from to)
  (cond ((= from to) (+ v to))
        (else (sum-iter (+ v from) (+ from 1) to))))

(define (pascal n)
  (p (depth 1 n) n))

(define (p depth n)
  (cond ((> 3 n) 1)
        ((or (= (sum depth) n) (= n (- (sum depth) (- depth 1)))) 1)
        (else (+ (p (- depth 1) (- n depth)) (p (- depth 1) (- n (- depth 1)))))))

(pascal 1)
(pascal 2)
(pascal 3)
(pascal 4)
(pascal 5)
(pascal 6)
(pascal 7)
(pascal 8)
(pascal 9)
(pascal 10)


