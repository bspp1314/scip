(define (square x)
    (* x x))

(define (fast_expt_iter b produce n)
    (if (= n 0)
        produce
        (if (= (remainder n 2) 0)
            ;  (square (fast_expt b (/ n 2)))
            (fast_expt_iter (square b) produce  (/ n 2))  
            (fast_expt_iter b (* produce b) (- n 1)) 
        )
    )
)




(define (fast_expt b n)
    (fast_expt_iter b 1 n))

(trace fast_expt_iter)
(fast_expt 2 10)