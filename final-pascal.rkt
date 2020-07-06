#lang planet neil/sicp

(define (pascal row col)
  (cond ((= row 1) 1)
        ((or (= col 1) (= col row)) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))

(define (display-pascal-row row)
  (define (display-pascal-row-iter row-num col)
    (display (pascal row-num col)) (display " ")
    (if (> row-num col) (display-pascal-row-iter row-num (+ col 1))))
  (display-pascal-row-iter row 1))

(define (display-pascal row)
  (define (pascal-iter row-num)
    (display-pascal-row row-num)
    (newline)
    (if (< row-num row) (pascal-iter (+ row-num 1))))
  (pascal-iter 1)
  )
                           

(display-pascal 25)

    
    