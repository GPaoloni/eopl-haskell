module SList (SList(..), SNode(..)) where
import Data.Kind (Type)

type SList :: Type -> Type
data SList a = Empty | Cons (SNode a) (SList a)
  deriving (Show)

type SNode :: Type -> Type
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

-- instance Functor SNode where
--   fmap :: (a -> b) -> SNode a -> SNode b
--   fmap f (Val x) = Val $ f x
--   fmap f (SList xs) = SList $ fmap f xs

-- instance Functor SList where
--   fmap :: (a -> b) -> SList a -> SList b
--   fmap _ Empty = Empty
--   fmap f (Cons node rest) = Cons (fmap f node) (fmap f rest)

-- instance Applicative SNode where
--   pure :: a -> SNode a
--   pure = Val
--   (<*>) :: SNode (a -> b) -> SNode a -> SNode b
--   Val f <*> Val x = Val $ f x
--   Val f <*> SList xs = SList $ fmap f xs
--   SList fs <*> Val x = SList $ fmap ($ x) fs
--   SList fs <*> SList xs = SList $ fs <*> xs

-- instance Applicative SList where
--   pure :: a -> SList a
--   pure a = Cons (Val a) Empty
--   (<*>) :: SList (a -> b) -> SList a -> SList b
--   Empty <*> _ = Empty
--   _ <*> Empty = Empty
--   Cons f fs <*> xs = append (applyNode f xs) (fs <*> xs)
--     where
--       append Empty ys = ys
--       append (Cons x xs) ys = Cons x (append xs ys)

--       applyNode (Val f) xs = fmap f xs
--       applyNode (SList fs) xs = fs <*> xs

-- instance Foldable SNode where
--   foldr :: (a -> b -> b) -> b -> SNode a -> b
--   foldr f y (Val x) = f x y
--   foldr f y (SList xs) = foldr f y xs

--   foldMap :: Monoid m => (a -> m) -> SNode a -> m
--   foldMap f (Val x) = f x
--   foldMap f (SList xs) = foldMap f xs

-- instance Foldable SList where
--   foldr :: (a -> b -> b) -> b -> SList a -> b
--   foldr f y Empty = y
--   foldr f y (Cons x xs) = foldr f (foldr f y x) xs

--   foldMap :: Monoid m => (a -> m) -> SList a -> m
--   foldMap f Empty = mempty
--   foldMap f (Cons x xs) = mappend (foldMap f x) (foldMap f xs)

-- instance Traversable SNode where
--   traverse :: Applicative f => (a -> f b) -> SNode a -> f (SNode b)
--   traverse f (Val x) = Val <$> f x
--   traverse f (SList xs) = SList <$> traverse f  xs

-- instance Traversable SList where
--   traverse :: Applicative f => (a -> f b) -> SList a -> f (SList b)
--   traverse f Empty = pure Empty
--   traverse f (Cons x xs) = Cons <$> traverse f x <*> traverse f xs