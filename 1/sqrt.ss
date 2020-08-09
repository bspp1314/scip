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


(sqrt_iter 1.0 2)


(define (sqrt x)
    (sqrt_iter 1.0 x))

(sqrt 10)


