
; if b > 0 return a + b 
; else return a -b        
(define (a_plus_abs_b a b)
    ((if (> b 0)
        +
        -) a b))


(a_plus_abs_b 4 6)
(a_plus_abs_b 4 (- 6))
