; f(x, y) = x(1 + xy)^2 + y(1 - y) + (1 + xy)(1 - y)
; If a = (1 + xy)
; and b = (1 - y)
; then f( x, y) = xa^2 + yb + ab

(define (sq x) (* x x))

(define (f x y)
  ;local variables
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    ;body
    (+ (* x (sq a)) (* y b) (* a b)) 
  )
)  

(f 2 3)
