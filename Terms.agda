module Terms where
open import NonDependentTypes


-- Functions
add : ℕ × ℕ → ℕ
add (zero  , n) = n
add (succ m , n) = succ (add (m , n))

-- Terms for ⊤, _×_, R, _+_, WeekDay, function types
-- Maybe, ℕ, List and Tree
a1 = ⊥

-- Only allows one value!
-- b1 =  ⊤

-- c1 = Records

d1 : WeekDay
d1 = monday
d2 : WeekDay
d2 = friday

e1 : Maybe ℕ
e1 = nothing
e2 : Maybe WeekDay
e2 = just d1

f1 : ℕ
f1 = zero
f2 : ℕ
f2 = succ zero

g1 : List ℕ
g1 = nil
g2 : List WeekDay
g2 = d1 ∷ (d2 ∷ nil)

h1 : Tree WeekDay
h1 = empty
h2 : Tree ℕ
h2 = node (leaf zero) (node (leaf (succ zero)) (leaf zero))