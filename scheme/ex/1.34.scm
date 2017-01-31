(define (f g) (g 2))

; g = dbl
(define (dbl x) (+ x x))
(f dbl)

; g = f
(f f)
