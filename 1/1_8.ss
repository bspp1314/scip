(define (cubic x)
    (* x x x))


(define (abs x)
    (if ( < x 0)
        (- x)
        x))

(define (good_enough guess x )
    (< (abs (- (cubic guess) x )) 0.001))


(define (average x y)
    (/ (+ x y ) 2 ))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess )) 3))


(define (sqrt3_iter guess x)
    (if (good_enough guess x)
        guess
        (sqrt3_iter (improve guess x )
        x)))


(sqrt3_iter 1.0 27.0)



