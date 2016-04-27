(define (cube x) (* x x x))

(define (close-result x y)
  (/ (+(/ x (square y)) (* 2 y)) 3)
 )

(define (square x) (* x x))

(define (cubic-root-iter guess x)
  (if (good-enough? guess x)
	guess
	(cubic-root-iter (improve guess x) x)
	)
 )

(define (improve guess x)
 (close-result x guess)
  )

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001) 
 )

(define (abs x)
 (if (< x 0)
     (- x)
	 x
 )  
)

(define (cubic-root x) (cubic-root-iter 2.0 x))
(cubic-root 27)
