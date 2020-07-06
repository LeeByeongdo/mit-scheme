#lang planet neil/sicp

(define v 10)

(define (f n)
  (define (f-iter num)
    (if (< num 3) num
        (+ (f-iter (- num 1)) (* 2 (f-iter (- num 2))) (* 3 (f-iter (- num 3))))))
  (f-iter n))

(f v)

(define (g n)
  (define (cal a b c count num)
    (cond ((< num 3) num)
          ((= count num) a)
          (else (cal (+ a (* 2 b) (* 3 c)) a b (+ count 1) num)))) 
          
  (cal 4 2 1 3 n))

(g v)