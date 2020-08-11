;最大公约数

(define (GCD a b)
    (if (= b 0)
        a 
        (GCD b (remainder a b))))


(GCD 206 40)




; (GCD 206 40)
; (GCD 40 (remainder 206 40))
; (GCD 6 (remainder 40 6))
; (GCD 4 (remainder 6 4))
; (GCD 2 (remainder 4 2))
; (GCD 2 0)
; (2)
