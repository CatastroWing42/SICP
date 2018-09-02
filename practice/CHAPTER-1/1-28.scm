(define (mr-test n)
	(define (try-it a)
		(= (expmod-mr a (- n 1) n) 1))
	(try-it (+ 1 (random (- n 1)))))
	
(define (expmod-mr base exp-mr m)
	(cond ((= exp-mr 0) 1)
		  ((even? exp-mr) (trival-test (expmod-mr base (/ exp-mr 2) m) m))
		  (else (remainder (* base (expmod-mr base (- exp-mr 1) m)) m))))
		  
(define (trival-test a n)
	(cond ((or (= a 1) (= a (- n 1))) (remainder (square a) n))
		  ((= (remainder a n) (remainder (square a) n)) 0)
		  (else (remainder (square a) n))))