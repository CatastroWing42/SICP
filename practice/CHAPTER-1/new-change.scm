(define (change-num a)
	(change-num-inner a))
	
(define (change-num-inner a)
	(define (change-iter x d)
	
;to be finished
;i find a way to do change problem in iteration computing
;it will use 50 + 25 + 10 + 5 + 1 = 91 registers to store data
;and consume 5 * n = O(n) * "+" operation time
;it is just a deeper predication of the formula used by recursion computing procedure
;to the contrary, recursion will use O(n) spaces and O(n^2) time

;but!! i dont know how to define an array in scheme,yet..
;so this is as far as i can go now
;course i can do this in c, but thats not funny:-)