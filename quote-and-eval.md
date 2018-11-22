# Quote and Eval

```commonlisp
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
```

`quote` returns an expression as data. It prevents evaluation.
`eval` allows us to evaluate such data as an expression.

```commonlisp
(list 1 2 3)
;; => (1 2 3)

(quote (1 2 3))
;; => (1 2 3)

'(1 2 3)
;; => (1 2 3)
```

`quote` provides an alternative way to create a list.
We can also use `'` character to quote. This is an idiomatic way to create lists.

```commonlisp
(setf my-list (quote (1 2 3)))
;; => (1 2 3)

(car my-list)
;; => 1
```

It's just a normal list!


```commonlisp
(quote foo)
;; => FOO

'foo
;; => FOO

'(foo bar)
;; => (FOO BAR)

'((quote foo) (quote bar))
;; => ('FOO 'BAR)
```

As an alternative to using strings it's common to use quoted symbols.

```commonlisp
(list (list 1) (list 2) (list 3))
;; => ((1) (2) (3))
'((1) (2) (3))
;; => ((1) (2) (3))
```

- quoted lists make it easier to read (and write) nested lists

```commonlisp
(list (list (+ 1 1)) (list (+ 2 2)) (list (+ 3 3)))
;; => ((2) (4) (6))

'(((+ 1 1)) ((+ 2 2)) ((+ 3 3)))
;; => (((+ 1 1)) ((+ 2 2)) ((+ 3 3)))
```

- BUT nothing is evaluated inside a quoted list - it's all just data!

```commonlisp
`((,(+ 1 1)) (,(+ 2 2)) (,(+ 3 3)))
;; => ((2) (4) (6))
```

- BUT you can use a _quasiquoted_ list using the `` ` - the _backtick_ character.
- Inside a quasiquoted list you can have evaluation toggled back on for a form by using the `,` character. 
- It's QUASI!
