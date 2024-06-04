module AST
  ( Expr (..),
    IntExpr (..),
    Term (..),
    Factor (..),
    Primary (..),
    BoolExpr (..),
    IfBoolExpr (..),
    BoolTerm (..),
    BoolFactor (..),
    BoolBinOp (..),
    Predicate (..),
  )
where

data Expr
  = IntExpr IntExpr
  | BoolExpr BoolExpr
  | LetExpr String Expr Expr
  deriving (Show)

--   LetInt String IntExpr IntExpr
-- \| LetBool String BoolExpr BoolExpr

data IntExpr
  = Term Term
  | IfIntExpr BoolExpr IntExpr IntExpr
  deriving (Show)

data Term
  = Diff Term Factor
  | Plus Term Factor
  | Factor Factor
  deriving (Show)

data Factor
  = Times Factor Primary
  | Div Factor Primary
  | Primary Primary
  deriving (Show)

data Primary
  = Int Int
  | IntVar String
  | Expr IntExpr
  deriving (Show)

data BoolExpr
  = IfBoolExpr IfBoolExpr
  | BoolTerm BoolTerm
  deriving (Show)

data IfBoolExpr
  = If BoolExpr BoolExpr BoolExpr
  deriving (Show)

data BoolTerm
  = BoolFactor BoolFactor
  | BoolBinOp BoolBinOp BoolTerm BoolTerm
  deriving (Show)

data BoolFactor
  = Bool Bool
  | BoolVar String
  | Predicate Predicate
  deriving (Show)

data BoolBinOp
  = BoolAnd
  | BoolOr
  deriving (Show)

newtype Predicate = IsZero IntExpr
  deriving (Show)
