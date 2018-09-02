(define (squre x)
	(sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
	(if (good_enough? guess x) guess
		(sqrt-iter (improve guess x) x)))
		
(define (good_enough? guess x)
	(< (abs (/ (- guess (improve guess x)) (improve guess x))) 0.001))
	
(define (power guess)
	(* guess guess))
	
(define (improve guess x)
	(average guess (/ x guess)))
	
(define (average x y)
	(/ (+ x y) 2))