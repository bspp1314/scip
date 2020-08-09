; ; 平方根

; ; 猜测     商           平均值
; ; 1       2/1 = 1       (2 + 1) / 2 = 1.5
; ; 1.5     2/1.5 = 1.3333 (1.5 + 1.3333) / 2 = 1.4142


(define (square x)
    (* x x))


(define (abs x)
    (if ( < x 0)
        (- x)
        x))

(define (good_enough guess x )
    (< (abs (- (square guess) x )) 0.00001))

(good_enough 1.44 2)


(define (average x y)
    (/ (+ x y ) 2 ))

(define (improve guess x)
    (average guess (/ x guess)))


(define (sqrt_iter guess x)
    (if (good_enough guess x)
        guess
        (sqrt_iter (improve guess x )
        x)))



(define (sqrt x)
    (sqrt_iter 1.0 x))

; (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)


; 对很小的数进行平方根求值
;(sqrt 0.0000009)  ; 正确答案应该是，0.0009486832980505138，out 0.0021043615724809883
;对于特别大的数，因为 解析器 实现的小数精度不足以表示两个大数之间的差，所以 sqrt 会陷入死循环而无法得出正确结果。
;(sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)       ; 死循环


;要避免这一错误，我们按照练习所说，对 good-enough? 进行修改：不再检测猜测值 guess 的平方与 x 之间的差，而是检测新旧两次猜测值之间的比率，当比率变化非常小时，程序就停止 improve 。


(define (new_good_enough old_guess new_guess)
    (> 0.01
       (/ (abs (- new_guess old_guess))
          old-guess)))


(define (new_sqrt_iter guess x)
    (if (good_enough guess improve guess x)
        guess
        (new_sqrt_iter (improve guess x )
        x)))



(define (new_sqrt x)
    (new_sqrt 1.0 x))
