(define (squre x)
	(sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
	(new-if (good_enough? guess x) guess
		(sqrt-iter (improve guess x) x)))
		
(define (good_enough? guess x)
	(< (abs (- (power guess) x)) 0.001))
	
(define (power guess)
	(* guess guess))
	
(define (improve guess x)
	(average guess (/ x guess)))
	
(define (average x y)
	(/ (+ x y) 2))
	
(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		  (else else-clause)))