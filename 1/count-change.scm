; (define (count_change amount)
;     (cc amount 5))

(define (cc amount kinds_of_conins)
    (cond ((= amount 1) 1)
        ((or (< amount 0) (= kinds_of_conins 0)) 0)
        (else (+(cc amount 
             (- kinds_of_conins 1))
             ( cc (- amount 
                 (first_denomination kinds_of_conins))
                kinds_of_conins)))))


(define (first_denomination kinds_of_conins)
    (cond ((= kinds_of_conins 1) 1)
          ((= kinds_of_conins 2) 5)
          ((= kinds_of_conins 3) 10)
          ((= kinds_of_conins 4) 25)
          ((= kinds_of_conins 5) 50)
    )
)

(first_denomination 1)
(cc 100 5)