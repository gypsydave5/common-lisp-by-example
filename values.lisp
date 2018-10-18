;; strings
(princ (concatenate 'string "hello, " "world"))
(fresh-line)

(concatenate 'string "xx" "yy")
(fresh-line)

(format t "1 + 1 = ~a" (+ 1 1))
(fresh-line)

(format t "4.0/5.0 = ~a" (/ 4.0 5.0))
(fresh-line)

(format t "1/2 + 1/4 = ~a~%" (+ 1/2 1/4))
(fresh-line)

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
