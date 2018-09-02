(define (filtered-accumulate filter combiner null-value term a next b)
	(define (iter x result)
		(cond ((> x b) result)
			  ((filter x) (iter (next x) (combiner (term x) result)))
			  (else (iter (next x) result))))
	(iter a null-value))
	
(define (sum-prime a b)
	(filtered-accumulate fast-prime-ex? + 0 identity a inc b))
	
(define (identity x) x)

(define (inc x) (+ x 1))

(define (fast-prime-ex? x)
	(fast-prime? x 5))
	
(define (product-prime n)
	(define (con-prime? x)
		(= 1 (gcd x n)))
	(filtered-accumulate con-prime? * 1 identity 1 inc n))
	