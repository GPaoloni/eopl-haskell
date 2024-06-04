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
  if        { TokenIf }
  then      { TokenThen }
  else      { TokenElse }
  isZero    { TokenIsZero }
  true      { TokenTrue }
  false     { TokenFalse }
  and       { TokenBoolAnd }
  or        { TokenBoolOr }
  '='       { TokenEq }
  '+'       { TokenPlus }
  '-'       { TokenMinus }
  '*'       { TokenTimes }
  '/'       { TokenDiv }
  '('       { TokenOB }
  ')'       { TokenCB }

%left or
%left and
%left '+' '-'
%left '*' '/'

%%

Expr
  : IntExpr                               { AST.IntExpr $1 }
  | BoolExpr                              { AST.BoolExpr $1 }
  | let var '=' Expr in Expr              { AST.LetExpr $2 $4 $6 }
  -- | let var '=' IntExpr in IntExpr         { AST.LetInt $2 $4 $6 }
  -- | let var '=' BoolExpr in BoolExpr       { AST.LetBool $2 $4 $6 }   

  -- | '-' '(' int ')'              { AST.Const $ AST.Num (- $3) }

IntExpr
  : Term                                 { AST.Term $1 }
  | if BoolExpr then IntExpr else IntExpr   { AST.IfIntExpr $2 $4 $6 }

Term
  : Factor                               { AST.Factor $1 }
  | Term '+' Factor                      { AST.Plus $1 $3 }
  | Term '-' Factor                      { AST.Diff $1 $3 }

Factor
  : Primary                              { AST.Primary $1 }
  | Factor '*' Primary                   { AST.Times $1 $3 }
  | Factor '/' Primary                   { AST.Div $1 $3 }

Primary
  : int                                  { AST.Int $1 }
  | var                                  { AST.IntVar $1 }
  | '(' IntExpr ')'                       { AST.Expr $2 }

BoolExpr
  : BoolTerm                             { AST.BoolTerm $1 }
  | IfBoolExpr                            { AST.IfBoolExpr $1 }

IfBoolExpr
  : if BoolExpr then BoolExpr else BoolExpr { AST.If $2 $4 $6 }

BoolTerm
  : BoolFactor                           { AST.BoolFactor $1 }
  | BoolTerm and BoolTerm                { AST.BoolBinOp AST.BoolAnd $1 $3 }
  | BoolTerm or BoolTerm                 { AST.BoolBinOp AST.BoolOr $1 $3 }

BoolFactor
  : true                                 { AST.Bool True }
  | false                                { AST.Bool False }
  | var                                  { AST.BoolVar $1 }
  | Predicate                            { AST.Predicate $1 }

Predicate
  : isZero IntExpr                        { AST.IsZero $2 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Token
  = TokenLet
  | TokenIn
  | TokenInt Int
  | TokenVar String
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenTrue
  | TokenFalse
  | TokenOB
  | TokenCB
  | TokenBoolAnd
  | TokenBoolOr
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '&', '|']

reservedKeywords = [
  "let",
  "in",
  "if",
  "then",
  "else",
  "true",
  "false",
  "isZero"
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
lexKeyword "true"   = TokenTrue
lexKeyword "false"  = TokenFalse
lexKeyword "isZero" = TokenIsZero
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

lexOperator :: String -> [Token]
lexOperator ('=':cs) = TokenEq : lexer cs
lexOperator ('+':cs) = TokenPlus : lexer cs
lexOperator ('-':cs) = TokenMinus : lexer cs
lexOperator ('*':cs) = TokenTimes : lexer cs
lexOperator ('/':cs) = TokenDiv : lexer cs
lexOperator ('(':cs) = TokenOB : lexer cs
lexOperator (')':cs) = TokenCB : lexer cs
lexOperator ('&':'&':cs) = TokenBoolAnd : lexer cs
lexOperator ('|':'|':cs) = TokenBoolOr : lexer cs
lexOperator (c:_)    = error $ "Unexpected operator: " ++ [c]

parseExpr :: String -> AST.Expr
parseExpr = calc . lexer
}