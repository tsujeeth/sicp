; Product
(define (product term a next b)
  (define (prod-iter a result)
    (if (> a b)
      result
      (prod-iter (next a) (* result (term a)))))
  (prod-iter a 1.0))

(define (factorial n)
  (define (identity x) x)
  (define (inc x) (+ 1 x))
  (product identity 1 inc n))

(factorial 10)

; PI / 4 = (2/3).(4/3).(4/5).(6/5).(6/7).(8/7)
(define (pi n)
  (define (term x)
    (let ((y (+ 1 (* 2 x)))) 
      (* (/ (- y 1) y) (/ (+ 1 y) y))))

  (define (pi-iter i result)
    (if (> i (/ n 2))
      result
      (pi-iter (+ 1 i) (* result (term i)))))
  
  (let ((x (pi-iter 1 1.0)))
    (* 4 x)))

(pi 100)

; PI using product
(define (pi-prod n)
  (define (pi-term i)
    (if (even? i)
      (/ (+ i 2) (+ i 1))
      (/ (+ i 1) (+ i 2))))
  (define (inc x) (+ 1 x))
  (let ((x (product pi-term 1 inc n)))
    (* 4 x)))

(pi-prod 100)
