;递归求幂
; 时间复杂度O(n) 空间复杂度O(n)
(define (expt b n)
    (if (= n 0)
        1
        (* b (expt b (-1+ n)))))

(expt 2 10)

;迭代求解 时间复杂度O(n) 空间复杂度O(1)
(define (expt2 b n)
    (define (expt2_iter product b n)
    (cond ((= n 0) product)
        (else (expt2_iter (* product b) b (-1+ n)))
        ))

    (expt2_iter 1 b n))


(trace expt2)
(expt2 2 10)

(define (square x)
    (* x x))

;优化,时间复杂度O(logn) 空间复杂复杂度O(logn)
(define (fast_expt b n)
    (if (= n 0)
        1
        (if (= (remainder n 2) 0)
             (square (fast_expt b (/ n 2)))
             (* (square (fast_expt b (/ (- n 1 ) 2) )) b)
            )
    ))

(fast_expt 2 10)
(fast_expt 2 9)