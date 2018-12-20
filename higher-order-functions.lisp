(mapcar #'1+ '(1 2 3))
;; => (2 3 4)

(mapcar (function 1+) '(1 2 3))
;; => (2 3 4)

(function 1+)
;; => #<FUNCTION 1+>

#'1+
;; => #<FUNCTION 1+>

(defun plus-one (a) (+ 1 a))
;; => PLUS-ONE

(mapcar (function plus-one) '(1 2 3))
;; => (2 3 4)

(mapcar (lambda (a) (+ a 1))
        ;; => #<FUNCTION (LAMBDA (A)) {1002BFCD4B}>
        '(1 2 3))
;; => (2 3 4)

(defvar awesome-lambda #'(lambda (a) (+ a 1)))
;; => AWESOME-LAMBDA

(funcall awesome-lambda 1)
;; => 2

(mapcar (function (lambda (a) (+ a 1))) '(1 2 3))
;; => (2 3 4)

(defun my-map (f list)
  (cond
    ((null list) nil)
    (t (cons (funcall f (first list))
             (my-map f (rest list))))))
;; => MY-MAP

(my-map (lambda (a) (+ a 1)) '(1 2 3))
;; => (2 3 4)



