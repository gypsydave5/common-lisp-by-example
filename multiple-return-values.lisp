(defun average (&rest nums)
  (let ((mean(/ (apply #'+ nums) (length nums)))
        (median (nth (floor (/ (length nums) 2)) (sort nums #'<))))
    (values mean median)))
;; => AVERAGE

(average 1.1 2 3 54 5 7 7 8)
;; => 10.8875
;;    7

(sort '(1 2 4575 3) #'<)
;; => (1 2 3 4575)

(multiple-value-list (values 1 2 4))
;; => (1 2 4)
