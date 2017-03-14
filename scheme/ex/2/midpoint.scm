(define (point x y) (cons x y))

(define (segment p1 p2) (cons p1 p2))

(define (mid l)
  (define (avg x y) (/ (+ x y) 2) )
  (define p1 (car l))
  (define p2 (cdr l))

  (let ((x1 (car p1))
        (y1 (cdr p1))
        (x2 (car p2))
        (y2 (cdr p2)))
    ; midpoint = (avg(x1, x2) , avg(y1, y2))
    (point (avg x1 x2) (avg y1 y2))))

; define two points a (1, 1) and b (5, 5)
; and find their mid-point.
(let ((a (point 1 1))
      (b (point 5 5)))
  (mid (segment a b)))
