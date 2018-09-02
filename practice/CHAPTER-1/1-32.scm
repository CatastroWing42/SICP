(define (accumulate combiner null-value term a next b)
	(define (iter x result)
		(if (> x b)
			result
			(iter (next x) (combiner (term x) result))))
	(iter a null-value))
	
(define (sum term a next b)
	(accumulate + 0 term a next b))
	
(define (product term a next b)
	(accumulate * 1 term a next b))