(define (f-ex n)
	(f-iter 0 1 2 n))
	
(define (f-iter a b c n)
	(if (= n 0)
		a
		(f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))