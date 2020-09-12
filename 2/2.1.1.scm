; (define (make_rat n d)
;     (if (< d 0)
;         (cons (- n) (- d))
;         (cons n d)))

(define (make_rat n d)
    (let ((g (gcd n d)))
   (cons (- (/ n g)) (- (/ d g))) 
   (cons (/ n g) (/ d g))))
    

(define (numer x)
    (car x))

(define (denom x)
    (cdr x))

(define (print_rat x)
(newline)
(display (numer x))
(display "/")
(display (denom x)))


; n1/d1 + n2/d2 = (n1d2 + n2d2) /d1d2
(define (add_rat x y)
        (make_rat (+ (* (numer x) (denom y))
            (* (numer y) (denom x)))
                (* (denom x) (denom y))))

; n1/d1 - n2/d2 = (n1d2 - n2d2) /d1d2
(define (sub_rat x y)
        (make_rat (+ (* (numer x) (denom y))
            (* (numer y) (denom x)))
                (* (denom x) (denom y))))

(define (sub_rat x y)
        (make_rat (- (* (numer x) (denom y))
            (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (div_rat x y)
    (make_rat (* (numer x) (denom y))
        (* (denom x) (numer y))))

(define (equal_rat x y)
    (= (* (numer x) (denom y))
            (* (numer y) (denom x))))


; (define x (cons 1 2))
; (define y (cons 1 3))

; (car x)
; (cdr x)

; (add_rat x y)

(define x (make_rat 2 4))
(denom x)
(numer x)
(print_rat x)