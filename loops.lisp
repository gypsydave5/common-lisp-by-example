(loop for i from 1 to 3
   do (princ i)
      (fresh-line))
;; => 1
;;    2
;;    3
;;
;;
;;    NIL

(loop for n from 0
   do (princ n)
     (fresh-line)
     (return))
;; => 0
;;
;;
;;    NIL

(loop for n from 0 to 5
   do
     (unless (= (mod n 2) 0)
       (princ n))
     (fresh-line))
;; => 1
;;    3
;;    5
;;
;;
;;    NIL;; => 1
;;    2
;;    3
;;
;;
;;    NIL



