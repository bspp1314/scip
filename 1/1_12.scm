; 使用示例图可以更直观地看出帕斯卡三角形的各个元素之间的关系：

; row:
; 0        1
; 1       1 1
; 2      1 2 1
; 3     1 3 3 1
; 4    1 4 6 4 1
; 5   . . . . . .
; col: 0 1 2 3 4

; 如果使用 pascal(row, col) 代表第 row 行和第 col 列上的元素的值，可以得出一些性质：

; 每个 pascal(row, col) 由 pascal(row-1, col-1) (左上边的元素)和 pascal(row-1, col) (右上边的元素)组成
; 当 col 等于 0 (最左边元素)，或者 row 等于 col (最右边元素)时， pascal(row, col) 等于 1
; 比如说，当 row = 3 ， col = 1 时， pascal(row,col) 的值为 3 ，而这个值又是根据 pascal(3-1, 1-1) = 1 和 pascal(3-1, 1) = 2 计算出来的。

; 综合以上的两个性质，就可以写出递归版本的 pascal 函数了：

(define (pascal row col)
    (cond ((> col row)
            (error "unvalid col value"))
          ((or (= col 0) (= row col))
            1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))




; 前面给出的递归版本 pascal 函数的效率并不好，首先，因为它使用的是递归计算方式，所以它的递归深度受限于解释器所允许的最大递归深度。

; 其次，递归版本 pascal 函数计算值根据的是公式 (rowcol)=(row−1col−1)+(row−1col) ，这个公式带有重复计算，并且复杂度也很高，因此，前面给出的 pascal 函数只能用于 row 和 col 都非常小的情况。

; 要改进这一状况，可以使用帕斯卡三角形的另一个公式来计算帕斯卡三角形的元素：(rowcol)=row!/col!⋅(row−col)! ，其中 row! 表示 row 的阶乘(factorial)。

(define (factorial n)
    (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))
(define (pascal2 row col)
    (/ (factorial row)
       (* (factorial col)
          (factorial (- row col)))))


(pascal2 512 128)
(pascal 512 128)