
; 题目要求给出的函数需要完成以下三件事：
; 写一个函数，接受三个数作为参数
; 判断三个数中较大的两个数
; 计算较大两个数的平方和(两个数的平方之和)

(define (square x)
    (* x x))

(square 21)

(define (sum_of_squares x y)
    (+ (square x) 
       (square y)))

(sum_of_squares 3 4 )





(define (bigger x y)
    (if (> x y)
        x
        y))

(define (smaller x y)
    (if (> x y)
        x
        y))


(define (bigger_sum_of_squares x y z)
    (sum_of_squares (bigger x y )
                    (bigger (smaller x y ) z)))


(bigger_sum_of_squares 0 2 2)

