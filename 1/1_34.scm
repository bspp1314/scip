(define (f g)
    (g 2))


(trace f)
;https://developer.aliyun.com/article/1208
;((lambda (g) (g 2)) (lambda(g) (g 2)))
(f f)