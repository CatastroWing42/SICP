(define (fast-mult-ex a b)
	(fast-mult-ex-iter 0 a b))
	
(define (fast-mult-ex-iter c a b)
	(cond ((= b 0) c)
		  ((even? b) (fast-mult-ex-iter c (double a) (halve b)))
		  (else (fast-mult-ex-iter (+ c a) a (- b 1)))))