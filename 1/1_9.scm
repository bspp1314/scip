; (define (ins a)
;     (+ a 1))

; (define (dec a)
;     (- a 1))

(load "inc.scm")
(load "dec.scm")

(define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))


(trace plus)
(plus 3 5)

;(inc (plus 2 5))
;(inc (inc (plus 1 5)))
;(inc (inc (inc (plus 0 5))))
;(inc (inc (inc 5)))
;(inc (inc 6))
;(inc 7)
;8 
;从计算过程中可以很明显地看到伸展和收缩两个阶段，且伸展阶段所需的额外存储量和计算所需的步数都正比于参数 a ，说明这是一个线性递归计算过程。


(define (plus2 a b)
    (if (= a 0)
        b
        (plus2 (dec a) (inc b))))

(trace plus2)
(plus2 3 5)

;(plus2 2 6)
;(plus2 1 7)
;(plus2 0 8)
;8
;从计算过程中可以看到，这个版本的 plus 函数只使用常量存储大小，且计算所需的步骤正比于参数 a ，说明这是一个线性迭代计算过程。