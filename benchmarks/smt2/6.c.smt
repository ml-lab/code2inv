(set-logic LIA)

(declare-const z Int)
(declare-const z! Int)
(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)
(declare-const size Int)
(declare-const size! Int)

(declare-const z_0 Int)
(declare-const y_28 Int)
(declare-const y_22 Int)
(declare-const y_0 Int)
(declare-const x_27 Int)
(declare-const x_21 Int)
(declare-const x_20 Int)
(declare-const size_0 Int)

(define-fun inv-f((size Int)(x Int)(y Int)(z Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((size Int)(x Int)(y Int)(z Int)(size_0 Int)(x_20 Int)(x_21 Int)(x_27 Int)(y_0 Int)(y_22 Int)(y_28 Int)(z_0 Int)) Bool
  (and
    (= x x_20)
    (= x_20 0)
  )
)

(define-fun trans-f ((size Int)(x Int)(y Int)(z Int)(size! Int)(x! Int)(y! Int)(z! Int)(size_0 Int)(x_20 Int)(x_21 Int)(x_27 Int)(y_0 Int)(y_22 Int)(y_28 Int)(z_0 Int)) Bool
  (or
    (and
      (= x_27 x)
      (= y_28 y)
      (= y_28 y!)
      (= x_27 x!)
      (= size size_0)
      (= size! size_0)
      (= z z!)
      (= y y!)
    )
    (and
      (= x_27 x)
      (= y_28 y)
      (< x_27 size_0)
      (= x_21 (+ x_27 1))
      (not (<= z_0 y_28))
      (= y_28 y!)
      (= x_21 x!)
      (= size size_0)
      (= size! size_0)
      (= z z_0)
      (= z! z_0)
    )
    (and
      (= x_27 x)
      (= y_28 y)
      (< x_27 size_0)
      (= x_21 (+ x_27 1))
      (<= z_0 y_28)
      (= y_22 z_0)
      (= y_22 y!)
      (= x_21 x!)
      (= size size_0)
      (= size! size_0)
      (= z z_0)
      (= z! z_0)
    )
  )
)

(define-fun post-f ((size Int)(x Int)(y Int)(z Int)(size_0 Int)(x_20 Int)(x_21 Int)(x_27 Int)(y_0 Int)(y_22 Int)(y_28 Int)(z_0 Int)) Bool
  (or
    (not
      (and
        (= size size_0)
        (= x x_27)
        (= y y_28)
        (= z z_0)
      )
    )
    (not
      (and
        (not (< x_27 size_0))
        (> size_0 0)
        (not (>= z_0 y_28))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f size x y z size_0 x_20 x_21 x_27 y_0 y_22 y_28 z_0 )
    (inv-f size x y z )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f size x y z )
      (trans-f size x y z size! x! y! z! size_0 x_20 x_21 x_27 y_0 y_22 y_28 z_0 )
    )
    (inv-f size! x! y! z! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f size x y z )
    (post-f size x y z size_0 x_20 x_21 x_27 y_0 y_22 y_28 z_0 )
  )
))

