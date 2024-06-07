{
module Parser (parseExpr) where

import qualified AST
import qualified Data.Char as T
}

%name calc
%tokentype { Token }
%error { parseError }

%token
  let       { TokenLet }
  in        { TokenIn }
  int       { TokenInt $$ }
  var       { TokenVar $$ }
  boolean   { TokenBoolean $$ }
  if        { TokenIf }
  then      { TokenThen }
  else      { TokenElse }
  isZero    { TokenIsZero }
  minus     { TokenNegate }
  not       { TokenNot }
  and       { TokenBoolAnd }
  or        { TokenBoolOr }
  "=="      { TokenBoolEq }
  '>'       { TokenBoolGt }
  '<'       { TokenBoolLt }
  '='       { TokenEq }
  '+'       { TokenPlus }
  '-'       { TokenMinus }
  '*'       { TokenTimes }
  '/'       { TokenDiv }
  '('       { TokenOP }
  ')'       { TokenCP }
  '{'       { TokenOB }
  '}'       { TokenCB }

%left and or
%left '+' '-'
%left '*' '/'

%%


Expr
  : Primary                               { AST.PrimaryExpr $1 }
  | ArithExpr                             { AST.ArithExpr $1 }
  | LetExpr                               { AST.LetExpr $1 }
  | IfExpr                                { AST.IfExpr $1 }
  | BinOp                                 { $1 }
  | UnOp                                  { $1 }

BinOp
  : Expr and Expr                         { AST.BinOpExpr AST.And $1 $3 }
  | Expr or Expr                          { AST.BinOpExpr AST.Or $1 $3 }

UnOp
  : not '(' Expr ')'                      { AST.UnOpExpr AST.Not $3 }
  | isZero '(' Expr ')'                   { AST.UnOpExpr AST.IsZero $3 }
  -- | minus '(' Expr ')'                    { AST.UnOpExpr AST.Negate $3 }

LetExpr
  : let var '=' Expr in Expr              { AST.Let $2 $4 $6 }

IfExpr
  : if Expr then Expr else Expr           { AST.If $2 $4 $6 }

ArithExpr
  : ArithTerm                             { AST.ArithTerm $1 }

ArithTerm
  : ArithFactor                           { AST.ArithFactor $1 }
  | ArithTerm '+' ArithFactor             { AST.ArithTermOp AST.Plus $1 $3 }
  | ArithTerm '-' ArithFactor             { AST.ArithTermOp AST.Minus $1 $3 }

ArithFactor
  : Primary                               { AST.Primary $1 }
  | ArithFactor '*' Primary               { AST.ArithFactorOp AST.Times $1 $3 }
  | ArithFactor '/' Primary               { AST.ArithFactorOp AST.Div $1 $3 }

Primary
  : Literal                               { AST.Literal $1 }
  | Variable                              { AST.Variable $1 }
  | '(' Expr ')'                          { AST.ParenExpr $2 }
  | minus '(' Expr ')'                    { AST.ParenExpr $ AST.UnOpExpr AST.Negate $3 }

Literal
  : int                                   { AST.IntLit $1 }
  | boolean                               { AST.BoolLit $1 }

Variable
  : var                                   { AST.Var $1 }

{
parseError :: [Token] -> a
parseError xs = error $ "Parse error " ++ show xs

data Token
  = TokenLet
  | TokenIn
  | TokenInt Int
  | TokenVar String
  | TokenBoolean Bool
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenNot
  | TokenNegate
  | TokenOP
  | TokenCP
  | TokenOB
  | TokenCB
  | TokenBoolAnd
  | TokenBoolOr
  | TokenBoolEq
  | TokenBoolGt
  | TokenBoolLt
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '&', '|', '!', '<', '>']

reservedKeywords = [
  "let",
  "in",
  "if",
  "then",
  "else",
  "true",
  "false",
  "isZero",
  "not",
  "minus"
  ]

lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
  | T.isSpace c = lexer cs
  | T.isDigit c = lexNumber (c:cs)
  | T.isAlpha c = lexAlpha (c:cs)
  | elem c reservedOperators = lexOperator (c:cs)

lexNumber :: String -> [Token]
lexNumber cs = TokenInt (read num) : lexer rest
  where (num, rest) = span T.isDigit cs

lexAlpha :: String -> [Token]
lexAlpha cs =
  case span T.isAlpha cs of
    (word, rest) ->
      if elem word reservedKeywords 
        then lexKeyword word : lexer rest
        else TokenVar word : lexer rest
        
lexKeyword :: String -> Token
lexKeyword "let"    = TokenLet
lexKeyword "in"     = TokenIn
lexKeyword "if"     = TokenIf
lexKeyword "then"   = TokenThen
lexKeyword "else"   = TokenElse
lexKeyword "true"   = TokenBoolean True
lexKeyword "false"  = TokenBoolean False
lexKeyword "isZero" = TokenIsZero
lexKeyword "not"    = TokenNot
lexKeyword "minus"  = TokenNegate
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

lexOperator :: String -> [Token]
lexOperator ('&':'&':cs) = TokenBoolAnd : lexer cs
lexOperator ('|':'|':cs) = TokenBoolOr : lexer cs
lexOperator ('=':'=':cs) = TokenBoolEq : lexer cs
lexOperator ('>':cs) = TokenBoolGt : lexer cs
lexOperator ('<':cs) = TokenBoolLt : lexer cs
lexOperator ('=':cs) = TokenEq : lexer cs
lexOperator ('+':cs) = TokenPlus : lexer cs
lexOperator ('-':cs) = TokenMinus : lexer cs
lexOperator ('*':cs) = TokenTimes : lexer cs
lexOperator ('/':cs) = TokenDiv : lexer cs
lexOperator ('!':cs) = TokenNot : lexer cs
lexOperator ('(':cs) = TokenOP : lexer cs
lexOperator (')':cs) = TokenCP : lexer cs
lexOperator ('{':cs) = TokenOB : lexer cs
lexOperator ('}':cs) = TokenCB : lexer cs
lexOperator (c:_)    = error $ "Unexpected operator: " ++ [c]

parseExpr :: String -> AST.Expr
parseExpr = calc . lexer
}