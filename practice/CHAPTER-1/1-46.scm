(define (iterative-improve good-enough? improve-method)
	(lambda (x)
		(let ((next (improve-method x)))
		(if (good-enough? x next)
			next
			((iterative-improve good-enough? improve-method) next)))))
			
(define (close-enough? v1 v2)
	(< (abs (- v1 v2)) tolerance))
	
(define tolerance 0.00001)

(define (fixed-point-ex f first-guess)
	((iterative-improve close-enough? f) first-guess))