(load "dec.scm")
(load "ins.scm")


(define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))


(plus 3 5)