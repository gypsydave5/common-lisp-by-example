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

(rest (list 1 2 3))
;; => (2 3)

(third (list 1 2))
;; => NIL

(nth 3 (list 3 4 5 6))
;; => 6

(append (list 1 2 3) (list 4 5 6))
;; => (1 2 3 4 5 6)

(butlast (list 1 2 3))
;; => (1 2)

(subseq (list "a" "b" "c" "d" "e" "f") 1 3)
;; => ("b" "c")

(subseq (list "a" "b" "c" "d" "e" "f") 3)
;; => ("d" "e" "f")

(subseq (list 1 2 3) 0 1337)
;; WILL BLOW UP WITH LEETNESS

(length (list 1 2 3 4 5 6))
;; => 6

(reverse (list 6 5 4 3 2 1))
;; => (1 2 3 4 5 6)






;; ELITE LEVEL

(car (list 1 2 3))
;; => 1

(cdr (list 1 2 3))
;; => (2 3)

(caddar (list (list 1 2 3 4) (list 5 6 7 8)))
;; => 3

(cadadr (list (list 1 2 3 4) (list 5 6 7 8)))
;; => 6
