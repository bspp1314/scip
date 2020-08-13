;迭代版乘积
(define (inc a)
    (+ a 1))

(define (identity a)
    a)

(define (product2 term a next b)
        (define (product2_iter a b result)
            (if (> a b)
                result
                (product2_iter (next a) b (* (term a) result))))
    (product2_iter a b 1))

(define (product term a next b)
    (if (> a b)
        1
    (* (term a)
       (product term (next a) next b) )))



(define (product_integers a b)
    (product identity a inc b))

(define (product2_integers a b)
    (product2 identity a inc b))

(product_integers 1 5)
(product2_integers 1 5)

