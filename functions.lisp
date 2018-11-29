(defun plus (a b)
  (+ a b))
;; => PLUS

(plus 2 5)
;; => 7

(defun another-plus (a b)
  (setf a 1337)
  (+ a b))
;; => ANOTHER-PLUS

(another-plus 2 5)
;; => 1342

(defun plus (a b)
  "Plus some numbers"
  (+ a b))
;; => PLUS

(documentation 'plus 'function)
;; => "Plus some numbers"

(defun plus (a b c)
  (+ a b c))
;; => PLUS

(plus 2 5 11)
;; => 18

(plus 2 5)
;; ERROR!!!

(defun plus (a b &optional c)
  (if c (+ a b c)
      (+ a b)))
;; => PLUS

(plus 3 2 1)
;; => 6

(plus 3 2)
;; => 5

(plus 3 2 nil)
;; => 5

(defun plus (a b &optional (c 0))
  (+ a b c))
;; => PLUS

(plus 3 2)
;; => 5

(plus 3 2 1)
;; => 6

(defun say-hello (&optional (name "anon" name-supplied-p))
  (format nil "Hello ~a (~a)" name name-supplied-p))
;; => SAY-HELLO

(say-hello)
;; => "Hello anon (NIL)"
(say-hello "DAVE")
;; => "Hello DAVE (T)"
(say-hello "anon")
;; => "Hello anon (T)"

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


(defun plus (a b &rest rest)
  (+ a b (length rest)))
;; => PLUS

(plus 1 2)
;; => 3

(plus 1 2 "a" "b" "c")
;; => 6

