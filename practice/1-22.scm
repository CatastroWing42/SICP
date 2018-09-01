(define (prime? n)
	(= n (smallest-divisor n)))
	
(define (timed-prime-test n)
	(newline)
	(display n)
	(start-prime-test n (runtime)))
	
(define (start-prime-test n start-time)
	(if (fast-prime? n 20)
		(report-prime (- (runtime) start-time))))
		
(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))
	
(define (search-for-primes start)
	(search-for-primes-iter start 30))
	
(define (search-for-primes-iter start count)
	(if (> count 0)
		(do-this start count)))
		
(define (do-this start count)
	(timed-prime-test start)
	(search-for-primes-iter (+ start 2) (- count 1)))