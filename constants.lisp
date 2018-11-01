(defconstant +x+ 112)
;; => +X+
(princ +x+)
;; => 112
;;
;;    112
(setf +x+ 2334) ;; => BOOM!

