module Evaluator (evalExpr, Result (..), ExprResult) where

import AST
import Control.Monad
import Env
import SList
import Control.Monad.Except

type LetEnv = Env String Result

data Result = RInt Int | RBool Bool | RList [Result]
  deriving (Show)

type ExprResult = Either String Result

{--
  Helper functions to unwrap result to literal values
--}
toInt :: Result -> Either String Int
toInt (RInt n) = Right n
toInt r = Left ("Expression is not an Int: " ++ show r)

toBool :: Result -> Either String Bool
toBool (RBool b) = Right b
toBool r = Left ("Expression is not a Bool: " ++ show r)

toList :: Result -> Either String [Result]
toList (RList xs) = Right xs
toList r = Left ("Expression is not a list: " ++ show r)

{--
  Helper functions to evaluate an Expr and unwar the result to literal values
--}
evalToInt :: LetEnv -> Expr -> Either String Int
evalToInt env expr = evalExpr env expr >>= toInt

evalToBool :: LetEnv -> Expr -> Either String Bool
evalToBool env expr = evalExpr env expr >>= toBool

evalExpr :: LetEnv -> Expr -> ExprResult
evalExpr env (Literal expr) = evalLiteral env expr
evalExpr env (Variable expr) = evalVariable env expr
evalExpr env (List expr) = evalList env expr
evalExpr env (LetExpr expr) = evalLetExpr env expr
evalExpr env (IfExpr expr) = evalIfExpr env expr
evalExpr env (UnOpExpr unOp expr) = evalUnOpExpr env unOp expr
evalExpr env (BinOpExpr binOp expr1 expr2) = evalBinOpExpr env binOp expr1 expr2

evalLiteral :: LetEnv -> Literal -> ExprResult
evalLiteral _ (IntLit n) = Right (RInt n)
evalLiteral _ (BoolLit b) = Right (RBool b)
evalLiteral _ EmptyList = Right (RList [])

evalVariable :: LetEnv -> Variable -> ExprResult
evalVariable env (Var var) =
  maybe (Left $ "Unbound variable: " ++ var) Right (applyEnv env var)

evalList :: LetEnv -> ListExpr -> ExprResult
evalList _ Empty = Right $ RList []
evalList env (Cons x xs) = do
  x' <- evalSNode env x
  xs' <- evalList env xs
  Right $ RList (x':[xs'])

evalSNode :: LetEnv -> SNode Expr -> ExprResult
evalSNode env (Val expr) = evalExpr env expr
evalSNode env (SList expr) = evalList env expr

evalIfExpr :: LetEnv -> IfExpr -> ExprResult
evalIfExpr env (If ifExpr thenExpr elseExpr) = do
  cond <- evalToBool env ifExpr
  if cond then evalExpr env thenExpr else evalExpr env elseExpr

evalLetExpr :: LetEnv -> LetExpr -> ExprResult
evalLetExpr env (Let var assignExpr inExpr) = do
  assign <- evalExpr env assignExpr
  evalExpr (extendEnv env var assign) inExpr

evalUnOpExpr :: LetEnv -> UnOp -> Expr -> ExprResult
evalUnOpExpr env Not expr =
  evalToBool env expr >>= Right . RBool . not
evalUnOpExpr env IsZero expr =
  evalToInt env expr >>= Right . RBool . (==) 0
evalUnOpExpr env Negate expr =
  evalToInt env expr >>= Right . RInt . negate

evalBinOpExpr :: LetEnv -> BinOp -> Expr -> Expr -> ExprResult
evalBinOpExpr env Plus = applyBinOp (evalToInt env) (\rand rator -> Right $ RInt $ rand + rator)
evalBinOpExpr env Minus = applyBinOp (evalToInt env) (\rand rator -> Right $ RInt $ rand - rator)
evalBinOpExpr env Times = applyBinOp (evalToInt env) (\rand rator -> Right $ RInt $ rand * rator)
evalBinOpExpr env Div =
  applyBinOp
    (evalToInt env)
    ( \rand rator -> do
        when (rator == 0) (Left "evalBinOpExpr: division by zero in expression")
        Right $ RInt (div rand rator)
    )
evalBinOpExpr env And = applyBinOp (evalToBool env) (\rand rator -> Right $ RBool $ rand && rator)
evalBinOpExpr env Or = applyBinOp (evalToBool env) (\rand rator -> Right $ RBool $ rand || rator)
evalBinOpExpr env Eq = applyBinOp (evalToInt env) (\rand rator -> Right $ RBool $ rand == rator)
evalBinOpExpr env Gt = applyBinOp (evalToInt env) (\rand rator -> Right $ RBool $ rand > rator)
evalBinOpExpr env Lt = applyBinOp (evalToInt env) (\rand rator -> Right $ RBool $ rand < rator)


{--
  apllyBinOp expects
    eval :: (Expr -> Either String a) - the function to evaluate the two operands, i.e. how to convert the two Expr to "operable" values for the given operation
    apply :: (a -> a -> ExprResult) - the actual operation to perform to the operands, once they have been transformed by the above
    expr1 :: Expr - the first argument (operand) of the BinOpexpression
    expr2 :: Expr - the second argument (operator) of the BinOp expression
--}
applyBinOp :: (Expr -> Either String a) -> (a -> a -> ExprResult) -> Expr -> Expr -> ExprResult
applyBinOp eval apply expr1 expr2 = do
  n1 <- eval expr1
  n2 <- eval expr2
  apply n1 n2
