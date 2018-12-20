# Higher order functions

```commonlisp
(mapcar #'1+ '(1 2 3))
;; => (2 3 4)
```

- `mapcar` is a higher-order-function since it takes a function and applies it to each element in the list

```commonlisp
(function 1+)
;; => #<FUNCTION 1+>

#'1+
;; => #<FUNCTION 1+>
```

- Here we can see how to reference functions differently. 
  - "Sharp quote" (`#'`) is how you can reference a function
  - The function, `function` is the equivalent of sharp quote


```commonlisp
(defun plus-one (a) (+ 1 a))
;; => PLUS-ONE

(mapcar (function plus-one) '(1 2 3))
;; => (2 3 4)
```
 - Just like calling standard library functions you can also use your own.
 
 ```commonlisp
 (mapcar #'(lambda (a) (+ a 1)) '(1 2 3))
;; => (2 3 4)
```

- `lambda` allows you to define an anonymous (i.e. unnamed) function inline.
- It is valid to provide an unquoted lambda but this is perhaps inadvisable.

```commonlisp

(defun my-map (f list)
  (cond
    ((null list) nil)
    (t (cons (funcall f (first list))
             (my-map f (rest list))))))
;; => MY-MAP

(my-map (lambda (a) (+ a 1)) '(1 2 3))
;; => (2 3 4)
```

- When defining our own higher-order-functions we need to use `funcall`. This is because the first argument passed into our function is in the "value namespace" which means we cant just call it as if its a function. What `funcall` does is let us "lift" the function from the value namespace into the function namespace.
