#lang planet neil/sicp

(define (count-change amount)
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 5) 1)
          ((= kinds-of-coins 4) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 2) 25)
          ((= kinds-of-coins 1) 50)))
  
  (define (cc a n)
    (cond ((= a 0) 1)
          ((< a 0) 0)
          ((= n 0) 0)
          (else (+ (cc a (- n 1))
                   (cc (- a (first-denomination n)) n)))))
  (cc amount 5))

(count-change 100)


