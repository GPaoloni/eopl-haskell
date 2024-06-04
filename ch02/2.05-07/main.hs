type Env a = [(String, a)]

emptyEnv :: () -> Env a
emptyEnv () = []

extendEnv :: Env a -> String -> a -> Env a
extendEnv env k v = (k, v) : env

applyEnv :: Env a -> String -> Maybe a
applyEnv [] var = Nothing
applyEnv ((k, v) : xs) var = if k == var then Just v else applyEnv xs var

isEmpty :: Env a -> Bool
isEmpty xs = case xs of 
  [] -> True
  _ -> False

main = do
  print "ok"