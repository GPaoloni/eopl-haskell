import SList

countOcurrences :: (Eq a) => a -> SList a -> Int
countOcurrences _ Empty = 0
countOcurrences x (Cons (Val y) xss)
  | x == y = 1 + countOcurrences x xss
  | otherwise = countOcurrences x xss
countOcurrences x (Cons (SList xs) xss) = countOcurrences x xs + countOcurrences x xss
a = Val 1
b = Cons (Val 1) (Cons (Val 2) Empty)
-- Test data
slist1 = Cons (Val 1) (Cons (SList (Cons (Val 2) Empty)) Empty)
-- [1, [2]]
slist2 = Cons (SList (Cons (Val 1) (Cons (Val 2) Empty))) (Cons (Val 1) Empty)

slist3 = Empty

-- Tests
test1 = countOcurrences 1 slist1 == 1
test2 = countOcurrences 1 slist2 == 2
test3 = countOcurrences 1 slist3 == 0

main :: IO ()
main = do
  print test1 -- Should print True
  print test2 -- Should print True
  print test3 -- Should print True
