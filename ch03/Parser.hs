{-# OPTIONS_GHC -w #-}
module Parser (parseExpr) where

import qualified AST
import qualified Data.Char as T
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,170) ([40960,16499,0,32775,0,0,0,24576,0,0,3,0,0,0,0,0,0,29440,0,1792,128,0,0,0,0,0,0,0,48,0,0,0,0,0,1,0,0,0,460,0,28,2,0,0,0,0,0,0,512,0,0,0,58880,0,0,8,34816,3,4096,7,0,4096,0,1,49152,8192,32768,16385,0,32771,0,6,1,32768,1,0,3,0,0,0,0,448,32,0,0,0,1,0,0,40192,515,16384,0,28672,2062,0,2,0,4,0,115,32768,0,32768,462,1,920,0,56,4,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","IntExpr","Term","Factor","Primary","BoolExpr","IfBoolExpr","BoolTerm","BoolFactor","Predicate","let","in","int","var","if","then","else","isZero","true","false","and","or","'='","'+'","'-'","'*'","'/'","'('","')'","%eof"]
        bit_start = st Prelude.* 33
        bit_end = (st Prelude.+ 1) Prelude.* 33
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..32]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (14) = happyShift action_16
action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_17
action_0 (18) = happyShift action_18
action_0 (21) = happyShift action_19
action_0 (22) = happyShift action_20
action_0 (23) = happyShift action_21
action_0 (31) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_11
action_0 (10) = happyGoto action_12
action_0 (11) = happyGoto action_13
action_0 (12) = happyGoto action_14
action_0 (13) = happyGoto action_15
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (16) = happyShift action_6
action_1 (17) = happyShift action_7
action_1 (18) = happyShift action_8
action_1 (31) = happyShift action_9
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (27) = happyShift action_33
action_3 (28) = happyShift action_34
action_3 _ = happyReduce_4

action_4 (29) = happyShift action_31
action_4 (30) = happyShift action_32
action_4 _ = happyReduce_6

action_5 _ = happyReduce_9

action_6 _ = happyReduce_12

action_7 _ = happyReduce_13

action_8 (17) = happyShift action_24
action_8 (18) = happyShift action_25
action_8 (21) = happyShift action_19
action_8 (22) = happyShift action_20
action_8 (23) = happyShift action_21
action_8 (9) = happyGoto action_30
action_8 (10) = happyGoto action_12
action_8 (11) = happyGoto action_13
action_8 (12) = happyGoto action_14
action_8 (13) = happyGoto action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (18) = happyShift action_8
action_9 (31) = happyShift action_9
action_9 (5) = happyGoto action_29
action_9 (6) = happyGoto action_3
action_9 (7) = happyGoto action_4
action_9 (8) = happyGoto action_5
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (33) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_2

action_12 _ = happyReduce_16

action_13 (24) = happyShift action_27
action_13 (25) = happyShift action_28
action_13 _ = happyReduce_15

action_14 _ = happyReduce_18

action_15 _ = happyReduce_24

action_16 (17) = happyShift action_26
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (15) = happyReduce_23
action_17 (20) = happyReduce_23
action_17 (27) = happyReduce_13
action_17 (28) = happyReduce_13
action_17 (29) = happyReduce_13
action_17 (30) = happyReduce_13
action_17 (33) = happyReduce_23
action_17 _ = happyReduce_23

action_18 (17) = happyShift action_24
action_18 (18) = happyShift action_25
action_18 (21) = happyShift action_19
action_18 (22) = happyShift action_20
action_18 (23) = happyShift action_21
action_18 (9) = happyGoto action_23
action_18 (10) = happyGoto action_12
action_18 (11) = happyGoto action_13
action_18 (12) = happyGoto action_14
action_18 (13) = happyGoto action_15
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (16) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (18) = happyShift action_8
action_19 (31) = happyShift action_9
action_19 (5) = happyGoto action_22
action_19 (6) = happyGoto action_3
action_19 (7) = happyGoto action_4
action_19 (8) = happyGoto action_5
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_21

action_21 _ = happyReduce_22

action_22 _ = happyReduce_25

action_23 (19) = happyShift action_45
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_23

action_25 (17) = happyShift action_24
action_25 (18) = happyShift action_25
action_25 (21) = happyShift action_19
action_25 (22) = happyShift action_20
action_25 (23) = happyShift action_21
action_25 (9) = happyGoto action_44
action_25 (10) = happyGoto action_12
action_25 (11) = happyGoto action_13
action_25 (12) = happyGoto action_14
action_25 (13) = happyGoto action_15
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (17) = happyShift action_24
action_27 (21) = happyShift action_19
action_27 (22) = happyShift action_20
action_27 (23) = happyShift action_21
action_27 (11) = happyGoto action_42
action_27 (12) = happyGoto action_14
action_27 (13) = happyGoto action_15
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_24
action_28 (21) = happyShift action_19
action_28 (22) = happyShift action_20
action_28 (23) = happyShift action_21
action_28 (11) = happyGoto action_41
action_28 (12) = happyGoto action_14
action_28 (13) = happyGoto action_15
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (32) = happyShift action_40
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_39
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_6
action_31 (17) = happyShift action_7
action_31 (31) = happyShift action_9
action_31 (8) = happyGoto action_38
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (16) = happyShift action_6
action_32 (17) = happyShift action_7
action_32 (31) = happyShift action_9
action_32 (8) = happyGoto action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (16) = happyShift action_6
action_33 (17) = happyShift action_7
action_33 (31) = happyShift action_9
action_33 (7) = happyGoto action_36
action_33 (8) = happyGoto action_5
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (16) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (31) = happyShift action_9
action_34 (7) = happyGoto action_35
action_34 (8) = happyGoto action_5
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (29) = happyShift action_31
action_35 (30) = happyShift action_32
action_35 _ = happyReduce_8

action_36 (29) = happyShift action_31
action_36 (30) = happyShift action_32
action_36 _ = happyReduce_7

action_37 _ = happyReduce_11

action_38 _ = happyReduce_10

action_39 (16) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (18) = happyShift action_8
action_39 (31) = happyShift action_9
action_39 (5) = happyGoto action_46
action_39 (6) = happyGoto action_3
action_39 (7) = happyGoto action_4
action_39 (8) = happyGoto action_5
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_14

action_41 (24) = happyShift action_27
action_41 _ = happyReduce_20

action_42 _ = happyReduce_19

action_43 (14) = happyShift action_16
action_43 (16) = happyShift action_6
action_43 (17) = happyShift action_17
action_43 (18) = happyShift action_18
action_43 (21) = happyShift action_19
action_43 (22) = happyShift action_20
action_43 (23) = happyShift action_21
action_43 (31) = happyShift action_9
action_43 (4) = happyGoto action_49
action_43 (5) = happyGoto action_2
action_43 (6) = happyGoto action_3
action_43 (7) = happyGoto action_4
action_43 (8) = happyGoto action_5
action_43 (9) = happyGoto action_11
action_43 (10) = happyGoto action_12
action_43 (11) = happyGoto action_13
action_43 (12) = happyGoto action_14
action_43 (13) = happyGoto action_15
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (19) = happyShift action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (16) = happyShift action_6
action_45 (17) = happyShift action_17
action_45 (18) = happyShift action_18
action_45 (21) = happyShift action_19
action_45 (22) = happyShift action_20
action_45 (23) = happyShift action_21
action_45 (31) = happyShift action_9
action_45 (5) = happyGoto action_46
action_45 (6) = happyGoto action_3
action_45 (7) = happyGoto action_4
action_45 (8) = happyGoto action_5
action_45 (9) = happyGoto action_47
action_45 (10) = happyGoto action_12
action_45 (11) = happyGoto action_13
action_45 (12) = happyGoto action_14
action_45 (13) = happyGoto action_15
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_52
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (20) = happyShift action_51
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (17) = happyShift action_24
action_48 (18) = happyShift action_25
action_48 (21) = happyShift action_19
action_48 (22) = happyShift action_20
action_48 (23) = happyShift action_21
action_48 (9) = happyGoto action_47
action_48 (10) = happyGoto action_12
action_48 (11) = happyGoto action_13
action_48 (12) = happyGoto action_14
action_48 (13) = happyGoto action_15
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (15) = happyShift action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (14) = happyShift action_16
action_50 (16) = happyShift action_6
action_50 (17) = happyShift action_17
action_50 (18) = happyShift action_18
action_50 (21) = happyShift action_19
action_50 (22) = happyShift action_20
action_50 (23) = happyShift action_21
action_50 (31) = happyShift action_9
action_50 (4) = happyGoto action_55
action_50 (5) = happyGoto action_2
action_50 (6) = happyGoto action_3
action_50 (7) = happyGoto action_4
action_50 (8) = happyGoto action_5
action_50 (9) = happyGoto action_11
action_50 (10) = happyGoto action_12
action_50 (11) = happyGoto action_13
action_50 (12) = happyGoto action_14
action_50 (13) = happyGoto action_15
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (17) = happyShift action_24
action_51 (18) = happyShift action_25
action_51 (21) = happyShift action_19
action_51 (22) = happyShift action_20
action_51 (23) = happyShift action_21
action_51 (9) = happyGoto action_54
action_51 (10) = happyGoto action_12
action_51 (11) = happyGoto action_13
action_51 (12) = happyGoto action_14
action_51 (13) = happyGoto action_15
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (16) = happyShift action_6
action_52 (17) = happyShift action_7
action_52 (18) = happyShift action_8
action_52 (31) = happyShift action_9
action_52 (5) = happyGoto action_53
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_5
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_5

action_54 _ = happyReduce_17

action_55 _ = happyReduce_3

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.IntExpr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.BoolExpr happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (AST.LetExpr happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Term happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 6 5 happyReduction_5
happyReduction_5 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (AST.IfIntExpr happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.Factor happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.Plus happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (AST.Diff happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.Primary happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.Times happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (AST.Div happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn8
		 (AST.Int happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn8
		 (AST.IntVar happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (AST.Expr happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (AST.BoolTerm happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (AST.IfBoolExpr happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 10 happyReduction_17
happyReduction_17 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.BoolFactor happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.BoolBinOp AST.BoolAnd happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.BoolBinOp AST.BoolOr happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn12
		 (AST.Bool True
	)

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn12
		 (AST.Bool False
	)

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn12
		 (AST.BoolVar happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  12 happyReduction_24
happyReduction_24 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.Predicate happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  13 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (AST.IsZero happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 14;
	TokenIn -> cont 15;
	TokenInt happy_dollar_dollar -> cont 16;
	TokenVar happy_dollar_dollar -> cont 17;
	TokenIf -> cont 18;
	TokenThen -> cont 19;
	TokenElse -> cont 20;
	TokenIsZero -> cont 21;
	TokenTrue -> cont 22;
	TokenFalse -> cont 23;
	TokenBoolAnd -> cont 24;
	TokenBoolOr -> cont 25;
	TokenEq -> cont 26;
	TokenPlus -> cont 27;
	TokenMinus -> cont 28;
	TokenTimes -> cont 29;
	TokenDiv -> cont 30;
	TokenOB -> cont 31;
	TokenCB -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
calc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Token
  = TokenLet
  | TokenIn
  | TokenInt Int
  | TokenVar String
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenTrue
  | TokenFalse
  | TokenOB
  | TokenCB
  | TokenBoolAnd
  | TokenBoolOr
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '&', '|']

reservedKeywords = [
  "let",
  "in",
  "if",
  "then",
  "else",
  "true",
  "false",
  "isZero"
  ]

lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
  | T.isSpace c = lexer cs
  | T.isDigit c = lexNumber (c:cs)
  | T.isAlpha c = lexAlpha (c:cs)
  | elem c reservedOperators = lexOperator (c:cs)

lexNumber :: String -> [Token]
lexNumber cs = TokenInt (read num) : lexer rest
  where (num, rest) = span T.isDigit cs

lexAlpha :: String -> [Token]
lexAlpha cs =
  case span T.isAlpha cs of
    (word, rest) ->
      if elem word reservedKeywords 
        then lexKeyword word : lexer rest
        else TokenVar word : lexer rest
        
lexKeyword :: String -> Token
lexKeyword "let"    = TokenLet
lexKeyword "in"     = TokenIn
lexKeyword "if"     = TokenIf
lexKeyword "then"   = TokenThen
lexKeyword "else"   = TokenElse
lexKeyword "true"   = TokenTrue
lexKeyword "false"  = TokenFalse
lexKeyword "isZero" = TokenIsZero
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

lexOperator :: String -> [Token]
lexOperator ('=':cs) = TokenEq : lexer cs
lexOperator ('+':cs) = TokenPlus : lexer cs
lexOperator ('-':cs) = TokenMinus : lexer cs
lexOperator ('*':cs) = TokenTimes : lexer cs
lexOperator ('/':cs) = TokenDiv : lexer cs
lexOperator ('(':cs) = TokenOB : lexer cs
lexOperator (')':cs) = TokenCB : lexer cs
lexOperator ('&':'&':cs) = TokenBoolAnd : lexer cs
lexOperator ('|':'|':cs) = TokenBoolOr : lexer cs
lexOperator (c:_)    = error $ "Unexpected operator: " ++ [c]

parseExpr :: String -> AST.Expr
parseExpr = calc . lexer
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
