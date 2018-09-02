;(define (product term a next b)
;	(if (> a b)
;		1
;		(* (term a)
;		   (product term (next a) next b))))

(define (product term a next b)
	(define (iter x result)
		(if (> x b)
			result
			(iter (next x) (* result (term x)))))
	(iter a 1))
		   
(define (factorial n)
	(define (identity x) x)
	(define (inc x) (+ x 1))
	(product identity 1 inc n))
	
(define (pi-eval n)
	(define (pi-term x)
		(/ (* (- x 1) (+ x 1) 1.0) (* x x)))
	(define (pi-next x)
		(+ x 2))
	(* 4 (product pi-term 3 pi-next n)))