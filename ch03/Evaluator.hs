module Evaluator (evalExpr, Result (..), ExprResult) where

import AST
import Control.Monad
import Distribution.Compat.Lens (_1)
import Env

type LetEnv = Env String Result

data Result = RInt Int | RBool Bool
  deriving (Show)

type ExprResult = Either String Result

{--
  Helper functions to unwrap result to literal values
--}
toInt :: Result -> Either String Int
toInt (RInt n) = Right n
toInt r = Left ("Can't convert expression to Int: " ++ show r)

toBool :: Result -> Either String Bool
toBool (RBool b) = Right b
toBool r = Left ("Can't convert expression to Bool: " ++ show r)

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
evalExpr env (LetExpr expr) = evalLetExpr env expr
evalExpr env (IfExpr expr) = evalIfExpr env expr
evalExpr env (UnOpExpr unOp expr) = evalUnOpExpr env unOp expr
evalExpr env (BinOpExpr binOp expr1 expr2) = evalBinOpExpr env binOp expr1 expr2

evalLiteral :: LetEnv -> Literal -> ExprResult
evalLiteral env (IntLit n) = Right (RInt n)
evalLiteral env (BoolLit b) = Right (RBool b)

evalVariable :: LetEnv -> Variable -> ExprResult
evalVariable env (Var var) =
  maybe (Left $ "Unbound variable: " ++ var) Right (applyEnv env var)

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
    ap :: (a -> a -> ExprResult) - the actual operation to perform to the operands, once they have been transformed by the above
    expr1 :: Expr - the first argument (operand) of the BinOpexpression
    expr2 :: Expr - the second argument (operator) of the BinOp expression
--}
applyBinOp :: (Expr -> Either String a) -> (a -> a -> ExprResult) -> Expr -> Expr -> ExprResult
applyBinOp eval ap expr1 expr2 = do
  n1 <- eval expr1
  n2 <- eval expr2
  ap n1 n2

-- evalArithExpr :: LetEnv -> ArithExpr -> ExprResult
-- evalArithExpr env (ArithTerm term) = evalArithTerm env term
-- evalArithExpr env (IfArithExpr ifExpr thenExpr elseExpr) = do
--   cond <- evalExpr env ifExpr >>= toBool
--   if cond then evalArithExpr env thenExpr else evalArithExpr env elseExpr

-- evalArithTerm :: LetEnv -> ArithTerm -> ExprResult
-- evalArithTerm env (ArithFactor factor) = evalArithFactor env factor
-- evalArithTerm env (ArithTermOp op term factor) =
--   applyArithBinOp
--     env
--     (evalArithTerm env term)
--     (evalArithFactor env factor)
--     ( \x y -> case op of
--         Plus -> Right $ RInt (x + y)
--         Minus -> Right $ RInt (x - y)
--         _ -> Left $ "evalArithTerm: Invalid BinOp operator" ++ show op
--     )

-- applyFactorOp :: LetEnv -> ArithFactor -> ExprResult
-- applyFactorOp env (ArithFactorOp op f p) =
--   applyArithBinOp
--     env
--     (evalArithFactor env f)
--     (evalPrimary env p)
--     ( \x y -> case op of
--         Times -> Right $ RInt (x * y)
--         Div -> do
--           when (y == 0) (Left $ "applyFactorOp: division by zero in expression" ++ show p)
--           Right $ RInt (div x y)
--         _ -> Left $ "applyFactorOp: Invalid BinOp operator" ++ show op
--     )

-- applyArithBinOp :: LetEnv -> ExprResult -> ExprResult -> (Int -> Int -> ExprResult) -> ExprResult
-- applyArithBinOp env r1 r2 ap =
--   case (r1, r2) of
--     (Right x, Right y) -> do
--       x' <- toInt x
--       y' <- toInt y
--       ap x' y'
--     (Left e, _) -> Left e
--     (_, Left e) -> Left e

-- evalArithFactor :: LetEnv -> ArithFactor -> ExprResult
-- -- evalArithFactor env (Primary p) = evalPrimary env p
-- evalArithFactor env (ArithFactorOp op f p) = applyFactorOp env (ArithFactorOp op f p)

-- evalPrimary :: LetEnv -> Primary -> ExprResult
-- evalPrimary env (Literal n) = evalLiteral env n
-- -- evalPrimary env (ArithUnOp op expr) = case op of
-- --   Negate -> do
-- --     result <- evalArithExpr env expr
-- --     int <- toInt result
-- --     Right $ RInt $ negate int
-- --   _ -> Left $ "evalPrimary: Invalid operator" ++ show op ++ "in ArithUnOp variant"
-- evalPrimary env (Variable var) = evalVariable env var
-- evalPrimary env (ParenExpr expr) = evalExpr env expr
