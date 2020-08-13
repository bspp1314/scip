;迭代的sum

(define (sum term a next b)
        (define (sum_iter a b result)
            (if (> a b)
                result
                (sum_iter (next a) b (+ (term a) result))))
    (sum_iter a b 0))



(define (odd x)
     (= (remainder n 2) 1))

(define (cube x)
    (* x x x))

(define (simpson f a b n)
    ; 变量 h 的定义由条件 h=(b−a)/n 给出，将它翻译成表达式：
   (define h 
        (/ (- b a)n))

    ;继续将下一个条件 yk=f(a+kh) 翻译成函数：
    (define  (yk k)
        (f (+ a (* k h))))


    (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((odd? k)
                4)
              (else
                2)))
    
    
    (define (term k)
        (* (factor k)
           (yk k)))

    (define (next k)
        (+ k 1))

    (if (not (even? n))
        (error "n can't be odd")
        (* (/ h 3)
           (sum term 0.0 next n))))    


(simpson cube 0 1 1000)
