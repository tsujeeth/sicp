(define (cube x) (* x x x))

(define (sum3 a b result)
  (if (> a b)
    result
    (sum3 (+ 1 a) b (+ result (cube a)))
  )
)

(sum3 0 10 0)
