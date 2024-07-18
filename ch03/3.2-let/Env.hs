module Env (Env, emptyEnv, extendEnv, extendEnvStar, applyEnv, isEmpty) where

type Env a b = [(a, b)]

emptyEnv :: (Eq a) => () -> Env a b
emptyEnv () = []

extendEnv :: (Eq a) => a -> b -> Env a b -> Env a b
extendEnv k v env = (k, v) : env

extendEnvStar :: (Eq a) => [(a, b)] -> Env a b -> Env a b
extendEnvStar xs env = foldr (:) env xs

applyEnv :: (Eq a) => Env a b -> a -> Maybe b
applyEnv [] _ = Nothing
applyEnv ((k, v) : xs) var = if k == var then Just v else applyEnv xs var

isEmpty :: (Eq a) => Env a b -> Bool
isEmpty [] = True
isEmpty _ = False
