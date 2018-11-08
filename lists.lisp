(List 1 2 3)
;; => (1 2 3)

(cons 4 (list 1 2 3))
;; => (4 1 2 3)

(cons 1 ())
;; => (1)

(cons 1 (cons 2 ()))
;; => (1 2)

(first (list 7 8 9))
;; => 7

(last (list 8 5 "foobar"))
;; => ("foobar")

(first (last (list "Chris" "Alex" "Dave")))
;; => "Dave"

(third (list 1 2))
;; => NIL

(nth 3 (list 3 4 5 6))
;; => 6
