(define (e k)
	(+ 2 (cont-frac (lambda (i) 1.0)
			   (lambda (i)
					   (cond ((< i 3) i)
							 ((< (remainder (- i 3) 3) 2) 1)
							 (else (/ (* 2 (+ i 1)) 3))))
			   k)))