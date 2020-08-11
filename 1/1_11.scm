;直接将书本给出的定义『如果 n<3 那么 f(n)=n ；如果 n≥3 ，那么 f(n)=f(n−1)+2f(n−2)+3f(n−3) 』翻译成递归函数：

(define (f n)
    (if (< n 3)
        n 
        (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3))))))



(trace f)
(f 10)


(define (f2_iter a b c i n)
    (if (= i n)
        c
        (f2_iter (+ a (* 2 b) (* 3 c))   ; new a
                a                       ; new b
                b                       ; new c
                (+ i 1)
                n)))

;它使用 i 作为渐进下标， n 作为最大下标， a 、 b 和 c 三个变量分别代表函数调用 f(i+2) 、 f(i+1) 和 f(i) ，从 f(0) 开始，一步步计算出 f(n) ：
(define (f2 n)
    (f2_iter 2 1 0 0 n))

(trace f2)
(trace f2_iter)
(f2 10)