(define (fib n)
	(fib-iter 1 0 n))

(define (fib-iter a b n)
	(if (= n 0)
		b
		(fib-iter (+ a b) a (- n 1))))
		
(define (delta n)
	(abs (- (fib n) (fai n))))
	
(define (fai n)
	(/ (power fai-num n) (sqrt 5)))
	
(define fai-num
	(/ (+ 1 (sqrt 5)) 2))
	
(define (power x n)
	(cond ((or (= n 0) (< n 0)) 1)
		  ((= n 1) x)
		  (else (* x (power x (- n 1))))))