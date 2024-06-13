import AST qualified
import Env (emptyEnv)
import Evaluator
import Parser (parseExpr)
import SList
import System.Environment (getArgs)

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
handleResult (Right result) = ppResult result >>= print
handleResult (Left errorMsg) = putStrLn $ "Error: " ++ errorMsg

ppResult :: Result -> IO String
ppResult (RInt n) = return $ show n
ppResult (RBool b) = return $ show b
ppResult (RList list) = ppList list
  where ppList [] = return ""
        ppList [x] = do
          x' <- ppResult x
          return $ "[ " ++ x' ++ " ]"
        ppList (x:xs) = do
          x' <- ppResult x
          xs' <- ppList xs
          return $ "[ " ++ x' ++ "," ++ xs' ++ " ]"
          
