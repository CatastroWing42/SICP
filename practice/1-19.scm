(define (fast-fib n)
	(fast-fib-iter 1 0 0 1 n))
	
(define (fast-fib-iter p1 q1 p2 q2 n)
	(cond ((= n 0) (T p1 q1))
		  ((even? n) (fast-fib-iter p1 q1 (+ (* p2 p2) (* q2 q2)) (+ (* q2 q2) (* 2 p2 q2)) (/ n 2)))
		  (else (fast-fib-iter (+ (* p1 p2) (* q1 q2)) (+ (* q1 q2) (* p1 q2) (* p2 q1)) p2 q2 (- n 1)))))
		  
(define (T p q)
	q)
	