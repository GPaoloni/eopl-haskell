{
module Parser (parseExpr) where

import qualified AST
import SList
import qualified Data.Char as T
}

%name calc
%tokentype { Token }
%error { parseError }
-- %expect 0

%token
  -- variables
  var       { TokenVar $$ }
  -- constants
  int       { TokenInt $$ }
  boolean   { TokenBoolean $$ }
  -- keywords
  let       { TokenLet }
  in        { TokenIn }
  if        { TokenIf }
  then      { TokenThen }
  else      { TokenElse }
  -- unary operators
  isZero    { TokenIsZero }
  minus     { TokenNegate }
  not       { TokenNot }
  -- list constructor
  cons      { TokenCons }
  -- logical operators
  and       { TokenBoolAnd }
  or        { TokenBoolOr }
  -- comparison operators
  "=="      { TokenBoolEq }
  '>'       { TokenBoolGt }
  '<'       { TokenBoolLt }
  '='       { TokenEq }
  -- arithmetic operators
  '+'       { TokenPlus }
  '-'       { TokenMinus }
  '*'       { TokenTimes }
  '/'       { TokenDiv }
  -- parenthesis
  '('       { TokenOP }
  ')'       { TokenCP }
  -- brackets
  '{'       { TokenOB }
  '}'       { TokenCB }
  '['       { TokenOS }
  ']'       { TokenCS }
  -- separator
  ','       { TokenComma }

%right else in
-- %right '->'
-- %left '|'
-- %left '&'
-- %nonassoc '=' '<>' '<' '>' '<=' '>='
-- %left '+' '-'
-- %left '*' '/'

%%

Expr
  : Literal                               { AST.Literal $1 }
  | Variable                              { AST.Variable $1 }
  | List                                  { AST.List $1 }
  | LetExpr                               { AST.LetExpr $1 }
  | IfExpr                                { AST.IfExpr $1 }
  | UnOp                                  { $1 }
  | BinOp                                 { $1 }

{- replica of Expr to sort nested list issues -}
NonListExpr
  : Literal                               { AST.Literal $1 }
  | Variable                              { AST.Variable $1 }
  | LetExpr                               { AST.LetExpr $1 }
  | IfExpr                                { AST.IfExpr $1 }
  | UnOp                                  { $1 }
  | BinOp                                 { $1 }

Literal
  : int                                   { AST.IntLit $1 }
  | boolean                               { AST.BoolLit $1 }

Variable
  : var                                   { AST.Var $1 }

List
  : '[' ']'                               { Empty }
  | cons '(' ListNode ',' List ')'        { Cons $3 $5  }

ListNode
  : List                                  { SList $1 }
  | NonListExpr                           { Val $1 }

LetExpr
  : let var '=' Expr in Expr              { AST.Let $2 $4 $6 }

IfExpr
  : if Expr then Expr else Expr           { AST.If $2 $4 $6 }

UnOp
  : not '(' Expr ')'                      { AST.UnOpExpr AST.Not $3 }
  | isZero '(' Expr ')'                   { AST.UnOpExpr AST.IsZero $3 }
  | minus '(' Expr ')'                    { AST.UnOpExpr AST.Negate $3 }
  | '-' '(' Expr ')'                      { AST.UnOpExpr AST.Negate $3 }

BinOp
  : and '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.And $3 $5 }
  | or '(' Expr ',' Expr ')'              { AST.BinOpExpr AST.Or $3 $5 }
  | '+' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Plus $3 $5 }
  | '-' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Minus $3 $5 }
  | '*' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Times $3 $5 }
  | '/' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Div $3 $5 }
  | "==" '(' Expr ',' Expr ')'            { AST.BinOpExpr AST.Eq $3 $5 }
  | '>' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Gt $3 $5 }
  | '<' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Lt $3 $5 }

-- optional(p)
--   :                                       { Nothing }
--   | p                                     { Just $1 }

-- | '[' sepBy(exp, ',') ']'

-- where
-- sepBy_rev(p, sep)
--   :                         { [] }
--   | sepBy_rev(p, sep) sep p { $3 : $1 }

-- sepBy(p, sep)
--   : sepBy_rev(p, sep) { reverse $1 }

{
parseError :: [Token] -> a
parseError xs = error $ "Parse error " ++ show xs

data Token
  = TokenVar String
  | TokenInt Int
  | TokenBoolean Bool
  | TokenLet
  | TokenIn
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenNegate
  | TokenNot
  | TokenCons
  | TokenBoolAnd
  | TokenBoolOr
  | TokenBoolEq
  | TokenBoolGt
  | TokenBoolLt
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenOP
  | TokenCP
  | TokenOB
  | TokenCB
  | TokenOS
  | TokenCS
  | TokenComma
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '[', ']', '&', '|', '!', '<', '>', ',']

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
  "minus",
  "cons"
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
lexKeyword "cons"   = TokenCons
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
lexOperator ('[':cs) = TokenOS : lexer cs
lexOperator (']':cs) = TokenCS : lexer cs
lexOperator (',':cs) = TokenComma : lexer cs
lexOperator (c:_)    = error $ "Unexpected operator: " ++ [c]

parseExpr :: String -> AST.Expr
parseExpr = calc . lexer
}