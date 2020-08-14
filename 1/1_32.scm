;递归计算过程
(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate combiner
                              null-value
                              term
                              (next a)
                              next
                              b))))



(define (accumulate2 combiner null_value term a next b)
        (define (accumulate2_iter a b null_value)
            (if (> a b)
                null_value
                (accumulate2_iter (next a) b (combiner (term a) null_value))))
    (accumulate2_iter a b null_value))


(define (sum term a next b)
    (accumulate + 
                0 
                term 
                a 
                next 
                b))


(define (product term a next b)
    (accumulate *
                1 
                term
                a
                next
                b))


(define (sum2 term a next b)
    (accumulate2 + 
                0 
                term 
                a 
                next 
                b))


(define (product2 term a next b)
    (accumulate2 *
                1 
                term
                a
                next
                b))


(define (inc a)
    (+ a 1))

(define (identity a)
    a)


(define (product_integers a b)
    (product identity a inc b))


(define (sum2_integers a b)
    (sum2 identity a inc b))

(define (product2_integers a b)
    (product2 identity a inc b))


(define (sum_integers a b)
    (sum identity a inc b))


(product_integers 1 10)
(sum_integers 1 10)
(product2_integers 1 10)
(sum2_integers 1 10)