(define (smooth f)
	(lambda (x)
		(/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))
		
(define (smooth-repeat f n)
	((repeated smooth n) f))