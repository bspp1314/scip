
(define (close_enough x y) (< (abs (- x y)) 0.001))
(define (average x y) (/ (+ x y) 2))
(define (positive x) (> x 0))
(define (negative x) (< x 0))
(define (abs x)
    (if ( < x 0)
        (- x)
        x))

(define (search  f net_point pos_point)
    (let ((midpoint (average net_point pos_point)))
        (if (close_enough net_point pos_point)
            midpoint
            (let ((test_value (f midpoint)))
                (cond ((positive test_value) (search f net_point midpoint))
                      ((negative  test_value)(search f midpoint  pos_point))
                      (else midpoint))))))

;用户提供的区间可能不满足 search 的要求（两端点函数值异号）。可以定义一个包装过程，只在参数合法时调用 search
(define (half_interval_method f a b)
    (let ((a_value (f a))
          (b_value (f b)))
        (cond ((and (negative a_value) (positive b_value)) (search f a b))
            ((and (negative b_value) (positive a_value)) (search f b a))
            (else (error “Values are not of opposite sign” a b)))))


(define (f x)
    (- x 10))


; (search f 0 20)
(trace half_interval_method)
(half_interval_method f 0 20)




(define (fix_point f first_guess)
    (define (try guess)
        (let ((next (f guess)))
            (if (close_enough guess next)
                next
                (try next))
        )
    )
    (try first_guess))



(define (sqrt x)
(fix_point (lambda (y) (average y (/ x y)))
1.0))

(sqrt 100)