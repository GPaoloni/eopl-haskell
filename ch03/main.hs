import System.Environment (getArgs)

import Env (emptyEnv)
-- import Evaluator (evalExp)
import Parser (parseExpr)
import qualified AST

main :: IO ()
main = do
  args <- getArgs
  case args of
    [inputFilePath] -> do
      input <- readFile inputFilePath
      let parsed = parseExpr input
      print parsed
      -- handleResult $ evalExp parsed (emptyEnv ())
    _ -> putStrLn "Missing inputFilePath, expected as command-line argument"

-- handleResult :: Either String AST.ExpVal -> IO ()
-- handleResult (Right result) = print result
-- handleResult (Left errorMsg) = putStrLn $ "Error: " ++ errorMsg
