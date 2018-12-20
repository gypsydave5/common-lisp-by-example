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
(multiple-value-bind (a b c) (values 1 2 3)
  (format nil "(a b c) - easy as ~a ~a ~a" a b c))
  
;; => "(a b c) - easy as 1 2 3"
```

- `multiple-value-bind` creates a lexical scope where the multiple values returned by a form are bound to variables you supply - kinda like `let`.
