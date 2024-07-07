module Evaluator (runEvalExpr, Result (..), LetEnv) where

import AST
import Control.Monad
import Control.Monad.Except
import Control.Monad.State
import Env
import SList

data Result = RInt Int | RBool Bool | RList [Result]
  deriving (Show)

type LetEnv = Env String Result

type StateMonad = StateT LetEnv IO

type EvalMonad = ExceptT String StateMonad

runEvalExpr :: LetEnv -> Expr -> IO (Either String Result, LetEnv)
runEvalExpr env expr = runStateT (runExceptT (evalExpr expr)) env

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
evalToInt :: Expr -> EvalMonad Int
evalToInt expr = evalExpr expr >>= toInt

evalToBool :: Expr -> EvalMonad Bool
evalToBool expr = evalExpr expr >>= toBool

evalExpr :: Expr -> EvalMonad Result
evalExpr (Literal expr) = liftEither $ evalLiteral expr
evalExpr (Variable expr) = evalVariable expr
evalExpr (ListExpr expr) = evalList expr
evalExpr (LetExpr expr) = evalLetExpr expr
evalExpr (IfExpr expr) = evalIfExpr expr
evalExpr (CondExpr expr) = evalCondExpr expr
evalExpr (UnOpExpr unOp expr) = evalUnOpExpr unOp expr
evalExpr (BinOpExpr binOp expr1 expr2) = evalBinOpExpr binOp expr1 expr2
evalExpr (EffectExpr expr) = evalEffectExpr expr

evalLiteral :: Literal -> Either String Result
evalLiteral (IntLit n) = return (RInt n)
evalLiteral (BoolLit b) = return (RBool b)

evalVariable :: Variable -> EvalMonad Result
evalVariable (Var var) = do
  env <- lift get -- get the current environment state
  case applyEnv env var of
    Just val -> return val
    Nothing -> throwError $ "Unbound variable: " ++ var

evalList :: ListExpr -> EvalMonad Result
evalList Empty = return $ RList []
evalList (Cons x xs) = do
  x' <- evalSNode x
  xs' <- evalList xs >>= toList
  return $ RList (x' : xs')

-- this represents, as Haskell lists, more closely the "nested structure" derived from the cons construct
-- the one that's actually used howver, unwraps the cons constructs to match actual Haskell lists (as with : operator)
-- xs' <- evalList env xs
-- return $ RList (x':[xs'])

evalSNode :: SNode Expr -> EvalMonad Result
evalSNode (Val expr) = evalExpr expr
evalSNode (SList expr) = evalList expr

evalIfExpr :: IfExpr -> EvalMonad Result
evalIfExpr (If ifExpr thenExpr elseExpr) = do
  cond <- evalToBool ifExpr
  if cond then evalExpr thenExpr else evalExpr elseExpr

evalCondExpr :: CondExpr -> EvalMonad Result
evalCondExpr (Cond []) = throwError "evalCondExpr: none of the predicates evaluated true"
evalCondExpr (Cond ((ifExpr, thenExpr) : xs)) = do
  cond <- evalExpr ifExpr >>= toBool
  if cond then evalExpr thenExpr else evalCondExpr (Cond xs)

evalLetExpr :: LetExpr -> EvalMonad Result
evalLetExpr (Let _ [] inExpr) = evalExpr inExpr
evalLetExpr (Let LetRegular xs inExpr) = do
  assigns <- mapM evalAssign xs
  lift $ modify (extendEnvStar assigns) -- modify the LetEnv state (all updates at the same time)
  evalExpr inExpr
evalLetExpr (Let LetStar (x : xs) inExpr) = do
  (var, assign) <- evalAssign x
  lift $ modify (extendEnv var assign) -- modify the LetEnv state (one update at a time)
  evalLetExpr (Let LetStar xs inExpr)

evalAssign :: (String, Expr) -> EvalMonad (String, Result)
evalAssign (var, expr) = (var,) <$> evalExpr expr

evalUnOpExpr :: UnOp -> Expr -> EvalMonad Result
evalUnOpExpr Not expr =
  RBool . not <$> evalToBool expr
evalUnOpExpr IsZero expr =
  RBool . (==) 0 <$> evalToInt expr
evalUnOpExpr Negate expr =
  RInt . negate <$> evalToInt expr

evalBinOpExpr :: BinOp -> Expr -> Expr -> EvalMonad Result
evalBinOpExpr Plus = applyBinOp evalToInt (\rand rator -> return $ RInt $ rand + rator)
evalBinOpExpr Minus = applyBinOp evalToInt (\rand rator -> return $ RInt $ rand - rator)
evalBinOpExpr Times = applyBinOp evalToInt (\rand rator -> return $ RInt $ rand * rator)
evalBinOpExpr Div =
  applyBinOp
    evalToInt
    ( \rand rator -> do
        when (rator == 0) (throwError "evalBinOpExpr: division by zero in expression")
        return $ RInt (div rand rator)
    )
evalBinOpExpr And = applyBinOp evalToBool (\rand rator -> return $ RBool $ rand && rator)
evalBinOpExpr Or = applyBinOp evalToBool (\rand rator -> return $ RBool $ rand || rator)
evalBinOpExpr Eq = applyBinOp evalToInt (\rand rator -> return $ RBool $ rand == rator)
evalBinOpExpr Gt = applyBinOp evalToInt (\rand rator -> return $ RBool $ rand > rator)
evalBinOpExpr Lt = applyBinOp evalToInt (\rand rator -> return $ RBool $ rand < rator)

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

evalEffectExpr :: EffectExpr -> EvalMonad Result
evalEffectExpr (PrintEffect expr) = printEffect expr

printEffect :: Expr -> EvalMonad Result
printEffect expr = do
  e <- evalExpr expr
  liftIO $ print $ showResult e
  return (RInt 1)

showResult :: Result -> String
showResult (RInt n) = show n
showResult (RBool b) = show b
showResult (RList xs) = show xs