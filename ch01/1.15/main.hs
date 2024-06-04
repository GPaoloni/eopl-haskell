import Data.Char

dupleRecursive :: Integer -> String -> [String] -> [String]
dupleRecursive 0 x los = los
dupleRecursive n x los = x : dupleRecursive (n - 1) x los

duple :: Integer -> String -> [String]
duple n x = dupleRecursive n x []

-- | 'main' runs the main program
main :: IO ()
main = do
  print ("duple(2 , `3`): " ++ show (duple 2 "3"))
  print ("duple(4 , `ha ha`): " ++ show (duple 4 "ha ha"))
  print ("duple(0 , `bla`): " ++ show (duple 0 "blah"))
