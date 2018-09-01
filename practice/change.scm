(define (chnum-iter a d)
	(if (last? d) 1		  
			      (if (< a d)
				  (chnum-iter a (next d))
		          (+ (chnum-iter a (next d))
		          (chnum-iter (- a d) d)))))

(define (last? d) (if (= d 1) true false))

(define (next d)
		(cond ((= d 50) 25)
			  ((= d 25) 10)
			  ((= d 10) 5)
			  ((= d 5) 1)
			  (else 0)))
			  
(define (chnum a)
		(chnum-iter a 50))