module AST
  ( Expr (..),
    Literal (..),
    Variable (..),
    ListExpr,
    LetVariant (..),
    LetExpr (..),
    IfExpr (..),
    CondExpr (..),
    UnOp (..),
    BinOp (..),
    EffectExpr (..),
  )
where

import SList

data Expr
  = Literal Literal
  | Variable Variable
  | ListExpr ListExpr
  | LetExpr LetExpr
  | IfExpr IfExpr
  | CondExpr CondExpr
  | UnOpExpr UnOp Expr
  | BinOpExpr BinOp Expr Expr
  | EffectExpr EffectExpr
  deriving (Show)

data Literal
  = IntLit Int
  | BoolLit Bool
  deriving (Show)

data Variable where
  Var :: String -> Variable
  deriving (Show)

type ListExpr = SList Expr

data LetVariant = LetRegular | LetStar
  deriving (Show)

data LetExpr
  = Let LetVariant [(String, Expr)] Expr
  deriving (Show)

data IfExpr
  = If Expr Expr Expr
  deriving (Show)

newtype CondExpr = Cond [(Expr, Expr)]
  deriving (Show)

data UnOp
  = Negate
  | Not
  | IsZero
  deriving (Show)

data BinOp
  = Plus
  | Minus
  | Times
  | Div
  | And
  | Or
  | Eq
  | Gt
  | Lt
  deriving (Show)

data EffectExpr where
  PrintEffect :: Expr -> EffectExpr
  deriving (Show)