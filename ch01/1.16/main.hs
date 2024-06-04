type Pair a b = (a, b)

invert :: [Pair a b] -> [Pair b a]
invert = map (\p -> (snd p, fst p))

main :: IO ()
main =
  print ("invert([('a', 1), ('a', 2), (1, 'b'), (2, 'b')]): " ++ show (invert [('a', '1'), ('a', '2'), ('1', 'b'), ('2', 'b')]))
