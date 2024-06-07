{-# OPTIONS_GHC -w #-}
module Parser (parseExpr) where

import qualified AST
import qualified Data.Char as T
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,216) ([16384,463,8,1792,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,463,8,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,384,0,0,6,0,0,0,2,0,53056,2049,0,0,8,0,2048,0,0,8,53056,2049,16384,463,8,53056,2049,0,1552,0,0,64,0,7,8,1792,2048,0,7,8,1792,2048,16384,463,8,53056,2049,0,1536,16,0,0,0,0,0,0,0,0,0,6,0,0,0,0,6,0,0,0,0,0,53056,2049,16384,463,8,0,4102,0,1536,16,0,4102,0,0,0,0,0,0,0,0,8192,6,32768,1536,0,53056,2049,16384,463,8,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","BinOp","UnOp","LetExpr","IfExpr","ArithExpr","ArithTerm","ArithFactor","Primary","Literal","Variable","let","in","int","var","boolean","if","then","else","isZero","minus","not","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","%eof"]
        bit_start = st Prelude.* 40
        bit_end = (st Prelude.+ 1) Prelude.* 40
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..39]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_18
action_0 (17) = happyShift action_5
action_0 (18) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (20) = happyShift action_19
action_0 (23) = happyShift action_20
action_0 (24) = happyShift action_21
action_0 (25) = happyShift action_22
action_0 (36) = happyShift action_8
action_0 (4) = happyGoto action_9
action_0 (5) = happyGoto action_10
action_0 (6) = happyGoto action_11
action_0 (7) = happyGoto action_12
action_0 (8) = happyGoto action_13
action_0 (9) = happyGoto action_14
action_0 (10) = happyGoto action_15
action_0 (11) = happyGoto action_16
action_0 (12) = happyGoto action_17
action_0 (13) = happyGoto action_3
action_0 (14) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_5
action_1 (18) = happyShift action_6
action_1 (19) = happyShift action_7
action_1 (36) = happyShift action_8
action_1 (12) = happyGoto action_2
action_1 (13) = happyGoto action_3
action_1 (14) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_21

action_4 _ = happyReduce_22

action_5 _ = happyReduce_24

action_6 _ = happyReduce_26

action_7 _ = happyReduce_25

action_8 (15) = happyShift action_18
action_8 (17) = happyShift action_5
action_8 (18) = happyShift action_6
action_8 (19) = happyShift action_7
action_8 (20) = happyShift action_19
action_8 (23) = happyShift action_20
action_8 (24) = happyShift action_21
action_8 (25) = happyShift action_22
action_8 (36) = happyShift action_8
action_8 (4) = happyGoto action_34
action_8 (5) = happyGoto action_10
action_8 (6) = happyGoto action_11
action_8 (7) = happyGoto action_12
action_8 (8) = happyGoto action_13
action_8 (9) = happyGoto action_14
action_8 (10) = happyGoto action_15
action_8 (11) = happyGoto action_16
action_8 (12) = happyGoto action_17
action_8 (13) = happyGoto action_3
action_8 (14) = happyGoto action_4
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (26) = happyShift action_32
action_9 (27) = happyShift action_33
action_9 (40) = happyAccept
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_5

action_11 _ = happyReduce_6

action_12 _ = happyReduce_3

action_13 _ = happyReduce_4

action_14 _ = happyReduce_2

action_15 (32) = happyShift action_30
action_15 (33) = happyShift action_31
action_15 _ = happyReduce_14

action_16 (34) = happyShift action_28
action_16 (35) = happyShift action_29
action_16 _ = happyReduce_15

action_17 (16) = happyReduce_18
action_17 (21) = happyReduce_18
action_17 (22) = happyReduce_18
action_17 (26) = happyReduce_18
action_17 (27) = happyReduce_18
action_17 (37) = happyReduce_18
action_17 (40) = happyReduce_18
action_17 _ = happyReduce_18

action_18 (18) = happyShift action_27
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (15) = happyShift action_18
action_19 (17) = happyShift action_5
action_19 (18) = happyShift action_6
action_19 (19) = happyShift action_7
action_19 (20) = happyShift action_19
action_19 (23) = happyShift action_20
action_19 (24) = happyShift action_21
action_19 (25) = happyShift action_22
action_19 (36) = happyShift action_8
action_19 (4) = happyGoto action_26
action_19 (5) = happyGoto action_10
action_19 (6) = happyGoto action_11
action_19 (7) = happyGoto action_12
action_19 (8) = happyGoto action_13
action_19 (9) = happyGoto action_14
action_19 (10) = happyGoto action_15
action_19 (11) = happyGoto action_16
action_19 (12) = happyGoto action_17
action_19 (13) = happyGoto action_3
action_19 (14) = happyGoto action_4
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (36) = happyShift action_25
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (36) = happyShift action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (36) = happyShift action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (15) = happyShift action_18
action_23 (17) = happyShift action_5
action_23 (18) = happyShift action_6
action_23 (19) = happyShift action_7
action_23 (20) = happyShift action_19
action_23 (23) = happyShift action_20
action_23 (24) = happyShift action_21
action_23 (25) = happyShift action_22
action_23 (36) = happyShift action_8
action_23 (4) = happyGoto action_47
action_23 (5) = happyGoto action_10
action_23 (6) = happyGoto action_11
action_23 (7) = happyGoto action_12
action_23 (8) = happyGoto action_13
action_23 (9) = happyGoto action_14
action_23 (10) = happyGoto action_15
action_23 (11) = happyGoto action_16
action_23 (12) = happyGoto action_17
action_23 (13) = happyGoto action_3
action_23 (14) = happyGoto action_4
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_18
action_24 (17) = happyShift action_5
action_24 (18) = happyShift action_6
action_24 (19) = happyShift action_7
action_24 (20) = happyShift action_19
action_24 (23) = happyShift action_20
action_24 (24) = happyShift action_21
action_24 (25) = happyShift action_22
action_24 (36) = happyShift action_8
action_24 (4) = happyGoto action_46
action_24 (5) = happyGoto action_10
action_24 (6) = happyGoto action_11
action_24 (7) = happyGoto action_12
action_24 (8) = happyGoto action_13
action_24 (9) = happyGoto action_14
action_24 (10) = happyGoto action_15
action_24 (11) = happyGoto action_16
action_24 (12) = happyGoto action_17
action_24 (13) = happyGoto action_3
action_24 (14) = happyGoto action_4
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_18
action_25 (17) = happyShift action_5
action_25 (18) = happyShift action_6
action_25 (19) = happyShift action_7
action_25 (20) = happyShift action_19
action_25 (23) = happyShift action_20
action_25 (24) = happyShift action_21
action_25 (25) = happyShift action_22
action_25 (36) = happyShift action_8
action_25 (4) = happyGoto action_45
action_25 (5) = happyGoto action_10
action_25 (6) = happyGoto action_11
action_25 (7) = happyGoto action_12
action_25 (8) = happyGoto action_13
action_25 (9) = happyGoto action_14
action_25 (10) = happyGoto action_15
action_25 (11) = happyGoto action_16
action_25 (12) = happyGoto action_17
action_25 (13) = happyGoto action_3
action_25 (14) = happyGoto action_4
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (21) = happyShift action_44
action_26 (26) = happyShift action_32
action_26 (27) = happyShift action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (31) = happyShift action_43
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (17) = happyShift action_5
action_28 (18) = happyShift action_6
action_28 (19) = happyShift action_7
action_28 (36) = happyShift action_8
action_28 (12) = happyGoto action_42
action_28 (13) = happyGoto action_3
action_28 (14) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (17) = happyShift action_5
action_29 (18) = happyShift action_6
action_29 (19) = happyShift action_7
action_29 (36) = happyShift action_8
action_29 (12) = happyGoto action_41
action_29 (13) = happyGoto action_3
action_29 (14) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (17) = happyShift action_5
action_30 (18) = happyShift action_6
action_30 (19) = happyShift action_7
action_30 (36) = happyShift action_8
action_30 (11) = happyGoto action_40
action_30 (12) = happyGoto action_39
action_30 (13) = happyGoto action_3
action_30 (14) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (17) = happyShift action_5
action_31 (18) = happyShift action_6
action_31 (19) = happyShift action_7
action_31 (36) = happyShift action_8
action_31 (11) = happyGoto action_38
action_31 (12) = happyGoto action_39
action_31 (13) = happyGoto action_3
action_31 (14) = happyGoto action_4
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (15) = happyShift action_18
action_32 (17) = happyShift action_5
action_32 (18) = happyShift action_6
action_32 (19) = happyShift action_7
action_32 (20) = happyShift action_19
action_32 (23) = happyShift action_20
action_32 (24) = happyShift action_21
action_32 (25) = happyShift action_22
action_32 (36) = happyShift action_8
action_32 (4) = happyGoto action_37
action_32 (5) = happyGoto action_10
action_32 (6) = happyGoto action_11
action_32 (7) = happyGoto action_12
action_32 (8) = happyGoto action_13
action_32 (9) = happyGoto action_14
action_32 (10) = happyGoto action_15
action_32 (11) = happyGoto action_16
action_32 (12) = happyGoto action_17
action_32 (13) = happyGoto action_3
action_32 (14) = happyGoto action_4
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_18
action_33 (17) = happyShift action_5
action_33 (18) = happyShift action_6
action_33 (19) = happyShift action_7
action_33 (20) = happyShift action_19
action_33 (23) = happyShift action_20
action_33 (24) = happyShift action_21
action_33 (25) = happyShift action_22
action_33 (36) = happyShift action_8
action_33 (4) = happyGoto action_36
action_33 (5) = happyGoto action_10
action_33 (6) = happyGoto action_11
action_33 (7) = happyGoto action_12
action_33 (8) = happyGoto action_13
action_33 (9) = happyGoto action_14
action_33 (10) = happyGoto action_15
action_33 (11) = happyGoto action_16
action_33 (12) = happyGoto action_17
action_33 (13) = happyGoto action_3
action_33 (14) = happyGoto action_4
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (26) = happyShift action_32
action_34 (27) = happyShift action_33
action_34 (37) = happyShift action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_23

action_36 _ = happyReduce_8

action_37 _ = happyReduce_7

action_38 (34) = happyShift action_28
action_38 (35) = happyShift action_29
action_38 _ = happyReduce_17

action_39 _ = happyReduce_18

action_40 (34) = happyShift action_28
action_40 (35) = happyShift action_29
action_40 _ = happyReduce_16

action_41 _ = happyReduce_20

action_42 _ = happyReduce_19

action_43 (15) = happyShift action_18
action_43 (17) = happyShift action_5
action_43 (18) = happyShift action_6
action_43 (19) = happyShift action_7
action_43 (20) = happyShift action_19
action_43 (23) = happyShift action_20
action_43 (24) = happyShift action_21
action_43 (25) = happyShift action_22
action_43 (36) = happyShift action_8
action_43 (4) = happyGoto action_52
action_43 (5) = happyGoto action_10
action_43 (6) = happyGoto action_11
action_43 (7) = happyGoto action_12
action_43 (8) = happyGoto action_13
action_43 (9) = happyGoto action_14
action_43 (10) = happyGoto action_15
action_43 (11) = happyGoto action_16
action_43 (12) = happyGoto action_17
action_43 (13) = happyGoto action_3
action_43 (14) = happyGoto action_4
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (15) = happyShift action_18
action_44 (17) = happyShift action_5
action_44 (18) = happyShift action_6
action_44 (19) = happyShift action_7
action_44 (20) = happyShift action_19
action_44 (23) = happyShift action_20
action_44 (24) = happyShift action_21
action_44 (25) = happyShift action_22
action_44 (36) = happyShift action_8
action_44 (4) = happyGoto action_51
action_44 (5) = happyGoto action_10
action_44 (6) = happyGoto action_11
action_44 (7) = happyGoto action_12
action_44 (8) = happyGoto action_13
action_44 (9) = happyGoto action_14
action_44 (10) = happyGoto action_15
action_44 (11) = happyGoto action_16
action_44 (12) = happyGoto action_17
action_44 (13) = happyGoto action_3
action_44 (14) = happyGoto action_4
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (26) = happyShift action_32
action_45 (27) = happyShift action_33
action_45 (37) = happyShift action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (26) = happyShift action_32
action_46 (27) = happyShift action_33
action_46 (37) = happyShift action_49
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (26) = happyShift action_32
action_47 (27) = happyShift action_33
action_47 (37) = happyShift action_48
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_9

action_49 _ = happyReduce_11

action_50 _ = happyReduce_10

action_51 (22) = happyShift action_54
action_51 (26) = happyShift action_32
action_51 (27) = happyShift action_33
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (16) = happyShift action_53
action_52 (26) = happyShift action_32
action_52 (27) = happyShift action_33
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (15) = happyShift action_18
action_53 (17) = happyShift action_5
action_53 (18) = happyShift action_6
action_53 (19) = happyShift action_7
action_53 (20) = happyShift action_19
action_53 (23) = happyShift action_20
action_53 (24) = happyShift action_21
action_53 (25) = happyShift action_22
action_53 (36) = happyShift action_8
action_53 (4) = happyGoto action_56
action_53 (5) = happyGoto action_10
action_53 (6) = happyGoto action_11
action_53 (7) = happyGoto action_12
action_53 (8) = happyGoto action_13
action_53 (9) = happyGoto action_14
action_53 (10) = happyGoto action_15
action_53 (11) = happyGoto action_16
action_53 (12) = happyGoto action_17
action_53 (13) = happyGoto action_3
action_53 (14) = happyGoto action_4
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (15) = happyShift action_18
action_54 (17) = happyShift action_5
action_54 (18) = happyShift action_6
action_54 (19) = happyShift action_7
action_54 (20) = happyShift action_19
action_54 (23) = happyShift action_20
action_54 (24) = happyShift action_21
action_54 (25) = happyShift action_22
action_54 (36) = happyShift action_8
action_54 (4) = happyGoto action_55
action_54 (5) = happyGoto action_10
action_54 (6) = happyGoto action_11
action_54 (7) = happyGoto action_12
action_54 (8) = happyGoto action_13
action_54 (9) = happyGoto action_14
action_54 (10) = happyGoto action_15
action_54 (11) = happyGoto action_16
action_54 (12) = happyGoto action_17
action_54 (13) = happyGoto action_3
action_54 (14) = happyGoto action_4
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (26) = happyShift action_32
action_55 (27) = happyShift action_33
action_55 _ = happyReduce_13

action_56 (26) = happyShift action_32
action_56 (27) = happyShift action_33
action_56 _ = happyReduce_12

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.PrimaryExpr happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.ArithExpr happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.LetExpr happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.IfExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.BinOpExpr AST.And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.BinOpExpr AST.Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 6 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.UnOpExpr AST.Not happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 6 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.UnOpExpr AST.IsZero happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 4 6 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 8 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_1  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (AST.ArithTerm happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  10 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (AST.ArithFactor happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (AST.ArithTermOp AST.Plus happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (AST.ArithTermOp AST.Minus happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.Primary happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.ArithFactorOp AST.Times happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (AST.ArithFactorOp AST.Div happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.Literal happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  12 happyReduction_22
happyReduction_22 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn12
		 (AST.Variable happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (AST.ParenExpr happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn13
		 (AST.IntLit happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn13
		 (AST.BoolLit happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  14 happyReduction_26
happyReduction_26 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn14
		 (AST.Var happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 15;
	TokenIn -> cont 16;
	TokenInt happy_dollar_dollar -> cont 17;
	TokenVar happy_dollar_dollar -> cont 18;
	TokenBoolean happy_dollar_dollar -> cont 19;
	TokenIf -> cont 20;
	TokenThen -> cont 21;
	TokenElse -> cont 22;
	TokenIsZero -> cont 23;
	TokenNegate -> cont 24;
	TokenNot -> cont 25;
	TokenBoolAnd -> cont 26;
	TokenBoolOr -> cont 27;
	TokenBoolEq -> cont 28;
	TokenBoolGt -> cont 29;
	TokenBoolLt -> cont 30;
	TokenEq -> cont 31;
	TokenPlus -> cont 32;
	TokenMinus -> cont 33;
	TokenTimes -> cont 34;
	TokenDiv -> cont 35;
	TokenOP -> cont 36;
	TokenCP -> cont 37;
	TokenOB -> cont 38;
	TokenCB -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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
parseError xs = error $ "Parse error " ++ show xs

data Token
  = TokenLet
  | TokenIn
  | TokenInt Int
  | TokenVar String
  | TokenBoolean Bool
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenNot
  | TokenNegate
  | TokenOP
  | TokenCP
  | TokenOB
  | TokenCB
  | TokenBoolAnd
  | TokenBoolOr
  | TokenBoolEq
  | TokenBoolGt
  | TokenBoolLt
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '&', '|', '!', '<', '>']

reservedKeywords = [
  "let",
  "in",
  "if",
  "then",
  "else",
  "true",
  "false",
  "isZero",
  "not",
  "minus"
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
lexKeyword "true"   = TokenBoolean True
lexKeyword "false"  = TokenBoolean False
lexKeyword "isZero" = TokenIsZero
lexKeyword "not"    = TokenNot
lexKeyword "minus"  = TokenNegate
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

lexOperator :: String -> [Token]
lexOperator ('&':'&':cs) = TokenBoolAnd : lexer cs
lexOperator ('|':'|':cs) = TokenBoolOr : lexer cs
lexOperator ('=':'=':cs) = TokenBoolEq : lexer cs
lexOperator ('>':cs) = TokenBoolGt : lexer cs
lexOperator ('<':cs) = TokenBoolLt : lexer cs
lexOperator ('=':cs) = TokenEq : lexer cs
lexOperator ('+':cs) = TokenPlus : lexer cs
lexOperator ('-':cs) = TokenMinus : lexer cs
lexOperator ('*':cs) = TokenTimes : lexer cs
lexOperator ('/':cs) = TokenDiv : lexer cs
lexOperator ('!':cs) = TokenNot : lexer cs
lexOperator ('(':cs) = TokenOP : lexer cs
lexOperator (')':cs) = TokenCP : lexer cs
lexOperator ('{':cs) = TokenOB : lexer cs
lexOperator ('}':cs) = TokenCB : lexer cs
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
