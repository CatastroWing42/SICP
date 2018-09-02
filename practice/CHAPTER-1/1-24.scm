(define (fast-prime? n times)
	(cond ((= times 0) true)
		  ((fermat-test n) (fast-prime? n (- times 1)))
		  (else false)))
		  
(define (fermat-test n)
	(define (try-it a)
		(= (expmod a n n) a))
	(try-it (+ 1 (random (- n 1)))))
	
(define (expmod base exp-n m)
	(cond ((= exp-n 0) 1)
		  ((even? exp-n)
		   (remainder (square (expmod base (/ exp-n 2) m)) m))
		  (else
		   (remainder (* base (expmod base (- exp-n 1) m)) m))))