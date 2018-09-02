(define (next test-divisor)
	(if (= test-divisor 2)
		3
		(+ test-divisor 2)))
		
(define (find-divisor n test-divisor)
	(cond ((> (* test-divisor test-divisor) n) n)
		  ((divides? test-divisor n) test-divisor)
		  (else (find-divisor n (next test-divisor)))))