module Evaluator (evalExpr, Result (..), EvalMonad) where

import AST
import Control.Monad
import Control.Monad.Except
import Env
import SList

type LetEnv = Env String Result

data Result = RInt Int | RBool Bool | RList [Result]
  deriving (Show)

type EvalMonad = ExceptT String IO

{--
  Helper functions to unwrap result to literal values
--}
toInt :: Result -> EvalMonad Int
toInt (RInt n) = return n
toInt r = throwError ("Expression is not an Int: " ++ show r)

toBool :: Result -> EvalMonad Bool
toBool (RBool b) = return b
toBool r = throwError ("Expression is not a Bool: " ++ show r)

toList :: Result -> EvalMonad [Result]
toList (RList xs) = return xs
toList r = throwError ("Expression is not a list: " ++ show r)

{--
  Helper functions to evaluate an Expr and unwrap the result to literal values
--}
evalToInt :: LetEnv -> Expr -> EvalMonad Int
evalToInt env expr = evalExpr env expr >>= toInt

evalToBool :: LetEnv -> Expr -> EvalMonad Bool
evalToBool env expr = evalExpr env expr >>= toBool

evalExpr :: LetEnv -> Expr -> EvalMonad Result
evalExpr env (Literal expr) = liftEither $ evalLiteral env expr
evalExpr env (Variable expr) = liftEither $ evalVariable env expr
evalExpr env (ListExpr expr) = evalList env expr
evalExpr env (LetExpr expr) = evalLetExpr env expr
evalExpr env (IfExpr expr) = evalIfExpr env expr
evalExpr env (CondExpr expr) = evalCondExpr env expr
evalExpr env (UnOpExpr unOp expr) = evalUnOpExpr env unOp expr
evalExpr env (BinOpExpr binOp expr1 expr2) = evalBinOpExpr env binOp expr1 expr2
evalExpr env (EffectExpr expr) = evalEffectExpr env expr

evalLiteral :: LetEnv -> Literal -> Either String Result
evalLiteral _ (IntLit n) = return (RInt n)
evalLiteral _ (BoolLit b) = return (RBool b)

evalVariable :: LetEnv -> Variable -> Either String Result
evalVariable env (Var var) =
  maybe (throwError $ "Unbound variable: " ++ var) return (applyEnv env var)

evalList :: LetEnv -> ListExpr -> EvalMonad Result
evalList _ Empty = return $ RList []
evalList env (Cons x xs) = do
  x' <- evalSNode env x
  xs' <- evalList env xs >>= toList
  return $ RList (x' : xs')

-- this represents, as Haskell lists, more closely the "nested structure" derived from the cons construct
-- the one that's actually used howver, unwraps the cons constructs to match actual Haskell lists (as with : operator)
-- xs' <- evalList env xs
-- return $ RList (x':[xs'])

evalSNode :: LetEnv -> SNode Expr -> EvalMonad Result
evalSNode env (Val expr) = evalExpr env expr
evalSNode env (SList expr) = evalList env expr

evalIfExpr :: LetEnv -> IfExpr -> EvalMonad Result
evalIfExpr env (If ifExpr thenExpr elseExpr) = do
  cond <- evalToBool env ifExpr
  if cond then evalExpr env thenExpr else evalExpr env elseExpr

evalCondExpr :: LetEnv -> CondExpr -> EvalMonad Result
evalCondExpr _ (Cond []) = throwError "evalCondExpr: none of the predicates evaluated true"
evalCondExpr env (Cond ((ifExpr, thenExpr) : xs)) = do
  cond <- evalExpr env ifExpr >>= toBool
  if cond then evalExpr env thenExpr else evalCondExpr env (Cond xs)

evalLetExpr :: LetEnv -> LetExpr -> EvalMonad Result
evalLetExpr env (Let var assignExpr inExpr) = do
  assign <- evalExpr env assignExpr
  evalExpr (extendEnv env var assign) inExpr

evalUnOpExpr :: LetEnv -> UnOp -> Expr -> EvalMonad Result
evalUnOpExpr env Not expr =
  RBool . not <$> evalToBool env expr
evalUnOpExpr env IsZero expr =
  RBool . (==) 0 <$> evalToInt env expr
evalUnOpExpr env Negate expr =
  RInt . negate <$> evalToInt env expr

evalBinOpExpr :: LetEnv -> BinOp -> Expr -> Expr -> EvalMonad Result
evalBinOpExpr env Plus = applyBinOp (evalToInt env) (\rand rator -> return $ RInt $ rand + rator)
evalBinOpExpr env Minus = applyBinOp (evalToInt env) (\rand rator -> return $ RInt $ rand - rator)
evalBinOpExpr env Times = applyBinOp (evalToInt env) (\rand rator -> return $ RInt $ rand * rator)
evalBinOpExpr env Div =
  applyBinOp
    (evalToInt env)
    ( \rand rator -> do
        when (rator == 0) (throwError "evalBinOpExpr: division by zero in expression")
        return $ RInt (div rand rator)
    )
evalBinOpExpr env And = applyBinOp (evalToBool env) (\rand rator -> return $ RBool $ rand && rator)
evalBinOpExpr env Or = applyBinOp (evalToBool env) (\rand rator -> return $ RBool $ rand || rator)
evalBinOpExpr env Eq = applyBinOp (evalToInt env) (\rand rator -> return $ RBool $ rand == rator)
evalBinOpExpr env Gt = applyBinOp (evalToInt env) (\rand rator -> return $ RBool $ rand > rator)
evalBinOpExpr env Lt = applyBinOp (evalToInt env) (\rand rator -> return $ RBool $ rand < rator)

{--
  apllyBinOp expects
    eval :: (Expr -> EvalMonad a) - the function to evaluate the two operands, i.e. how to convert the two Expr to "operable" values for the given operation
    apply :: (a -> a -> EvalMonad Result) - the actual operation to perform to the operands, once they have been transformed by the above
    expr1 :: Expr - the first argument (operand) of the BinOpexpression
    expr2 :: Expr - the second argument (operator) of the BinOp expression
--}
applyBinOp :: (Expr -> EvalMonad a) -> (a -> a -> EvalMonad Result) -> Expr -> Expr -> EvalMonad Result
applyBinOp eval apply expr1 expr2 = do
  n1 <- eval expr1
  n2 <- eval expr2
  apply n1 n2

evalEffectExpr :: LetEnv -> EffectExpr -> EvalMonad Result
evalEffectExpr env (PrintEffect expr) = printEffect env expr

printEffect :: LetEnv -> Expr -> EvalMonad Result
printEffect env expr = do
  e <- evalExpr env expr
  liftIO $ print $ showResult e
  return (RInt 1)

showResult :: Result -> String
showResult (RInt n) = show n
showResult (RBool b) = show b
showResult (RList xs) = show xs