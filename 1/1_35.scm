

(define (close_enough x y) (< (abs (- x y)) 0.001))

(define (fix_point f first_guess)
    (define (try guess)
        (let ((next (f guess)))
            (if (close_enough guess next)
                next
                (try next))
        )
    )
    (try first_guess))

(define golden_ratio
    (fix_point (lambda (x) π
                     (+ 1 (/ 1 x)))
                 1.0))


(golden_ratio)