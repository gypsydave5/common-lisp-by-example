# Lists

```commonlisp
(list 1 2 3)
;; => (1 2 3)

(cons 4 (list 1 2 3))
;; => (4 1 2 3)

(cons 1 ())
;; => (1)

(cons 1 (cons 2 ()))
;; => (1 2)
```

You can create lists with `list`

Lists internally are "cons cells". You can see how we can construct a list manually by calling `cons`. 

You can think of cons cells as a box that you can put two things in.

```commonlisp
(first (list 7 8 9))
;; => 7

(last (list 8 5 "foobar"))
;; => ("foobar")

(butlast (list 1 2 3))
;; => (1 2)

(first (last (list "Chris" "Alex" "Dave")))
;; => "Dave"

(rest (list 1 2 3))
;; => (2 3)

(third (list 1 2))
;; => NIL

(nth 3 (list 3 4 5 6))
;; => 6
```

There are convenient accessor functions.

```commonlisp
(append (list 1 2 3) (list 4 5 6))
;; => (1 2 3 4 5 6)
```

We can append lists together

```commonlisp
(butlast (list 1 2 3))
;; => (1 2)
```

Returns everything but the last element.

```commonlisp
(subseq (list "a" "b" "c" "d" "e" "f") 1 3)
;; => ("b" "c")

(subseq (list "a" "b" "c" "d" "e" "f") 3)
;; => ("d" "e" "f")

(subseq (list 1 2 3) 0 1337)
;; WILL BLOW UP WITH LEETNESS

```

- `subseq` returns the elements of a list from the first index to the last in a list (last index is exlusive).
- The last index is optional.
- It'll blow up if the list isn't long enough

```commonlisp
(length (list 1 2 3 4 5 6))
;; => 6

(reverse (list 6 5 4 3 2 1))
;; => (1 2 3 4 5 6)
```

`length` gives you the length of a list
`reverse` reverses a list
