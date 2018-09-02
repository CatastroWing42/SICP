(define (cubic a b c)
	(lambda (x)
		(+ (* x x x)
		   (* a x x)
		   (* b x)
		   c)))
			   
(define (newtons-method g guess)
	(fixed-point (newtons-transform g) guess))
	
(define (newtons-transform g)
	(lambda (x)
		(- x (/ (g x) ((deriv g) x)))))
		
(define (deriv g)
	(lambda (x)
		(/ (- (g (+ x dx)) (g x))
		   dx)))
		 
(define dx 0.00001)