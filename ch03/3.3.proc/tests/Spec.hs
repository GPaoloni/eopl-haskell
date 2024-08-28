module Main where

import System.Directory (listDirectory)
import System.FilePath ((</>))
import Control.Monad (forM_)
import Parser (parseExpr)
import Evaluator (runEvalExpr, Result)
import AST (Expr) -- Assuming your AST module defines an Expr type
import System.Exit (exitFailure, exitSuccess)
import Control.Exception (try, SomeException)
import Env (emptyEnv)
import Lib (parseAndEvaluate)
import Test.Hspec
import Data.Char

-- main :: IO ()
-- main = do
--     files <- listDirectory "tests"
--     let testFiles = map ("tests" </>) files
--     results <- mapM runTest testFiles
--     if and results then exitSuccess else exitFailure

-- runTest :: FilePath -> IO Bool
-- runTest filePath = do
--     content <- readFile filePath
--     let (exprLines, expectedLine) = splitAtSeparator (lines content)
--     (resultOrError, _) <- parseAndEvaluate (unlines exprLines)
--     case resultOrError of
--         Left err -> handleFailure filePath (show err) expectedLine
--         Right result -> handleSuccess filePath result expectedLine

main :: IO ()
main = do
  testFiles <- listDirectory "tests/TestFiles"
  hspec $ do
    describe "Evaluator" $
      mapM_ (createTest "tests/TestFiles") testFiles

createTest :: FilePath -> FilePath -> Spec
createTest baseDir fileName = do
  it ("correctly evaluates expression in " ++ fileName) $ do
    content <- readFile (baseDir </> fileName)
    let (expr, expected) = splitAtSeparator content
    (resultOrError, _) <- parseAndEvaluate expr
    case resultOrError of
      Left err -> show err `shouldBe` expected
      Right result -> show result `shouldBe` expected

splitAtSeparator :: String -> (String, String)
splitAtSeparator s =
    let (expr, rest) = break (== "==========") (lines s)
    in (trimSpaces $ unlines expr, trimSpaces $ unlines $ tail rest)  -- drop "===" and keep the rest as expected output

-- | This function takes a string and trims all trailing whitespace characters from it
trimSpaces :: String -> String
trimSpaces = trimLeading . reverse . trimLeading . reverse
  where
    trimLeading [] = []
    trimLeading (x:xs) =
      if isSpace x then trimLeading xs else x:xs

-- handleFailure :: FilePath -> String -> String -> IO Bool
-- handleFailure filePath errMsg expected =
--     if errMsg == expected
--     then do
--         putStrLn $ "Test passed for: " ++ filePath
--         return True
--     else do
--         putStrLn $ "Test failed for: " ++ filePath
--         putStrLn $ "  Expected error: " ++ expected
--         putStrLn $ "  Got: " ++ errMsg
--         return False

-- handleSuccess :: FilePath -> Result -> String -> IO Bool
-- handleSuccess filePath result expected =
--     -- let expectedInt = read expected :: Result in
--     if show result == expected
--     then do
--         putStrLn $ "Test passed for: " ++ filePath
--         return True
--     else do
--         putStrLn $ "Test failed for: " ++ filePath
--         putStrLn $ "  Expected: " ++ show expected
--         putStrLn $ "  Got: " ++ show result
--         return False
