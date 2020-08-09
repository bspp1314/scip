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


(plus 3 5)