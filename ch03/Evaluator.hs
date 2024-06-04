module Evaluator () where

import AST
import Env

type LetEnv = Env String Int

data Result = RInt Int | RBool Bool

toInt :: Result -> Either String Int
toInt (RInt n) = Right n
toInt exp = Left ("Can't convert expression to Int: " ++ show exp)

toBool :: Result -> Either String Bool
toBool (RBool b) = Right b
toBool exp = Left ("Can't convert expression to Bool: " ++ show exp)


-- data Expr
--   = LetInt String IntExpr IntExpr
--   | LetBool String BoolExpr BoolExpr
--   | IntExpr IntExpr
--   | BoolExpr BoolExpr
--   deriving (Show)
evalExpr :: LetEnv -> Expr -> Either String Result
evalExpr _ _ = error "not implemented"

evalPrimary :: LetEnv -> Primary -> Either String Result
evalPrimary env (Int n) = Right (RInt n)
evalPrimary env (Var var) =
  maybe (Left $ "Unbound variable: " ++ var) (Right . RInt) (applyEnv env var)
evalPrimary env (Expr exp) = evalExpr env exp

evalFactor :: LetEnv -> Factor -> Either String Result
evalFactor env (Times f p) = 
  case (evalFactor env f, evalPrimary env p) of
    (Right factor, Right primary) ->
      either (Left . show) Right $ do
        f' <- toInt factor
        p' <- toInt primary
        return (f' * p')
  -- error ""

-- evalExpr :: Expr -> LetEnv -> Either String ExprVal
-- evalExpr (Const c) _ = Right c
-- evalExpr (Diff exp1 exp2) env = do
--   e1 <- evalExpr exp1 env
--   n1 <- toInt e1
--   e2 <- evalExpr exp2 env
--   n2 <- toInt e2
--   Right $ Num $ n1 - n2
-- evalExpr (IsZero exp) env = do
--   e1 <- evalExpr exp env
--   n1 <- toInt e1
--   Right $ Bool $ n1 == 0
-- evalExpr (If pred exp1 exp2) env = do
--   ePred <- evalExpr pred env
--   b <- toBool ePred
--   if b then evalExpr exp1 env else evalExpr exp2 env
-- evalExpr (Var var) env =
--   maybe (Left $ "Unbound variable: " ++ var) (Right . Num) (applyEnv env var)
-- evalExpr (Let var exp body) env = do
--   e1 <- evalExpr exp env
--   n1 <- toInt e1
--   evalExpr body (extendEnv env var n1)