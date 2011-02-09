module newTypes where
open import NonDependentTypes

-- This module contains some new types defined while doing the homework
-- Not part of the homework! -IGNORE THIS-

-- ⊥-eliminator
⊥-elim : {whatever : Set} → ⊥ → whatever
⊥-elim ()

-- Product type

-- Record type
record Point : Set where
  field x : ℕ
        y : ℕ

mkPoint : ℕ → ℕ → Point
mkPoint a b = record{ x = a; y = b}


-- Functions
add : ℕ × ℕ → ℕ
add (zero  , n) = n
add (succ m , n) = succ (add (m , n))

pred : ℕ → ℕ
pred zero = zero
pred (succ n) = n


-- Enumerated type
data RGB : Set where
  red       : RGB
  green     : RGB
  blue      : RGB

-- Algebraic type
-- data Bool : Set where
--   true  : Bool
--   false : Bool

-- flipFunction
-- flip (x∷Bool)∷Bool =
--      case x of
--      (true)  → false
--      (false) → true


-- Recursive Type
data Vec(A : Set) : ℕ → Set where
  []  : Vec A zero
  _∷_ : forall {n} → A → Vec A n → Vec A (succ n)
