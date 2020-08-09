; if 语句是一种特殊形式，当它的 predicate 部分为真时， 
;then-clause 分支会被求值，否则的话， else-clause 分支被求值，两个 clause 只有一个会被求值。

;新定义的 new-if 只是一个普通函数，
;它没有 if 所具有的特殊形式，根据解释器所使用的应用序求值规则，每个函数的实际参数在传入的时候都会被求值，因此，当使用 new-if 函数时，
;无论 predicate 是真还是假， then-clause 和 else-clause 两个分支都会被求值。


(define (new_if predicate then_clause else_clause)
    (cond (predicate then_clause)
        (else else_clause)))


(define (square x)
    (* x x))


(define (abs x)
    (if ( < x 0)
        (- x)
        x))

(define (good_enough guess x )
    (< (abs (- (square guess) x )) 0.00001))


(define (average x y)
    (/ (+ x y ) 2 ))

(define (improve guess x)
    (average guess (/ x guess)))


(define (sqrt_iter_2 guess x)
    (new_if (good_enough guess x)
        guess
        (sqrt_iter_2 (improve guess x )
        x))


(define (sqrt x)
    (sqrt_iter 1.0 x))

(sqrt 10)