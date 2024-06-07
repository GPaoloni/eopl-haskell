import System.Environment (getArgs)

import Env (emptyEnv)
import Parser (parseExpr)
import qualified AST
import Evaluator

main :: IO ()
main = do
  args <- getArgs
  case args of
    [inputFilePath] -> do
      input <- readFile inputFilePath
      let parsed = parseExpr input
      print parsed
      -- print $ evalExpr (emptyEnv ()) parsed
      handleResult $ evalExpr (emptyEnv ()) parsed 
    _ -> putStrLn "Missing inputFilePath, expected as command-line argument"

handleResult :: ExprResult -> IO ()
handleResult (Right result) = print result
handleResult (Left errorMsg) = putStrLn $ "Error: " ++ errorMsg
