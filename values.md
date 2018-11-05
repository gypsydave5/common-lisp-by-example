# Values

```lisp
(princ (concatenate 'string "hello, " "world"))
;; => hello, world
;;
;;    "hello, world"
```

- `concatenate` can be used with different types, we need to specify the output
type with the `'string` symbol.

```lisp
(princ (format nil "1 + 1 = ~a" (+ 1 1)))
;; => 1 + 1 = 2
;;
;;    "1 + 1 = 2"
```

- `format` is a function for creating formatted strings
- `nil` tells `format` to evaluate to the string it creates
- `~a` is a _format directive_. It prints the next argument
  to `format` _a_esthetically.
- All `format` directives start with `~`

```lisp
(format t "~a" (/ 4.0 5.0))
;; => 0.8
;;
;;    NIL
```

- floating point numbers have a `.` in them
- when the second argument to `format` is `t` it prints the string to standard
  out
- in this case `format` evaluates to `nil`

```lisp
(+ 1/2 1/4)
;; => 3/4
```
- Lisp has rational numbers as a separate type - they are written with a `/`
  between the numerator and the denomenator.

```lisp
(and t nil)
;; => NIL

(and "ada" 5 "alonzo")
;; => "alonzo"

(and)
;; => T

(or t nil)
;; => T

(or nil "lucy" nil)
;; => "barry"

(or)
;; => NIL

(not nil)
;; => T

(not "amy")
;; => NIL
```

- There is no true or false - only `t` and `nil`
- `t` and `nil` are special symbols; they always evaluate to themselves
- anything that's not `nil` is treated as true!
- `and` and `or` can take multiple values
- `and` returns the first `nil` or the last non-`nil` argument
- `or` returns the first non-`nil` argument
- `not` will return `nil` for all non-`nil` values, and `t` for `nil`

### See also

[Common Lisp Hyperspec: FORMAT][hs-format]
[Common Lisp Hyperspec: Formatted output][hs-format-output]
[Practical Common Lisp: A Few Format Recipes](http://www.gigamonkeys.com/book/a-few-format-recipes.html)

[hs-format]: http://www.lispworks.com/documentation/lw50/CLHS/Body/f_format.htm
[hs-format-output]: http://www.lispworks.com/documentation/lw50/CLHS/Body/22_c.htm
