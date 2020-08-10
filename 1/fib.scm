;斐波那契数列树状递归计算过程
(define (fib n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) 
                 (fib (- n 2))))))


; (define (fib n)
;   (if (<= n 2)
;       1
;       (+ (fib (- n 1)) (fib (- n 2)))))

(trace fib)


(fib 20)

; f(1) f(0)
(define (fib2_iter a b count)
    (if (= count 0)
        b
        (fib2_iter (+ a b) a (- count 1)))) 

(define (fib2 n)
    (fib2_iter 1 0 n))


(trace fib2)
(trace fib2_iter)

; (fib2_iter 1 0 3)
(fib2 20)