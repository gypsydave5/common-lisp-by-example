# Loops

```commonlisp
(loop for i from 1 to 3
   do (princ i)
      (fresh-line))
;; => 1
;;    2
;;    3
;;
;;
;;    NIL
```

- A simple loop.


```commonlisp
(loop for n from 0
   do (princ n)
     (fresh-line)
     (return))
;; => 0
;;
;;
;;    NIL
```

- Loops can go on forever (there is no `to` in this `loop`).
- We can break out of a `loop` by using `return` function.

```commonlisp
(loop for n from 0 to 5
   do
     (unless (= (mod n 2) 0)
       (princ n))
     (fresh-line))
;; => 1
;;    3
;;    5
;;
;;
;;    NIL
```

- `unless`... see later
- cf. `fresh-line` in [the Values chapter](values.html)
