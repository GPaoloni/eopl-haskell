module Lib (parseAndEvaluate) where

import Parser (parseExpr)
import Evaluator (Result, LetEnv, runEvalExpr)
import Env (emptyEnv)
parseAndEvaluate :: String -> IO (Either String Result, LetEnv)
parseAndEvaluate input = do
  let parsed = parseExpr input
  runEvalExpr (emptyEnv ()) parsed 
