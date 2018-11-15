# Associative Data

### Property Lists

```commonlisp
(list :chris 34 :dave 38 :nicky 34 :alex 43)
;; => (:CHRIS 34 :DAVE 38 :NICKY 34 :ALEX 43)

(getf (list :a 1 :b 2) :a)
;; => 1
```

- Property lists are also known as 'plists'.
- Keys are usually written with _keywords_, which begin with a `:`.

```commonlisp

(append (list :x 1 :y 2) (list :bob 3 :alice 4))
;; => (:X 1 :Y 2 :BOB 3 :ALICE 4)

(append (list :a 6 :b 5) (list :b 4))
;; => (:A 6 :B 5 :B 4)

(getf (append (list :a 6 :b 5) (list :b 4)) :b)
;; => 5
```

- You can add items to a plist with `append` _because it's just a list_.
- When retrieving a value by key, it will always get the most recent entry.

### Association Lists

Association Lists - or alists - are similar but built out of lists of where each item is
a `cons` cell.

```commonlisp
(list (cons :a 1) (cons :b 2))
;; => ((:A . 1) (:B . 2))

(assoc :sally (list (cons :bob 5) (cons :sally 7)))
;; => (:SALLY . 7)

(cdr (assoc :sally (list (cons :bob 5) (cons :sally 7))))
;; => 7

(assoc :dave (list (cons :bob 5) (cons :sally 7)))
;; => NIL
```

- `assoc` returns the `cons` cell where the `car` is equal to the value you give it.

```commonlisp
(assoc :dave (list (cons :dave 1) (cons :dave 2) (cons :dave 3)))
;; => (:DAVE . 1)
```

- The first `cons` cell is always returned, just as with plist.

```commonlisp
(acons :dave 1 ())
;; => ((:DAVE . 1))
```

- `acons` is a convenience function for appending to an alist.

```commonlisp
(append (list (cons :butts "nice")) ())
;; => ((:BUTTS . "nice"))
```

- We can also use `append` to build alists if we like

```commonlisp
(cons (cons :butts "nice") nil)
;; => ((:BUTTS . "nice"))
```

- Or `cons`
- Because _they're just lists_

```commonlisp
(rassoc 2 (list (cons :butts 2)))
;; => (:BUTTS . 2)
```

- `rassoc` lets us find cons cells by value (or `cdr`)

```commonlisp
(rassoc "nice" (list (cons :butts "nice")))
;; => NIL
```

- Why doesn't this work?
- `rassoc` (and `assoc`) use `eq` to compare values
- `eq` compares values by _object_ equality - whether they are the same object
- Strings are not guaranteed to be the same object

```commonlisp
(rassoc "nice" (list (cons :butts "nice")) :test #'equal)
;; => (:BUTTS . "nice")
```

- We can fix this by using the `equal` function to check for equality
- The function is passed to `rassoc` prefixed by the `:test` keyword
- This is called a _keyword argument_

### Hashtable

```commonlisp
(defparameter *a-table* (make-hash-table))
;; => *A-TABLE*

(gethash :dave *a-table*)
;; => NIL
;;    NIL
```

- `make-hash-table` makes a hashtable
- `gethash` gets values from a hashtable

```commonlisp
(setf (gethash :dave *a-table*) 45)
;; => 45
```

- `setf` to adds an entry to a hash table.
- `setf` is a macro
- The first argument is a _place_ (in this case, a place in the hash table).
- The form `gethash` isn't evaluated by `setf`. It is being used as a place by
  the `setf` macro.

```commonlisp
(gethash :dave *a-table*)
;; => 45
;;    T
```

- `gethash` returns two values: the first is the value associated with the key
- The second is a boolean indicating whether the key was in the hash table

```commonlisp
(remhash :dave *a-table*)
;; => T
```

- `remhash` removes an entry from the hashtable.
- It returns `t` if the key was present.
- Otherwise it returns `nil`

```commonlisp
(gethash :bobine *a-table* 4)
;; => 4
;;    NIL
```

You can provide `gethash` with a default value. This value is returned if the key is not
present in the hashtable.

### See also
[Common Lisp Hyperspec: MAKE-HASH-TABLE](http://www.lispworks.com/documentation/lw50/CLHS/Body/f_mk_has.htm)
[Common Lisp Hyperspec: SETF, PSETF](http://www.lispworks.com/documentation/lw50/CLHS/Body/m_setf_.htm)
[Practical Common Lisp: Collections](http://gigamonkeys.com/book/collections.html)
