(if (evenp 7)
    (format t "7 is even~%")
    (format t "7 is odd~%"))
;; => 7 is odd
;;
;;
;;    NIL

(when (= 0 (mod 8 4))
  (format t "8 is divisible by 4~%")
  (princ "Not, but really!"))
;; => 8 is divisible by 4
;;    Not, but really!
;;
;;    "Not, but really!"

(cond ((< 9 0)
       (format t "9 is negative"))
      ((< 9 10)
       (format t "9 has 1 digit"))
      (t
       (format t "9 has multiple digits")))
;; => 9 has 1 digit
;;
;;    NIL

(defun what-am-i (i)
  (cond ((stringp i)
         "I am a string!!")
        ((integerp i)
         "I am an integer!!")
        ((listp i)
         "I am a list!!")))
;; => WHAT-AM-I

(what-am-i 1)
;; => "I am an integer!!"
(what-am-i "blah-blah")
;; => "I am a string!!"
(what-am-i (list 1 2 3))
;; => "I am a list!!"
(what-am-i 1/2)
;; => NIL
