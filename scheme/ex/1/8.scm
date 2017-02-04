(define (root x pow improve)

  (define (abs x)
    (cond ((< x 0) (- x))
          (else x)))

  (define (good-enough? guess)
    (< (abs (- x (pow guess))) 0.001))

  (define (root-iter guess)
    (if (good-enough? guess)
      guess 
      (root-iter (improve x guess))))

  (root-iter 1.0))

(define (improve-sq x guess)
  (define (average x y)
    (/ (+ x y) 2))
  
  (average guess (/ x guess)))

(define (improve-cube x guess)
  ; (x/y^2 + 2y) / 3
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3))
 
(root 
  5.0 
  (lambda (x) (* x x))
  improve-sq)

(root 
  9.0 
  (lambda (x) (* x x x))
  improve-cube)
