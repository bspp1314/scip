; (define a 3 ) 
; (define b (+ a 1))
; (= a b )
; (= 4 4 )
; a
; b
; (+ a b (* a b))

; ;if  b > a and (b < ())
; (if (and ( > b a)(< b (* a b)))
;     a
;     b)


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

