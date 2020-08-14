
(define (cube x)
    (* x x x))



(define (sum_intergers a b)
    (if ( > a b)
        0
        + a (sum_intergers (+a 1) b )))


(define (sum_cubes a b)
    (if (> a b)
        0
        (+ (cube a)
        (sum-cubes (+ a 1) b))))

(define (pi_sum a b)
    (if (> a b)
            0
            (+ (/ 1.0 (* a (+ a 2)))
            (pi_sum (+ a 4) b))))


(define (sum term a next b)
        (if (> a b)
            0
        (+ (term a)
        (sum term (next a) next b))))



(define (inc n) (+ n 1))

(define (sum_cubes2 a b)
        (sum cube a inc b))

(define (identity x) x)
(define (sum_integers2 a b)
    (sum identity a inc b))


(define (pi_sum2 a b)
    (define (pi_next b)
        (+ b 4))
    (define (pi_term a)
       (/ 1.0 (* a (+ a 2))))
    (sum pi_term a pi_next b) )


(cube 10)
(sum_cubes2 1 10)
(sum_integers2 1 10)
