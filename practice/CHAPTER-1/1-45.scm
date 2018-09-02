(define (average-damp f)
	(lambda (x) (average x (f x))))
	
(define (average a b) (/ (+ a b) 2))

(define (sqrt-n n)
	(let ((times (/ (log n) (log 2))))
	(lambda (x)
		(define (f y)
			(/ x (power y (- n 1))))
		(fixed-point ((repeated average-damp times) f) 1.0))))
		
(define (power a b)
	(cond ((= b 0) 1)
		  ((even? b) (power (square a) (/ b 2)))
		  (else (* a (power a (- b 1))))))