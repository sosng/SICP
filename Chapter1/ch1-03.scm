;;;翻译错误：原文为返回较大两个数的平方和,中文版为较大两个数之和

(define (sum-of-two-square x y) (+ (* x x) (* y y)))
(define (sum-of-two-bigger-square x y z) 
  (cond ((and (> x y) (> y z)) (sum-of-two-square x y))
		((and (> y z) (> z x)) (sum-of-two-square y z))
		(else (sum-of-two-square z x))
  )
)


(sum-of-two-bigger-square 1 2 3)
