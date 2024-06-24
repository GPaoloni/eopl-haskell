import Control.Monad.Except (runExceptT)
import Env (emptyEnv)
import Evaluator
import Parser (parseExpr)
import System.Environment (getArgs)
import Control.Monad ((>=>))

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

handleResult :: EvalMonad Result -> IO ()
handleResult resultM = do
  result <- runExceptT resultM
  either (\errorMsg -> putStrLn $ "Error: " ++ errorMsg) (ppResult >=> print) result

ppResult :: Result -> IO String
ppResult (RInt n) = return $ show n
ppResult (RBool b) = return $ show b
ppResult (RList list) = ppList' list
  where
    ppList' xs = do
      xs' <- ppList xs
      return $ "[ " ++ xs' ++ " ]"
    ppList [] = return ""
    ppList [x] = ppResult x
    ppList (x : xs) = do
      x' <- ppResult x
      xs' <- ppList xs
      return $ x' ++ ", " ++ xs'
