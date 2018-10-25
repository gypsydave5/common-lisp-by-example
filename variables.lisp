(defparameter *a* "intitial")
;; => *A*

(princ *a*)
;; => intitial
;;
;;    "intitial"

(setf *a* "updated")
;; => "updated"

(princ *a*)
;; => updated
;;
;;    "updated"

(setf *a* 42)
;; => 42

(princ *a*)
;; => 42
;;
;;    42