(define (distance p1 p2)
  (define (sq x) (* x x))

  (let ((x1 (car p1))
        (y1 (cdr p1))
        (x2 (car p2))
        (y2 (cdr p2)))
    ; distance = sqrt( (x2-x1)^2 + (y2-y1)^2 )
    (sqrt (+ (sq (- x2 x1)) (sq (- y2 y1))))))

; define two points a (1, 1) and b (5, 5)
; and find the distance between them.
(define (point x y) (cons x y))
(let ((a (point 1 1))
      (b (point 5 5)))
  (distance a b))
