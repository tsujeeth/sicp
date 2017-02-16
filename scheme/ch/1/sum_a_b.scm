(define (sum a b result)
  (if (> a b)
    result
    (sum (+ 1 a) b (+ result a))))

(sum 0 10 0)
