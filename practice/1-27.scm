(define (carmichael? n)
	(carmichael-iter n 1))
	
(define (carmichael-iter n a)
	(cond ((> a (- n 1)) true)
		  ((= (expmod a n n) a) (carmichael-iter n (+ a 1)))
		  (else false)))