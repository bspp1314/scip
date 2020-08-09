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

(good_enough 1.44 2)


(define (average x y)
    (/ (+ x y ) 2 ))

(define (improve guess x)
    (average guess (/ x guess)))


(define (sqrt_iter_2 guess x)
    (new_if (good_enough guess x)
        guess
        (sqrt_iter_2 (improve guess x )
        x))


(define (sqrt_2 x)
    (sqrt_iter_2 1.0 x))

(sqrt_2 10)