import Control.Monad ((>=>))
import Env (emptyEnv)
import Evaluator
import Lib (parseAndEvaluate)
import Parser (parseExpr)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [inputFilePath] -> do
      input <- readFile inputFilePath
      let parsed = parseExpr input
      print parsed
      result <- runEvalExpr (emptyEnv ()) parsed
      -- result <- parseAndEvaluate input
      handleResult result
    _ -> putStrLn "Missing inputFilePath, expected as command-line argument"

handleResult :: (Either String Result, LetEnv) -> IO ()
handleResult (result, env) = do
  putStrLn $ "Final state:" ++ show env
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
ppResult (RClosure var body env) = return $ "closure: " ++ " var: " ++ show var ++ " body: " ++ show body ++ " env: " ++ show env
