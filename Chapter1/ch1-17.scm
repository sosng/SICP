(define (fast-multi a b)
  (cond ((= b 0) 
		 0)
		((even? b) 
		 (double (fast-multi a (halve b))))
		(else (+ a (fast-multi a (- b 1))))
		))

(define (even? x)
  (= (remainder x 2) 0))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(fast-multi 5 4)

