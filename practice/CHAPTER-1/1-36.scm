(define (fixed-point f first-guess)
	(define (close-enough? v1 v2)
		(< (abs (- v1 v2)) tolerance))
	(define (try guess)
		(newline)
		(display guess)
		(let ((next (f guess)))
			(if (close-enough? guess next)
				next
				(try next))))
	(try first-guess))
	
(define (root n)
	(fixed-point (lambda (x) (/ (log n) (log x))) 2.0))
	
(define (root-ex n)
	(fixed-point (lambda (x) (/ (+ x (/ (log n) (log x))) 2.0)) 2.0))