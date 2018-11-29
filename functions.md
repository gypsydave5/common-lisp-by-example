# Functions

```commonlisp
(defun plus (a b)
  (+ a b))
;; => PLUS

(plus 2 5)
;; => 7
```

- functions are defined with the macro `defun`
- the name of a function is a symbol that's the second form in the list
- the arguments to the function are a list that is the third form in the list
- everything afterwards is the body of the function

```commonlisp
(defun another-plus (a b)
  (setf a 1337)
  (+ a b))
;; => ANOTHER-PLUS

(another-plus 2 5)
;; => 1342
```

- you can have multiple forms within the function body - there's implicitly a block around them all.
- the final form in the function body is what the function evaluates to.


```commonlisp
(defun plus (a b c)
  (+ a b c))
;; => PLUS

(plus 2 5 11)
;; => 18

(plus 2 5)
;; ERROR!!!
```

- there is no function overload. If we define a function with the same name, we just redefine existing function.
- there is no currying so if don't pass enough arguments to a function, it will just blow up

```commonlisp
(defun plus (a b &optional c)
  (if c (+ a b c)
      (+ a b)))
;; => PLUS

(plus 3 2 1)
;; => 6

(plus 3 2)
;; => 5
```
- Functions can have optional arguments denoted by a `&optional` prefix.  

```commonlisp
(plus 3 2 nil)
;; => 5
```

- If you want to call the function without the optional parameter implicitly, just pass the nil

```commonlisp
(defun plus (a b &optional (c 0))
  (+ a b c))
;; => PLUS

(plus 3 2)
;; => 5

(plus 3 2 1)
;; => 6
```

- You can provide default value for the optional argument by wrapping it in the list where the second form is the default value


```commonlisp
(defun say-hello (&optional (name "anon" name-supplied-p))
  (format nil "Hello ~a (~a)" name name-supplied-p))
;; => SAY-HELLO

(say-hello)
;; => "Hello anon (NIL)"
(say-hello "DAVE")
;; => "Hello DAVE (T)"
(say-hello "anon")
;; => "Hello anon (T)"
```

- a third item in the `&optional` argument list is a flag to tell you whether an optional argument was actually passed
- this is good to distinguish between the default argument being used and the same value being passed in.

```commonlisp
(defun plus (&optional (a 0 a-p) (b 0 b-p))
  (princ a-p)
  (princ b-p)
  (+ a b))
;; => PLUS

(plus)
;; => NILNIL
;;
;;    0

(plus 2)
;; => TNIL
;;
;;    2

(plus 2 2)
;; => TT
;;
;;    4
```

- You can have multiple optional arguments with the supplied flag bindings
- All the arguments after `&optional` become optional

```commonlisp
(defun plus (a b &rest rest)
  (+ a b (length rest)))
;; => PLUS

(plus 1 2)
;; => 3

(plus 1 2 "a" "b" "c")
;; => 6
```
- there is `&rest` prefix which collects all other arguments and puts them into a list 


```commonlisp
(defun plus (a b)
  "Plus some numbers"
  (+ a b))
;; => PLUS

(documentation 'plus 'function)
;; => "Plus some numbers"
```

- You can add handy documentation to your functions
