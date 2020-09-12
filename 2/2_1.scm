(define (make_rat n d)
    (if (< d 0)
        (cons (- n) (- d))
        (cons n d))