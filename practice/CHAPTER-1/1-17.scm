(define (double x)
	(* x 2))
	
(define (halve x)
	(/ x 2))
	
(define (fast-mult a b)
	(fast-mult-iter a b))
	
(define (fast-mult-iter a b)
	(cond ((= b 0) 0)
		  ((even? b) (fast-mult-iter (double a) (halve b)))
		  (else (+ a (fast-mult-iter a (- b 1))))))