-- Exercise 2.15 [★] Implement the lambda-calculus expression interface for the representation specified by the grammar above.

data LcExp = Var String | Lambda String LcExp | App LcExp LcExp
  deriving (Eq, Show)

varExp :: String -> LcExp
varExp = Var

lambdaExp :: String -> LcExp -> LcExp
lambdaExp = Lambda

appExp :: LcExp -> LcExp -> LcExp
appExp = App

isVar :: LcExp -> Bool
isVar (Var _) = True
isVar _ = False

isLambda :: LcExp -> Bool
isLambda (Lambda _ _) = True
isLambda _ = False

isApp :: LcExp -> Bool
isApp (App _ _) = True
isApp _ = False

var :: LcExp -> Maybe String
var (Var var) = Just var
var _ = Nothing

lambdaVar :: LcExp -> Maybe String
lambdaVar (Lambda var exp) = Just var
lambdaVar _ = Nothing

lambdaExpt :: LcExp -> Maybe LcExp
lambdaExpt (Lambda var exp) = Just exp
lambdaExpt _ = Nothing

appOperator :: LcExp -> Maybe LcExp
appOperator (App rator rand) = Just rator
appOperator _ = Nothing

appOperand :: LcExp -> Maybe LcExp
appOperand (App rator rand) = Just rand
appOperand _ = Nothing

