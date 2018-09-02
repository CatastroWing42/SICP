(define (repeated f n)
	(lambda (x)
		(if (< n 1)
			x
			(f ((repeated f (- n 1)) x)))))