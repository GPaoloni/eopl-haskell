module AST
  ( Expr (..),
    BinOp (..),
    UnOp (..),
    Literal (..),
    Variable (..),
    LetExpr (..),
    IfExpr (..),
    ArithExpr (..),
    ArithTerm (..),
    ArithFactor (..),
    Primary (..),
  )
where

data Expr
  = PrimaryExpr Primary
  | ArithExpr ArithExpr
  | BinOpExpr BinOp Expr Expr
  | UnOpExpr UnOp Expr
  | LetExpr LetExpr
  | IfExpr IfExpr
  deriving (Show)

data BinOp
  = Plus
  | Minus
  | Times
  | Div
  | And
  | Or
  deriving (Show)

data UnOp
  = Negate
  | Not
  | IsZero
  deriving (Show)

data Literal
  = IntLit Int
  | BoolLit Bool
  deriving (Show)

data Variable where
  Var :: String -> Variable
  deriving (Show)

data LetExpr
  = Let String Expr Expr
  deriving (Show)

data IfExpr
  = If Expr Expr Expr
  deriving (Show)

data ArithExpr
  = ArithTerm ArithTerm
  | IfArithExpr Expr ArithExpr ArithExpr
  deriving (Show)

data ArithTerm
  = ArithFactor ArithFactor
  | ArithTermOp BinOp ArithTerm ArithFactor
  deriving (Show)

data ArithFactor
  = Primary Primary
  | ArithFactorOp BinOp ArithFactor Primary
  deriving (Show)

data Primary
  = Literal Literal
  | ArithUnOp UnOp ArithExpr
  | Variable Variable
  | ParenExpr Expr
  deriving (Show)