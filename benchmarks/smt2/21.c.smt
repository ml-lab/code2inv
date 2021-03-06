(set-logic LIA)

(declare-const x Int)
(declare-const x! Int)
(declare-const tmp Int)
(declare-const tmp! Int)
(declare-const n Int)
(declare-const n! Int)
(declare-const m Int)
(declare-const m! Int)

(declare-const x_33 Int)
(declare-const x_26 Int)
(declare-const x_22 Int)
(declare-const n_0 Int)
(declare-const m_34 Int)
(declare-const m_31 Int)
(declare-const m_25 Int)
(declare-const m_23 Int)

(define-fun inv-f((m Int)(n Int)(tmp Int)(x Int)) Bool
SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
)

(define-fun pre-f ((m Int)(n Int)(tmp Int)(x Int)(m_23 Int)(m_25 Int)(m_31 Int)(m_34 Int)(n_0 Int)(x_22 Int)(x_26 Int)(x_33 Int)) Bool
  (and
    (= x x_22)
    (= m m_23)
    (= x_22 1)
    (= m_23 1)
  )
)

(define-fun trans-f ((m Int)(n Int)(tmp Int)(x Int)(m! Int)(n! Int)(tmp! Int)(x! Int)(m_23 Int)(m_25 Int)(m_31 Int)(m_34 Int)(n_0 Int)(x_22 Int)(x_26 Int)(x_33 Int)) Bool
  (or
    (and
      (= m_31 m)
      (= x_33 x)
      (= x_33 x!)
      (= m_31 m!)
      (= n n_0)
      (= n! n_0)
      (= tmp tmp!)
      (= m m!)
    )
    (and
      (= m_31 m)
      (= x_33 x)
      (< x_33 n_0)
      (= m_34 m_31)
      (= x_26 (+ x_33 1))
      (= x_26 x!)
      (= m_34 m!)
      (= n n_0)
      (= n! n_0)
      (= tmp tmp!)
      (= m m!)
    )
    (and
      (= m_31 m)
      (= x_33 x)
      (< x_33 n_0)
      (= m_25 x_33)
      (= m_34 m_25)
      (= x_26 (+ x_33 1))
      (= x_26 x!)
      (= m_34 m!)
      (= n n_0)
      (= n! n_0)
      (= tmp tmp!)
    )
  )
)

(define-fun post-f ((m Int)(n Int)(tmp Int)(x Int)(m_23 Int)(m_25 Int)(m_31 Int)(m_34 Int)(n_0 Int)(x_22 Int)(x_26 Int)(x_33 Int)) Bool
  (or
    (not
      (and
        (= m m_31)
        (= n n_0)
        (= x x_33)
      )
    )
    (not
      (and
        (not (< x_33 n_0))
        (> n_0 1)
        (not (< m_31 n_0))
      )
    )
  )
)

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (pre-f m n tmp x m_23 m_25 m_31 m_34 n_0 x_22 x_26 x_33 )
    (inv-f m n tmp x )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (and
      (inv-f m n tmp x )
      (trans-f m n tmp x m! n! tmp! x! m_23 m_25 m_31 m_34 n_0 x_22 x_26 x_33 )
    )
    (inv-f m! n! tmp! x! )
  )
))

SPLIT_HERE_asdfghjklzxcvbnmqwertyuiop
(assert (not
  (=>
    (inv-f m n tmp x )
    (post-f m n tmp x m_23 m_25 m_31 m_34 n_0 x_22 x_26 x_33 )
  )
))

