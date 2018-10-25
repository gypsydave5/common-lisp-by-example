# Constants

```commonlisp
(defconstant +x+ 112)
;; => +X+
(princ +x+)
;; => 112
;;
;;    112
(setf +x+ 2334) ;; => BOOM!
```

- you  define constants with `defconstant` and a `+` sign around the name
- you can't reassign the constanst with `setf`, it throws an error
