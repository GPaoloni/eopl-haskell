{-# LANGUAGE LambdaCase #-}

import Data.Maybe

-- Exercise 2.12 [★] Implement the stack data type of exercise 2.4 using a procedural representation.

data StackOp = IsEmpty | Push | Pop | Top

type Stack a = StackOp -> StackResult a

data StackResult a = Failure | Stack (Stack a) | Val (Maybe a) | Bool Bool

instance (Eq a) => Eq (StackResult a) where
  Failure == Failure = True
  Val a == Val b = a == b
  Bool a == Bool b = a == b
  _ == _ = False

emptyStack :: Stack a
emptyStack =
  \case
    IsEmpty -> Bool True
    _ -> Failure

push :: a -> Stack a -> Stack a
push val stack =
  \case
    IsEmpty -> Bool False
    Pop -> Stack stack
    Top -> Val $ Just val
    _ -> Failure

pop :: Stack a -> StackResult a
pop stackFun = stackFun Pop

top :: Stack a -> StackResult a
top stackFun = stackFun Top

isEmtpy :: Stack a -> StackResult a
isEmtpy stackFun = stackFun IsEmpty


checkStack :: (Stack a -> Bool) -> StackResult a -> Bool
checkStack predicate = \case 
    Stack s -> predicate s
    _ -> False

-- Helper function to print a test result
printTestResult :: Bool -> String -> IO ()
printTestResult True msg = putStrLn $ "[ OK ] " ++ msg
printTestResult False msg = putStrLn $ "[FAIL] " ++ msg

-- Helper function to extract the Maybe value from a StackResult
extractVal :: StackResult a -> Maybe a
extractVal (Val v) = v
extractVal _ = Nothing

-- Unit tests
testEmptyStack = do
  let result = emptyStack IsEmpty :: StackResult Int
  printTestResult (result == Bool True) "emptyStack"

testPushPop = do
  let pushed = push 1 emptyStack
  printTestResult (pushed IsEmpty == Bool False) "push 1"

  let pop1 = pop $ push 2 (push 1 emptyStack)
  printTestResult (checkStack (\s -> isEmtpy s == Bool False) pop1) "pop 1"

  let popEmpty = pop (push 1 emptyStack)
  case popEmpty of
    Stack s -> printTestResult (isEmtpy s == Bool True) "pop empty"
    _ -> printTestResult False "pop empty"

testTop = do
  let top1 = top (push 1 emptyStack) :: StackResult Int
  printTestResult (extractVal top1 == Just 1) "top 1"

  let topEmpty = top emptyStack :: StackResult Int
  printTestResult (topEmpty == Failure) "top empty"

testIsEmpty = do
  printTestResult (isEmtpy (emptyStack :: Stack Int) == Bool True) "empty"
  let notEmpty = push 1 emptyStack
  printTestResult (isEmtpy notEmpty == Bool False) "not empty"

main = do
  testEmptyStack
  testPushPop
  testTop
  testIsEmpty
