import GHC.TypeLits (Nat)
import SList

listSet :: SList a -> Int -> SExp a -> SList a
listSet Empty _ _ = Empty
-- listSet (Cons x xs) 0 y = Cons y xs
listSet (Cons x xs) n y
  | n < 0 = Empty
  | n == 0 = Cons y xs
  | otherwise = Cons x (listSet xs (n - 1) y)

-- Test data
slist1 = Cons (Val 1) (Cons (SList (Cons (Val 2) Empty)) Empty)

slist2 = Cons (SList (Cons (Val 1) (Cons (Val 2) Empty))) (Cons (Val 1) Empty)

slist3 = Empty

-- Tests
test1 = listSet slist1 0 (Val 3) == Cons (Val 3) (Cons (SList (Cons (Val 2) Empty)) Empty)

test2 = listSet slist1 1 (Val 3) == Cons (Val 1) (Cons (Val 3) Empty)

test3 = listSet slist2 0 (Val 3) == Cons (Val 3) (Cons (Val 1) Empty)

test4 = listSet slist2 2 (Val 3) == slist2

test5 = listSet slist3 0 (Val 3) == Empty

main :: IO ()
main = do
  print test1 -- Should print True
  print test2 -- Should print True
  print test3 -- Should print True
  print test4 -- Should print True
  print test5 -- Should print True
