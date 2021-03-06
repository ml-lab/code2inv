(set-logic LIA)

(declare-const y Int)
(declare-const y! Int)
(declare-const x Int)
(declare-const x! Int)

(declare-const y_22 Int)
(declare-const y_16 Int)
(declare-const y_14 Int)
(declare-const x_21 Int)
(declare-const x_15 Int)
(declare-const x_13 Int)

(define-fun inv-f((x Int)(y Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((x Int)(y Int)(x_13 Int)(x_15 Int)(x_21 Int)(y_14 Int)(y_16 Int)(y_22 Int)) Bool
  (and
    (= y y_14)
    (= x x_13)
    (= x_13 1)
    (= y_14 0)
  )
)

(define-fun trans-f ((x Int)(y Int)(x! Int)(y! Int)(x_13 Int)(x_15 Int)(x_21 Int)(y_14 Int)(y_16 Int)(y_22 Int)) Bool
  (or
    (and
      (= x_21 x)
      (= y_22 y)
      (= y_22 y!)
      (= x_21 x!)
      (= x x!)
    )
    (and
      (= x_21 x)
      (= y_22 y)
      (< y_22 100000)
      (= x_15 (+ x_21 y_22))
      (= y_16 (+ y_22 1))
      (= y_16 y!)
      (= x_15 x!)
    )
  )
)

(define-fun post-f ((x Int)(y Int)(x_13 Int)(x_15 Int)(x_21 Int)(y_14 Int)(y_16 Int)(y_22 Int)) Bool
  (or
    (not
      (and
        (= x x_21)
        (= y y_22)
      )
    )
    (not
      (and
        (not (< y_22 100000))
        (not (>= x_21 y_22))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f x y x_13 x_15 x_21 y_14 y_16 y_22 )
    (inv-f x y )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f x y )
      (trans-f x y x! y! x_13 x_15 x_21 y_14 y_16 y_22 )
    )
    (inv-f x! y! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f x y )
    (post-f x y x_13 x_15 x_21 y_14 y_16 y_22 )
  )
))

