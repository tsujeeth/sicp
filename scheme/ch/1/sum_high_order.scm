(define (sumhi term next a b result)
  (if (> a b)
    result
    (sumhi term next (next a) b (+ result (term a)))))

(define (inc x) (+ 1 x))

(define (sum a b)
  (define (identity x) x)
  (sumhi identity inc a b 0))

(define (cube-sum a b)
  (define (cube x) (* x x x))
  (sumhi cube inc a b 0))

(sum 0 10)

(cube-sum 0 10)
