(define (square x)
    (* x x))
; (fast_expt_iter)
; |(fast_expt_iter 2 1 10)
; |(fast_expt_iter 4 1 5)
; |(fast_expt_iter 4 4 4)
; |(fast_expt_iter 16 4 2)
; |(fast_expt_iter 256 4 1)
; |(fast_expt_iter 256 1024 0)
; |1024
; 1024

; _表示次方
; B_n
; B_n = B * B_(n-1)  ; B是奇数
; B_n = (B_2)_(n/2)  ; B是偶数
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