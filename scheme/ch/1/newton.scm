(define (sqrt x)

  ; Block structure containing helper funtions.

  (define (sq x) (* x x))
  
  (define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

  (define (average x y)
    (/ (+ x y) 2))
  
  ; x is a free variable inside 'good-enough'
  (define (good-enough guess)
    (< (abs (- x (sq guess))) 0.001))
  
  ; x is a free variable inside 'improve'
  (define (improve guess)
    (average guess (/ x guess)))
  
  ; Iterate until guess is good enough.
  (define (sqrt-iter guess)
    (if (good-enough guess)
      guess 
      (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(sqrt 5.0) 
