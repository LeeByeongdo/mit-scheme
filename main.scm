(define (square x) (* x x))
(square 10)

(define (f a b c) (
  cond 
    ((and (or (< a b) (= a b)) (or (< a c) (= a c))) (+ (square b) (square c)))
    ((and (or (< b a) (= b a)) (or (< b c) (= b c))) (+ (square a) (square c)))
    (else (+ (square a) (square b)))
    ))

(f 5 2 1)