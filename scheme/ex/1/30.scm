; Linear recursive
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

; Iterative
(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

; Sum to n numbers using iterative method
(define (sum-to-n a b)
  (define (identity x) x)
  (define (inc x) (+ 1 x))
  (sum-iter identity a inc b)) 

(sum-to-n 0 10)
