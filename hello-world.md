---
title: Hello World
author:
  - David Wickes
  - Chris James
  - Felix Dilke
  - Nicky Chorley
date: October 18th, 2018
---
# Hello World

```lisp
(princ "hello, world")
```

- `princ` is a basic print function.
- it prints an object in a way that looks good for humans
- string literals are delimited with a `"`

```shell
$ sbcl --script hello-world.lisp

hello, world
```

- `--script` is an option to SBCL to load the file then execute

### See also
[Common Lisp Hyperspec: WRITE, PRIN1, PRINT, PPRINT, PRINC][hyperspec-print]

[hyperspec-print]:
