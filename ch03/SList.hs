module SList (SList(..), SNode(..)) where

data SList a = Empty | Cons (SNode a) (SList a)
  deriving (Show)

data SNode a = Val a | SList (SList a)
  deriving (Show)

instance (Eq a) => Eq (SList a) where
  Empty == Empty = True
  Cons x xs == Cons y ys = x == y && xs == ys
  _ == _ = False

instance (Eq a) => Eq (SNode a) where
  Val x == Val y = x == y
  SList xs == SList ys = xs == ys
  _ == _ = False
