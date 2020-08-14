(define (sum term a next b)
        (if (> a b)
            0
        (+ (term a)
        (sum term (next a) next b))))

(define (pi_sum a b)
    (define (pi_next b)
        (+ b 4))
    (define (pi_term a)
       (/ 1.0 (* a (+ a 2))))
    (sum pi_term a pi_next b))

(pi_sum 1 10)

;如上在利用sum时，必须定义一些如pi_term 和 pi_next 一类的简单函数，以变它们作为高阶函数的参数，这种做法其实看起来比较不友好
;如果不需要显示定义 pi_term 和 pi_next，而是一种方法去直接刻画”那个返回值加4的过程“和”那个返回其输入与它加2的乘积的倒数过程“
;我们可以通过引入一种lambda特殊形式来完成这类的描述

; (lambda (⟨formal-parameters⟩) ⟨body⟩)

(define (pi2_sum a b)
    (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
          a
          (lambda (x) (+ x 4))
          b
    ))

(pi2_sum 1 10)
