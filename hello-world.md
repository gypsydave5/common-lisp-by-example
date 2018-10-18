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
