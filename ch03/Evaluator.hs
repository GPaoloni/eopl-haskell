module Evaluator (evalExpr) where

import AST
import Control.Monad
import Env

type LetEnv = Env String Int

data Result = RInt Int | RBool Bool
  deriving (Show)

toInt :: Result -> Either String Int
toInt (RInt n) = Right n
toInt r = Left ("Can't convert expression to Int: " ++ show r)

toBool :: Result -> Either String Bool
toBool (RBool b) = Right b
toBool r = Left ("Can't convert expression to Bool: " ++ show r)

evalExpr :: LetEnv -> Expr -> Either String Result
evalExpr env (IntExpr expr) = evalIntExpr env expr
evalExpr _ _ = error "not implemented"

evalIntExpr :: LetEnv -> IntExpr -> Either String Result
evalIntExpr env (Term term) = evalTerm env term
evalIntExpr _ _ = error "not implemented"

-- data IntExpr
--   = Term Term
--   | IfIntExpr BoolExpr IntExpr IntExpr
--   deriving (Show)

evalTerm :: LetEnv -> Term -> Either String Result
evalTerm env (Diff t f) =
  case (evalTerm env t, evalFactor env f) of
    (Right term, Right factor) ->
      either (Left . show) Right $ do
        f' <- toInt term
        p' <- toInt factor
        Right $ RInt (f' - p')
    (Left e, _) -> Left e
    (_, Left e) -> Left e
evalTerm env (Plus t f) =
  case (evalTerm env t, evalFactor env f) of
    (Right term, Right factor) ->
      either (Left . show) Right $ do
        f' <- toInt term
        p' <- toInt factor
        Right $ RInt (f' + p')
    (Left e, _) -> Left e
    (_, Left e) -> Left e
evalTerm env (Factor f) = evalFactor env f

evalFactor :: LetEnv -> Factor -> Either String Result
evalFactor env (Times f p) =
  case (evalFactor env f, evalPrimary env p) of
    (Right factor, Right primary) ->
      either (Left . show) Right $ do
        f' <- toInt factor
        p' <- toInt primary
        Right $ RInt (f' * p')
    (Left e, _) -> Left e
    (_, Left e) -> Left e
evalFactor env (Div f p) =
  case (evalFactor env f, evalPrimary env p) of
    (Right factor, Right primary) ->
      either (Left . show) Right $ do
        f' <- toInt factor
        p' <- toInt primary
        when (p' == 0) (Left "types of cons and alt should match")
        Right $ RInt (div f' p')
    (Left e, _) -> Left e
    (_, Left e) -> Left e
evalFactor env (Primary p) = evalPrimary env p

evalPrimary :: LetEnv -> Primary -> Either String Result
evalPrimary env (Int n) = Right (RInt n)
evalPrimary env (IntVar var) =
  maybe (Left $ "Unbound variable: " ++ var) (Right . RInt) (applyEnv env var)
evalPrimary env (Expr expr) = evalIntExpr env expr

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