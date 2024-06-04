import Data.Tuple (Solo (Solo))

down :: [a] -> [Solo a]
down = map Solo

main :: IO ()
main =
  print (down [1, 2, 3])
