;; strings
(princ (concatenate 'string "hello, " "world"))
;; => hello, world
;;
;;    "hello, world"


(princ (format nil "1 + 1 = ~a" (+ 1 1)))
;; => 1 + 1 = 2
;;
;;    "1 + 1 = 2"

(format t "~a" (/ 4.0 5.0))
;; => 0.8
;;
;;    NIL

(+ 1/2 1/4)
;; => 3/40

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
