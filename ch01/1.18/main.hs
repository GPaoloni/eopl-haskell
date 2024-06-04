import SList

swapperValExpr :: (Eq a) => a -> a -> a -> SExp a
swapperValExpr a b x = if x == a then Val b else Val x

swapper :: (Eq a) => a -> a -> SList a -> SList a
swapper _ _ Empty = Empty
swapper a b (Cons expr xs) = case expr of
  Val x -> Cons (swapperValExpr a b x) (swapper a b xs)
  SList x -> Cons (SList (swapper a b x)) (swapper a b xs)

-- Test data
slist1 :: SList Int
slist1 = Cons (Val 1) (Cons (SList (Cons (Val 2) Empty)) Empty)

slist2 :: SList Int
slist2 = Cons (SList (Cons (Val 1) (Cons (Val 2) Empty))) (Cons (Val 1) Empty)

slist3 :: SList Int
slist3 = Empty

-- Tests
test1 = swapper 1 3 slist1 == Cons (Val 3) (Cons (SList (Cons (Val 2) Empty)) Empty)

test2 = swapper 1 3 slist2 == Cons (SList (Cons (Val 3) (Cons (Val 2) Empty))) (Cons (Val 3) Empty)

test3 = swapper 1 3 slist3 == Empty

main :: IO ()
main = do
  print test1 -- Should print True
  print test2 -- Should print True
  print test3 -- Should print True