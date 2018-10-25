# Values

```lisp
(princ (concatenate 'string "hello, " "world"))
(fresh-line)
```

- `concatenate` can be used with different types, we need to specify the output
type with the `'string` symbol.

- `fresh-line` adds a new line to the output stream. If one has already been
added, it will do nothing.

```lisp
(princ (format nil "1 + 1 = ~a" (+ 1 1)))
(fresh-line)
```

- `format` is a function for creating formatted output
- `nil` tells `format` to return the string it creates
- `~a` is a _format directive_. It prints the next argument
  to `format` _a_esthetically.
- All `format` directives start with `~`

```lisp
(format t "4.0/5.0 = ~a" (/ 4.0 5.0))
(fresh-line)
``

- floating point numbers have a `.` in them
- `t` as the second argument to `format` tells it to send the string to stdout.

```lisp
(format t "1/2 + 1/4 = ~a~%"
          (+ 1/2 1/4))
```
- Lisp has rational numbers as a separate type - they are written with a `/`
  between the numerator and the denomenator.
- `~%` is another `format` directice. It creates a new line.

```lisp
(format
        "(and t nil) =  ~s~%~
         (and \"bob\" 5 'joe) = ~s~%~
         (and) = ~s~%~
         (or t nil) = ~s~%~
         (or nil \"barry\" nil) = ~s~%~
         (or) = ~s~%~
         (not nil) = ~s~%"
        (and t nil)
        (and "bob" 5 'joe)
        (and)
        (or t nil)
        (or nil "barry" nil)
        (or)
        (not nil))
```

- There is no true or false - only `t` and `nil`
- `and` and `or` can take multiple values
- anything that's not `nil` is `t`!
- `and` and `or` return the 'last' value in their argument list
- `not` will return `nil` for anything and `t` for `nil`
- `~<NEWLINE>` ignores the newline and all following whitespace
- `~s` is a close relative of `~a`, but prints the argument in its Lisp
  representation (i.e. with quotes for a string)

```bash
$ sbcl --script values.lisp

hello, world
1 + 1 = 2
4.0/5.0 = 0.8
1/2 + 1/4 = 3/4
(and t nil) =  NIL
(and "bob" 5 'joe) = JOE
(and) = T
(or t nil) = T
(or nil "barry" nil) = "barry"
(or) = NIL
(not nil) = T
```

### See also
[Common Lisp Hyperspec: FORMAT][hs-format]
[Common Lisp Hyperspec: Formatted output][hs-format-output]
[Practical Common Lisp: A Few Format Recipes](http://www.gigamonkeys.com/book/a-few-format-recipes.html)

[hs-format]: http://www.lispworks.com/documentation/lw50/CLHS/Body/f_format.htm
[hs-format-output]: http://www.lispworks.com/documentation/lw50/CLHS/Body/22_c.htm