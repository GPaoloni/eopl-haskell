module SList (SList (..), SExp (..)) where

data SList a = Empty | Cons (SExp a) (SList a)
  deriving (Show)

data SExp a = Val a | SList (SList a)
  deriving (Show)

instance Eq a => Eq (SList a) where
  Empty == Empty = True
  Cons x xs == Cons y ys = x == y && xs == ys
  _ == _ = False

instance Eq a => Eq (SExp a) where
  Val x == Val y = x == y
  SList xs == SList ys = xs == ys
  _ == _ = False