module Env (Env (..), emptyEnv, extendEnv, applyEnv, isEmpty) where

type Env a b = [(a, b)]

emptyEnv :: Eq a => () -> Env a b
emptyEnv () = []

extendEnv :: Eq a => Env a b -> a -> b -> Env a b
extendEnv env k v = (k, v) : env

applyEnv :: Eq a => Env a b -> a -> Maybe b
applyEnv [] var = Nothing
applyEnv ((k, v) : xs) var = if k == var then Just v else applyEnv xs var

isEmpty :: Eq a => Env a b -> Bool
isEmpty [] = True
isEmpty _ = False
