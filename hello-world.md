# Hello World


```lisp
(princ "hello, world")
```

# Values

With `concatenate` it can be used with different types of things, we need to
specify the output type with the `'string` symbol.

```lisp
(princ (concatenate 'string "hello," "world"))
```

```lisp
(format t "1 + 1 = ~a" (+ 1 1))
```

Format and output an aesthetic representation of a sum

"a" is for aesthetic

The 't' tells format to output to stdout

```lisp
(fresh-line)

(format t "4.0/5.0 = ~a" (/ 4.0 5.0))
```

`fresh-line` adds a new line to the output stream. If one has already been
added, it will do nothing.


```lisp
(format t "1/2 + 1/4 = ~a~%"
          (+ 1/2 1/4))
```

- Lisp has rationals as a type
- `~%` creates a new line

```lisp
(format t
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
- `~s` is a relative of `~a`, but prints the argument in its Lisp representation
  (i.e. with quotes for a string)
