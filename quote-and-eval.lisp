(quote (+ 1 2))
;; => (+ 1 2)

(quote nil)
;; => NIL

(quote blah)
;; => BLAH

(eval (quote (+ 1 2)))
;; => 3

(eval (quote blah))
;; ERROR!

(eval 1)
;; => 1

(eval nil)
;; => NIL

(eval T)
;; => T

(eval :blah)
;; => :BLAH

(eval (quote T))
;; => T

(list 1 2 3)
;; => (1 2 3)

(quote (1 2 3))
;; => (1 2 3)

'(1 2 3)
;; => (1 2 3)

(setf my-list (quote (1 2 3)))
;; => (1 2 3)

(car my-list)
;; => 1

(quote foo)
;; => FOO

'foo
;; => FOO

'(foo bar)
;; => (FOO BAR)

'((quote foo) (quote bar))
;; => ('FOO 'BAR)

(list (list 1) (list 2) (list 3))
;; => ((1) (2) (3))
'((1) (2) (3))
;; => ((1) (2) (3))

(list (list (+ 1 1)) (list (+ 2 2)) (list (+ 3 3)))
;; => ((2) (4) (6))

'(((+ 1 1)) ((+ 2 2)) ((+ 3 3)))
;; => (((+ 1 1)) ((+ 2 2)) ((+ 3 3)))

`((,(+ 1 1)) (,(+ 2 2)) (,(+ 3 3)))
;; => ((2) (4) (6) MY-LIST)

(macroexpand)
