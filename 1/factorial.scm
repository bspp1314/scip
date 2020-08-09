(define (factorial x)
    (if ( = x 1)
        1
        (* x (factorial (- x 1)))))


(factorial 6)


(define (fact_iter product counter max_count)
    (if (> counter max_count)
        product
        (fact_iter (* product counter)
                   (+ counter 1) 
                   max_count)))


(define (factorial2 x)
    (fact_iter 1 1 x))

(factorial2 6)