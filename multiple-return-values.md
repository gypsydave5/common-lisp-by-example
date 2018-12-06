#Multiple Return Types

To return multiple things use `values`!
```commonlisp
(defun average (&rest nums)
  (let ((mean(/ (apply #'+ nums) (length nums)))
        (median (nth (floor (/ (length nums) 2)) (sort nums #'<))))
    (values mean median)))
;; => AVERAGE

(average 1.1 2 3 54 5 7 7 8)
;; => 10.8875
;;    7
```

return multiple values as a list
```commonlisp
(multiple-value-list (values 1 2 4))
;; => (1 2 4)
```

```commonlisp
(defun median (&rest nums)
  (multiple-value-bind (_ median) (apply #'average nums)
    median))
;; => MEDIAN

(median 1 2 3 4 5)
;; => 3
```

- `multiple-value-bind` creates a lexical scope where the multiple values returned by a form are bound to variables you supply - kinda like `let`.
- here we ignore the first value (assigning it to `_`), and only use the second, `median`
