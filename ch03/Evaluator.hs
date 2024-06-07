module Evaluator (evalExpr, Result (..), ExprResult) where

import AST
import Control.Monad
import Distribution.Compat.Lens (_1)
import Env

type LetEnv = Env String Result

data Result = RInt Int | RBool Bool
  deriving (Show)

type ExprResult = Either String Result

toInt :: Result -> Either String Int
toInt (RInt n) = Right n
toInt r = Left ("Can't convert expression to Int: " ++ show r)

toBool :: Result -> Either String Bool
toBool (RBool b) = Right b
toBool r = Left ("Can't convert expression to Bool: " ++ show r)

evalExpr :: LetEnv -> Expr -> ExprResult
evalExpr env (PrimaryExpr expr) = evalPrimary env expr
evalExpr env (ArithExpr expr) = evalArithExpr env expr
evalExpr env (UnOpExpr op expr) = evalUnOpExpr env op expr
evalExpr env (LetExpr expr) = evalLetExpr env expr
evalExpr env (IfExpr expr) = evalIfExpr env expr

evalUnOpExpr :: LetEnv -> UnOp -> Expr -> ExprResult
evalUnOpExpr env Not expr =
  evalExpr env expr >>= toBool >>= Right . RBool . not
evalUnOpExpr env IsZero expr =
  evalExpr env expr >>= toInt >>= Right . RBool . (==) 0
evalUnOpExpr env Negate expr =
  evalExpr env expr >>= toInt >>= Right . RInt . negate
-- evalUnOpExpr _ op expr =
--   Left $ "evalUnOpExpr: Invalid UnOp operator" ++ show op ++ "applied to expr" ++ show expr

evalIfExpr :: LetEnv -> IfExpr -> ExprResult
evalIfExpr env (If ifExpr thenExpr elseExpr) = do
  cond <- evalExpr env ifExpr >>= toBool
  if cond then evalExpr env thenExpr else evalExpr env elseExpr

evalLetExpr :: LetEnv -> LetExpr -> ExprResult
evalLetExpr env (Let var assignExpr inExpr) = do
  assign <- evalExpr env assignExpr
  evalExpr (extendEnv env var assign) inExpr

evalArithExpr :: LetEnv -> ArithExpr -> ExprResult
evalArithExpr env (ArithTerm term) = evalArithTerm env term
evalArithExpr env (IfArithExpr ifExpr thenExpr elseExpr) = do
  cond <- evalExpr env ifExpr >>= toBool
  if cond then evalArithExpr env thenExpr else evalArithExpr env elseExpr

evalArithTerm :: LetEnv -> ArithTerm -> ExprResult
evalArithTerm env (ArithFactor factor) = evalArithFactor env factor
evalArithTerm env (ArithTermOp op term factor) =
  applyArithBinOp
    env
    (evalArithTerm env term)
    (evalArithFactor env factor)
    ( \x y -> case op of
        Plus -> Right $ RInt (x + y)
        Minus -> Right $ RInt (x - y)
        _ -> Left $ "evalArithTerm: Invalid BinOp operator" ++ show op
    )

applyFactorOp :: LetEnv -> ArithFactor -> ExprResult
applyFactorOp env (ArithFactorOp op f p) =
  applyArithBinOp
    env
    (evalArithFactor env f)
    (evalPrimary env p)
    ( \x y -> case op of
        Times -> Right $ RInt (x * y)
        Div -> do
          when (y == 0) (Left $ "applyFactorOp: division by zero in expression" ++ show p)
          Right $ RInt (div x y)
        _ -> Left $ "applyFactorOp: Invalid BinOp operator" ++ show op
    )

applyArithBinOp :: LetEnv -> ExprResult -> ExprResult -> (Int -> Int -> ExprResult) -> ExprResult
applyArithBinOp env r1 r2 ap =
  case (r1, r2) of
    (Right x, Right y) -> do
      x' <- toInt x
      y' <- toInt y
      ap x' y'
    (Left e, _) -> Left e
    (_, Left e) -> Left e

evalArithFactor :: LetEnv -> ArithFactor -> ExprResult
-- evalArithFactor env (Primary p) = evalPrimary env p
evalArithFactor env (ArithFactorOp op f p) = applyFactorOp env (ArithFactorOp op f p)

evalPrimary :: LetEnv -> Primary -> ExprResult
evalPrimary env (Literal n) = evalLiteral env n
-- evalPrimary env (ArithUnOp op expr) = case op of
--   Negate -> do
--     result <- evalArithExpr env expr
--     int <- toInt result
--     Right $ RInt $ negate int
--   _ -> Left $ "evalPrimary: Invalid operator" ++ show op ++ "in ArithUnOp variant"
evalPrimary env (Variable var) = evalVariable env var
evalPrimary env (ParenExpr expr) = evalExpr env expr

evalLiteral :: LetEnv -> Literal -> ExprResult
evalLiteral env (IntLit n) = Right (RInt n)
evalLiteral env (BoolLit b) = Right (RBool b)

evalVariable :: LetEnv -> Variable -> ExprResult
evalVariable env (Var var) =
  maybe (Left $ "Unbound variable: " ++ var) Right (applyEnv env var)
