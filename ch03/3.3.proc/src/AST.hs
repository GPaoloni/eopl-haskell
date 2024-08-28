{-# LANGUAGE GADTs #-}

module AST
  ( Expr (..),
    Literal (..),
    Identifier,
    Variable (..),
    ListExpr,
    LetVariant (..),
    LetExpr (..),
    UnpackExpr (..),
    IfExpr (..),
    CondExpr (..),
    UnOp (..),
    BinOp (..),
    EffectExpr (..),
    LambdaExpr (..),
    LambdaApExpr (..),
  )
where
import SList

data Expr
  = Literal Literal
  | Variable Variable
  | ListExpr ListExpr
  | LetExpr LetExpr
  | UnpackExpr UnpackExpr
  | IfExpr IfExpr
  | CondExpr CondExpr
  | UnOpExpr UnOp Expr
  | BinOpExpr BinOp Expr Expr
  | EffectExpr EffectExpr
  | LambdaExpr LambdaExpr
  | LambdaApExpr LambdaApExpr
  deriving (Show)

data Literal
  = IntLit Int
  | BoolLit Bool
  deriving (Show)

type Identifier = String

data Variable where
  Var :: Identifier -> Variable
  deriving (Show)

type ListExpr = SList Expr

data LetVariant = LetRegular | LetStar
  deriving (Show)

data LetExpr = Let LetVariant [(Identifier, Expr)] Expr
  deriving (Show)

data UnpackExpr = Unpack ([Identifier], ListExpr) Expr
  deriving (Show)

data IfExpr = If Expr Expr Expr
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

data LambdaExpr = Lambda Identifier Expr
  deriving (Show)

data LambdaApExpr = LambdaAp Expr Expr
  deriving (Show)