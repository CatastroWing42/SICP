(define (pas x y)
	(pas-iter x y))

(define (pas-iter x y)
	(cond ((or (< x 0) (< y 0)) 0)
		  ((> y x) 0)
		  ((= x 0) 1)
		  (else (+ (pas-iter (- x 1) (- y 1)) (pas-iter (- x 1) y)))))