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

(define (square x)
    (* x x))


;Lambda 的另一个应用是创建局部变量。在一个过程里，处理使用那些已经约束为过程参数的变量外，我们常常还需要一些局部变量.

(define (f  x y)
    (define (f_helper a b)
        (+ (square a)
           (* y b)
           (* a b)
        ))
    (f_helper (+ 1 (* x y)) (- 1 y) )
)

(define (f2 x y)
    ((lambda (a b) 
    (+ (square a)
           (* y b)
           (* a b)))
    (+ 1 (* x y ))
    (- 1 y)
 ))


(define (f3 x y)
    (let ((a (+ 1 (* x y )))
          (b (- 1 y))
         )
        (+ (* x (square a))
            (* y b)
            (* a b)        
        )))


(f 1 2)
(f2 1 2)
(f3 1 2)
