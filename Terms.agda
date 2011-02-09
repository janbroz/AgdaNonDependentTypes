module Terms where
open import NonDependentTypes


--⊥-eliminator
⊥-elim : {whatever : Set} → ⊥ → whatever
⊥-elim ()

--Product type

--Record type
record Point : Set where
  field x : ℕ
        y : ℕ

mkPoint : ℕ → ℕ → Point
mkPoint a b = record{ x = a; y = b}


--functions
add : ℕ × ℕ → ℕ
add (zero  , n) = n
add (succ m , n) = succ (add (m , n))

pred : ℕ → ℕ
pred zero = zero
pred (succ n) = n

 
--enumerated type
data RGB : Set where
  red       : RGB
  green     : RGB
  blue      : RGB

--Algebraic type
--data Bool : Set where
--  true  : Bool
--  false : Bool

--flipFunction
--flip (x∷Bool)∷Bool =
--     case x of
--     (true)  → false
--     (false) → true


--Recursive Type
data Vec(A : Set) : ℕ → Set where
  []  : Vec A zero
  _∷_ : forall {n} → A → Vec A n → Vec A (succ n)


--terms for ⊤, _×_, R, _+_, WeekDay, function types
--Maybe, ℕ, List and Tree
a1 = ⊥

b1 =  ⊤

--c1 = Records

d1 : RGB
d1 = red
d2 : RGB
d2 = blue    

e1 = nothing
e2 = just d1

f1 : ℕ
f1 = zero
f2 : ℕ
f2 = succ zero

g1 = nil
g2 = d1 ∷ (d2 ∷ nil)

h1 = empty
h2 = node (leaf zero) (node (leaf (succ zero)) (leaf zero))