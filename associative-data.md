Associative Data

```commonlisp
(list :chris 34 :dave 38 :nicky 34 :alex 43)
;; => (:CHRIS 34 :DAVE 38 :NICKY 34 :ALEX 43)

(getf (list :a 1 :b 2) :a)
;; => 1
```

Property list or p-list. Keys are usually written with keywords, which begin with a `:`.

```commonlisp

(append (list :x 1 :y 2) (list :bob 3 :alice 4))
;; => (:X 1 :Y 2 :BOB 3 :ALICE 4)

(append (list :a 6 :b 5) (list :b 4))
;; => (:A 6 :B 5 :B 4)

(getf (append (list :a 6 :b 5) (list :b 4)) :b)
;; => 5
```

You can add items to a p-list with `append` _because it's just
a list_. When retrieving a value by key, it will always get the
most recent entry.
