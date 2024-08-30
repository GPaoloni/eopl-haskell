{
module Parser (parseExpr) where

import qualified AST
import SList
import qualified Data.Char as T
}

%name calc
%tokentype { Token }
%error { parseError }
%expect 0

%token
  -- variables
  var       { TokenVar $$ }
  -- constants
  int       { TokenInt $$ }
  boolean   { TokenBoolean $$ }
  -- keywords
  let       { TokenLet }
  in        { TokenIn }
  unpack    { TokenUnpack }
  if        { TokenIf }
  then      { TokenThen }
  else      { TokenElse }
  cond      { TokenCond }
  end       { TokenEnd }
  proc      { TokenProc }
  -- unary operators
  isZero    { TokenIsZero }
  minus     { TokenNegate }
  not       { TokenNot }
  -- list constructor
  cons      { TokenCons }
  list      { TokenList }
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
  -- separators
  ','       { TokenComma }
  "==>"     { TokenLongArrow }
  -- effect
  print     { TokenPrint }

%right else in cond
%nonassoc int boolean var '=' '(' ')' '{' '}' '[' ']'
%nonassoc APP

%%

Expr :: { AST.Expr }
  : NonListExpr                           { $1 }
  | ListExpr                              { AST.ListExpr $1 }

NonListExpr :: { AST.Expr }
  : Application %prec APP                 { $1 }
  | LambdaExpr                            { AST.LambdaExpr $1 }
  | LetExpr                               { AST.LetExpr $1 }
  | UnpackExpr                            { AST.UnpackExpr $1 }
  | IfExpr                                { AST.IfExpr $1 }
  | CondExpr                              { AST.CondExpr $1 }
  | UnOpExpr                              { $1 }
  | BinOpExpr                             { $1 }
  | EffectExpr                            { AST.EffectExpr $1 }

Application :: { AST.Expr }
  : Atom                                  { $1 }
  | Application Atom                      { AST.LambdaApExpr (AST.LambdaAp $1 $2) }

Atom :: { AST.Expr }
  : Literal                               { AST.Literal $1 }
  | Variable                              { AST.Variable $1 }
  | '(' Expr ')'                          { $2 }

LambdaExpr :: { AST.LambdaExpr }
  : proc '(' var ')' Expr                 { AST.Lambda $3 $5 }

Literal :: { AST.Literal }
  : int                                   { AST.IntLit $1 }
  | boolean                               { AST.BoolLit $1 }

Variable :: { AST.Variable }
  : var                                   { AST.Var $1 }

ListExpr :: { AST.ListExpr }
  : '[' ']'                               { Empty }
  | cons '(' ListNode ',' ListExpr ')'    { Cons $3 $5  }
  | list '(' SyntaxSugarList ')'          { foldr Cons Empty $3 }

SyntaxSugarList :: { [ SNode AST.Expr ] }
  : sepBy(ListNode, ',')                   { $1 }

ListNode :: { SNode AST.Expr }
  : ListExpr                              { SList $1 }
  | NonListExpr                           { Val $1 }

LetExpr :: { AST.LetExpr }
  : let many(LetExprRule) in Expr         { AST.Let AST.LetRegular $2 $4 }
  | let'*' many(LetExprRule) in Expr      { AST.Let AST.LetStar $3 $5 }

LetExprRule :: { ( AST.Identifier, AST.Expr ) }
  : var '=' Expr                          { ($1, $3) }

UnpackExpr :: { AST.UnpackExpr }
  : unpack many(var) '=' ListExpr in Expr { AST.Unpack ($2, $4) $6 }

IfExpr :: { AST.IfExpr }
  : if Expr then Expr else Expr           { AST.If $2 $4 $6 }

CondExpr :: { AST.CondExpr }
  : cond sepBy(CondExprRule, ',') end     { AST.Cond $2 }

CondExprRule :: { ( AST.Expr, AST.Expr ) }
  : Expr "==>" Expr                       { ($1,  $3) }

UnOpExpr :: { AST.Expr }
  : not '(' Expr ')'                      { AST.UnOpExpr AST.Not $3 }
  | isZero '(' Expr ')'                   { AST.UnOpExpr AST.IsZero $3 }
  | minus '(' Expr ')'                    { AST.UnOpExpr AST.Negate $3 }
  | '-' '(' Expr ')'                      { AST.UnOpExpr AST.Negate $3 }

BinOpExpr :: { AST.Expr }
  : and '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.And $3 $5 }
  | or '(' Expr ',' Expr ')'              { AST.BinOpExpr AST.Or $3 $5 }
  | '+' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Plus $3 $5 }
  | '-' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Minus $3 $5 }
  | '*' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Times $3 $5 }
  | '/' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Div $3 $5 }
  | "==" '(' Expr ',' Expr ')'            { AST.BinOpExpr AST.Eq $3 $5 }
  | '>' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Gt $3 $5 }
  | '<' '(' Expr ',' Expr ')'             { AST.BinOpExpr AST.Lt $3 $5 }

EffectExpr :: { AST.EffectExpr }
  : print '(' Expr ')'                    { AST.PrintEffect $3 }

-- optional(p)
--   :                                       { Nothing }
--   | p                                     { Just $1 }

sepBy_rev(p, sep)
  :                         { [] }
  | p                       { [$1] }
  | sepBy_rev(p, sep) sep p { $3 : $1 }

sepBy(p, sep)
  : sepBy_rev(p, sep) { reverse $1 }

many_rev(p)
  :               { [] }
  | many_rev(p) p { $2 : $1 }

many(p)
  : many_rev(p) { reverse $1 }

{
parseError :: [Token] -> a
parseError xs = error $ "Parse error " ++ show xs

data Token
  = TokenVar String
  | TokenInt Int
  | TokenBoolean Bool
  | TokenLet
  | TokenIn
  | TokenUnpack
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenCond
  | TokenEnd
  | TokenProc
  | TokenIsZero
  | TokenNegate
  | TokenNot
  | TokenCons
  | TokenList
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
  | TokenLongArrow
  | TokenPrint
  deriving (Show)

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

reservedKeywords = [
  "let",
  "in",
  "unpack",
  "if",
  "then",
  "else",
  "cond",
  "end",
  "proc",
  "true",
  "false",
  "isZero",
  "not",
  "minus",
  "cons",
  "list",
  "print"
  ]

lexKeyword :: String -> Token
lexKeyword "let"    = TokenLet
lexKeyword "in"     = TokenIn
lexKeyword "unpack" = TokenUnpack
lexKeyword "if"     = TokenIf
lexKeyword "then"   = TokenThen
lexKeyword "else"   = TokenElse
lexKeyword "cond"   = TokenCond
lexKeyword "end"    = TokenEnd
lexKeyword "proc"    = TokenProc
lexKeyword "true"   = TokenBoolean True
lexKeyword "false"  = TokenBoolean False
lexKeyword "isZero" = TokenIsZero
lexKeyword "not"    = TokenNot
lexKeyword "minus"  = TokenNegate
lexKeyword "cons"   = TokenCons
lexKeyword "list"   = TokenList
lexKeyword "print"  = TokenPrint
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '[', ']', '&', '|', '!', '<', '>', ',']

lexOperator :: String -> [Token]
lexOperator ('=':'=':'>':cs) = TokenLongArrow : lexer cs
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