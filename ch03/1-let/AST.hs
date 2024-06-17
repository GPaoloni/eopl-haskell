module AST
  ( Expr (..),
    Literal (..),
    Variable (..),
    ListExpr,
    LetExpr (..),
    IfExpr (..),
    UnOp (..),
    BinOp (..),
  )
where

import SList

data Expr
  = Literal Literal
  | Variable Variable
  | List ListExpr
  | LetExpr LetExpr
  | IfExpr IfExpr
  | UnOpExpr UnOp Expr
  | BinOpExpr BinOp Expr Expr
  deriving (Show)

data Literal
  = IntLit Int
  | BoolLit Bool
  deriving (Show)

data Variable where
  Var :: String -> Variable
  deriving (Show)

type ListExpr = SList Expr

data LetExpr
  = Let String Expr Expr
  deriving (Show)

data IfExpr
  = If Expr Expr Expr
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