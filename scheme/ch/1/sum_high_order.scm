(define (cube x) (* x x x))

(define (identity x) x)

(define (inc x) (+ 1 x))

(define (sumhi term next a b result)
  (if (> a b)
    result
    (sumhi term next (next a) b (+ result (term a)))
  )
)

(sumhi identity inc 0 10 0)

(sumhi cube inc 0 10 0)
