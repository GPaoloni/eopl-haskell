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
    in (trimSpaces $ unlines expr, trimSpaces $ unlines $ tail rest)

trimSpaces :: String -> String
trimSpaces = trimLeading . reverse . trimLeading . reverse
  where
    trimLeading [] = []
    trimLeading (x:xs) =
      if isSpace x then trimLeading xs else x:xs
