(define (sum term a next b const next-const)
	(if (> a b)
		0
		(+ (* const (term a))
		   (sum term (next a) next b (next-const const) next-const))))
		   
(define (integral-simpson f a b n)
	(define h (/ (* 1.0 (- b a)) n))
	(define (simpson-next x)
		(+ x h))
	(define (simpson-next-const x)
		(- 6 x))
	(* (/ h 3) (- (sum f a simpson-next b 2 simpson-next-const) (f a) (f b))))