(define (tan-cf x k)
	(- 0 (cont-frac (lambda (i) (- 0 (power x i)))
			   (lambda (i) (- (* 2 i) 1))
			   k)))
			   
(define (power a b)
	(define (iter result a b)
		(cond ((= b 0) result)
			  ((even? b) (iter result (square a) (/ b 2)))
			  (else (iter (* result a) a (- b 1)))))
	(iter 1 a b))