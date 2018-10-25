# Global variables

```commonlisp
(defparameter *a* "intitial")
;; => *A*

(princ *a*)
;; => intitial
;;
;;    "intitial"
```

- the surrounding asterisks (or 'earmuffs') are a convention to indicate that
  the variable is DYNAMIC or SPECIAL. More later.

```commonlisp
(setf *a* "updated")
;; => "updated"

(princ *a*)
;; => updated
;;
;;    "updated"
```

- A variable can be updated by using `setf`.

```commonlisp
(setf *a* 42)
;; => 42

(princ *a*)
;; => 42
;;
;;    42
```

- Common lisp is dynamically typed so we are free to change variables to
  different types
