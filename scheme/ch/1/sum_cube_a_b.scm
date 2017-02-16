(define (cube-sum a b result)
  (define (cube x) (* x x x))
  (if (> a b)
    result
    (cube-sum (+ 1 a) b (+ result (cube a)))))

(cube-sum 0 10 0)
