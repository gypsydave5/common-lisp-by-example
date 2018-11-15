(list :chris 34 :dave 38 :nicky 34 :alex 43)
;; => (:CHRIS 34 :DAVE 38 :NICKY 34 :ALEX 43)

(getf (list :a 1 :b 2) :a)
;; => 1

(append (list :x 1 :y 2) (list :bob 3 :alice 4))
;; => (:X 1 :Y 2 :BOB 3 :ALICE 4)

(append (list :a 6 :b 5) (list :b 4))
;; => (:A 6 :B 5 :B 4)

(getf (append (list :a 6 :b 5) (list :b 4)) :b)
;; => 5


;;; A-List (associative list)

(list (cons :a 1) (cons :b 2))
;; => ((:A . 1) (:B . 2))

(assoc :sally (list (cons :bob 5) (cons :sally 7)))
;; => (:SALLY . 7)

(cdr (assoc :sally (list (cons :bob 5) (cons :sally 7))))
;; => 7

(assoc :dave (list (cons :bob 5) (cons :sally 7)))
;; => NIL
(assoc :dave (list (cons :dave 1) (cons :dave 2) (cons :dave 3)))
;; => (:DAVE . 1)

(acons :dave 1 ())
;; => ((:DAVE . 1))

(append (list (cons :butts "nice")) ())
;; => ((:BUTTS . "nice"))

(cons (cons :butts "nice") nil)
;; => ((:BUTTS . "nice"))

(rassoc 2 (list (cons :butts 2)))
;; => (:BUTTS . 2)

(rassoc "nice" (list (cons :butts "nice")))
;; => NIL

(rassoc "nice" (list (cons :butts "nice")) :test #'equal)
;; => ((:BUTTS . "nice")

(defparameter *a-table* (make-hash-table))
;; => *A-TABLE*

(gethash :dave *a-table*)
;; => NIL
;;    NIL

(setf (gethash :dave *a-table*) 45)
;; => 45

(gethash :dave *a-table*)
;; => 45
;;    T

(gethash :bobine *a-table* 4)
;; => 4
;;    NIL

(remhash :dave *a-table*)
;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL


;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL


;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL


;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL


;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL


;; => NIL

(gethash :dave *a-table*)
;; => NIL
;;    NIL

(remhash :blah *a-table*)
;; => NIL

(setf (gethash :dave *a-table*) 45)
;; => 45

(remhash :dave *a-table*)
;; => T
