module DiffTree (DiffTree(..), toInt, zero) where

data DiffTree = One | Diff DiffTree DiffTree

toInt :: DiffTree -> Int
toInt One = 1
toInt (Diff l r) = toInt l - toInt r

zero = Diff (Diff One One) (Diff One One)

instance Eq DiffTree where 
  t1 == t2 = toInt t1 == toInt t2
