(define (root x pow improve)

  (define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

  (define (good-enough? guess)
    (< (abs (- x (pow guess))) 0.001))

  (define (root-iter guess)
    (if (good-enough? guess)
      guess 
      (root-iter (improve guess))))

  (root-iter 1.0))

(define (sqrt x)
  (define (improve guess)
    (define (average x y)
      (/ (+ x y) 2))

    (average guess (/ x guess)))

  (root x (lambda (x) (* x x)) improve))

(define (cbrt x)
  (define (improve guess)
    ; (x/y^2 + 2y) / 3
    (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

  (root x (lambda (x) (* x x x)) improve))

; square root of 5.0
(sqrt 5.0)

; cube root of 9.0
(cbrt 9.0)
