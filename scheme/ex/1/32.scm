; Sum & Product as general cases of Accumulate
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (inc x) (+ x 1))
(define (identity x) x)

(define (sum a b)
  (accumulate + 0 identity a inc b))

(sum 0 10)

(define (product a b)
  (accumulate * 1 identity a inc b))

(product 5 10)
