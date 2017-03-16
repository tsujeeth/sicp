(define (point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-rectangle-1 lower-left-point ln bd) 
  (define (dispatch property)
    (cond ((string=? property "len") ln)
          ((string=? property "breadth") bd)))
  dispatch)

(define (make-rectangle-2 lower-left upper-right) 
  (define (dispatch property)
    (let ((ln (- (x-point upper-right) (x-point lower-left)))
          (bd (- (y-point upper-right) (y-point lower-left))))
      (cond ((string=? property "len") ln)
            ((string=? property "breadth") bd))))
  dispatch)

(define (len rectangle)
  (rectangle "len"))

(define (breadth rectangle)
  (rectangle "breadth"))

(define (area rectangle)
  (let ((ln (len rectangle))
        (bd (breadth rectangle)))
    (* ln bd)))

(define (perimeter rectangle)
  (let ((ln (len rectangle))
        (bd (breadth rectangle)))
    (* (+ ln bd) 2)))

(area (make-rectangle-1 (point 0 0) 5 10))
(perimeter (make-rectangle-1 (point 0 0) 5 10))

(area (make-rectangle-2 (point 0 0) (point 5 10)))
(perimeter (make-rectangle-2 (point 0 0) (point 5 10)))
