---
title: Hello World
---
# Hello World

```lisp
(princ "hello, world")
;; => hello, world
;;
;;    "hello, world"
```

- Functions in Common Lisp appear at the beginning of a pair of parentheses.
- The rest of the items up to the end of the parentheses are the arguments to
  the function.
- `princ` is a basic print function.
- It prints an object in a way that looks good for humans.
- String literals are delimited with a `"`.

### See also
[Common Lisp Hyperspec: WRITE, PRIN1, PRINT, PPRINT, PRINC][hyperspec-print]

[hyperspec-print]: http://www.lispworks.com/documentation/HyperSpec/Body/f_wr_pr.htm
