{-# OPTIONS_GHC -w #-}
module Parser (parseExpr) where

import qualified AST
import qualified Data.Char as T
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,259) ([48128,31740,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,30720,63481,0,0,32,0,1024,0,32768,0,0,16,0,512,0,16384,0,0,8,0,256,0,8192,0,0,4,0,128,0,4096,61440,61426,1,65118,61,52160,1983,30720,63481,0,65327,30,58848,991,48128,31740,32768,32663,15,62192,495,24064,15870,49152,49099,7,63864,247,16384,0,0,8192,0,64700,123,38784,3967,0,0,4,0,128,0,4096,0,0,16,0,512,0,16384,0,0,8,0,256,0,8192,0,32768,4,0,128,0,4096,12032,7935,57344,57317,3,0,0,38784,3967,61440,61426,1,65118,61,52160,1983,30720,63481,0,65327,30,58848,991,0,0,0,0,0,0,0,0,1,0,4,0,63864,247,12032,7935,0,0,8,0,256,0,8192,0,0,4,0,128,0,4096,0,0,2,0,64,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","Literal","Variable","LetExpr","IfExpr","UnOp","BinOp","var","int","boolean","let","in","if","then","else","isZero","minus","not","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","','","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_11
action_0 (12) = happyShift action_3
action_0 (13) = happyShift action_4
action_0 (14) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (23) = happyShift action_18
action_0 (24) = happyShift action_19
action_0 (25) = happyShift action_20
action_0 (26) = happyShift action_21
action_0 (28) = happyShift action_22
action_0 (29) = happyShift action_23
action_0 (30) = happyShift action_24
action_0 (31) = happyShift action_25
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_6
action_0 (7) = happyGoto action_7
action_0 (8) = happyGoto action_8
action_0 (9) = happyGoto action_9
action_0 (10) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_3
action_1 (13) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_7

action_4 _ = happyReduce_8

action_5 (37) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_9

action_12 (11) = happyShift action_39
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_11
action_13 (12) = happyShift action_3
action_13 (13) = happyShift action_4
action_13 (14) = happyShift action_12
action_13 (16) = happyShift action_13
action_13 (19) = happyShift action_14
action_13 (20) = happyShift action_15
action_13 (21) = happyShift action_16
action_13 (22) = happyShift action_17
action_13 (23) = happyShift action_18
action_13 (24) = happyShift action_19
action_13 (25) = happyShift action_20
action_13 (26) = happyShift action_21
action_13 (28) = happyShift action_22
action_13 (29) = happyShift action_23
action_13 (30) = happyShift action_24
action_13 (31) = happyShift action_25
action_13 (4) = happyGoto action_38
action_13 (5) = happyGoto action_2
action_13 (6) = happyGoto action_6
action_13 (7) = happyGoto action_7
action_13 (8) = happyGoto action_8
action_13 (9) = happyGoto action_9
action_13 (10) = happyGoto action_10
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (32) = happyShift action_37
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (32) = happyShift action_36
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (32) = happyShift action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (32) = happyShift action_34
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (32) = happyShift action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (32) = happyShift action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (32) = happyShift action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (32) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (32) = happyShift action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (32) = happyShift action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (32) = happyShift action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (32) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_11
action_26 (12) = happyShift action_3
action_26 (13) = happyShift action_4
action_26 (14) = happyShift action_12
action_26 (16) = happyShift action_13
action_26 (19) = happyShift action_14
action_26 (20) = happyShift action_15
action_26 (21) = happyShift action_16
action_26 (22) = happyShift action_17
action_26 (23) = happyShift action_18
action_26 (24) = happyShift action_19
action_26 (25) = happyShift action_20
action_26 (26) = happyShift action_21
action_26 (28) = happyShift action_22
action_26 (29) = happyShift action_23
action_26 (30) = happyShift action_24
action_26 (31) = happyShift action_25
action_26 (4) = happyGoto action_53
action_26 (5) = happyGoto action_2
action_26 (6) = happyGoto action_6
action_26 (7) = happyGoto action_7
action_26 (8) = happyGoto action_8
action_26 (9) = happyGoto action_9
action_26 (10) = happyGoto action_10
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_11
action_27 (12) = happyShift action_3
action_27 (13) = happyShift action_4
action_27 (14) = happyShift action_12
action_27 (16) = happyShift action_13
action_27 (19) = happyShift action_14
action_27 (20) = happyShift action_15
action_27 (21) = happyShift action_16
action_27 (22) = happyShift action_17
action_27 (23) = happyShift action_18
action_27 (24) = happyShift action_19
action_27 (25) = happyShift action_20
action_27 (26) = happyShift action_21
action_27 (28) = happyShift action_22
action_27 (29) = happyShift action_23
action_27 (30) = happyShift action_24
action_27 (31) = happyShift action_25
action_27 (4) = happyGoto action_52
action_27 (5) = happyGoto action_2
action_27 (6) = happyGoto action_6
action_27 (7) = happyGoto action_7
action_27 (8) = happyGoto action_8
action_27 (9) = happyGoto action_9
action_27 (10) = happyGoto action_10
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_11
action_28 (12) = happyShift action_3
action_28 (13) = happyShift action_4
action_28 (14) = happyShift action_12
action_28 (16) = happyShift action_13
action_28 (19) = happyShift action_14
action_28 (20) = happyShift action_15
action_28 (21) = happyShift action_16
action_28 (22) = happyShift action_17
action_28 (23) = happyShift action_18
action_28 (24) = happyShift action_19
action_28 (25) = happyShift action_20
action_28 (26) = happyShift action_21
action_28 (28) = happyShift action_22
action_28 (29) = happyShift action_23
action_28 (30) = happyShift action_24
action_28 (31) = happyShift action_25
action_28 (4) = happyGoto action_51
action_28 (5) = happyGoto action_2
action_28 (6) = happyGoto action_6
action_28 (7) = happyGoto action_7
action_28 (8) = happyGoto action_8
action_28 (9) = happyGoto action_9
action_28 (10) = happyGoto action_10
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_11
action_29 (12) = happyShift action_3
action_29 (13) = happyShift action_4
action_29 (14) = happyShift action_12
action_29 (16) = happyShift action_13
action_29 (19) = happyShift action_14
action_29 (20) = happyShift action_15
action_29 (21) = happyShift action_16
action_29 (22) = happyShift action_17
action_29 (23) = happyShift action_18
action_29 (24) = happyShift action_19
action_29 (25) = happyShift action_20
action_29 (26) = happyShift action_21
action_29 (28) = happyShift action_22
action_29 (29) = happyShift action_23
action_29 (30) = happyShift action_24
action_29 (31) = happyShift action_25
action_29 (4) = happyGoto action_50
action_29 (5) = happyGoto action_2
action_29 (6) = happyGoto action_6
action_29 (7) = happyGoto action_7
action_29 (8) = happyGoto action_8
action_29 (9) = happyGoto action_9
action_29 (10) = happyGoto action_10
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_11
action_30 (12) = happyShift action_3
action_30 (13) = happyShift action_4
action_30 (14) = happyShift action_12
action_30 (16) = happyShift action_13
action_30 (19) = happyShift action_14
action_30 (20) = happyShift action_15
action_30 (21) = happyShift action_16
action_30 (22) = happyShift action_17
action_30 (23) = happyShift action_18
action_30 (24) = happyShift action_19
action_30 (25) = happyShift action_20
action_30 (26) = happyShift action_21
action_30 (28) = happyShift action_22
action_30 (29) = happyShift action_23
action_30 (30) = happyShift action_24
action_30 (31) = happyShift action_25
action_30 (4) = happyGoto action_49
action_30 (5) = happyGoto action_2
action_30 (6) = happyGoto action_6
action_30 (7) = happyGoto action_7
action_30 (8) = happyGoto action_8
action_30 (9) = happyGoto action_9
action_30 (10) = happyGoto action_10
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_11
action_31 (12) = happyShift action_3
action_31 (13) = happyShift action_4
action_31 (14) = happyShift action_12
action_31 (16) = happyShift action_13
action_31 (19) = happyShift action_14
action_31 (20) = happyShift action_15
action_31 (21) = happyShift action_16
action_31 (22) = happyShift action_17
action_31 (23) = happyShift action_18
action_31 (24) = happyShift action_19
action_31 (25) = happyShift action_20
action_31 (26) = happyShift action_21
action_31 (28) = happyShift action_22
action_31 (29) = happyShift action_23
action_31 (30) = happyShift action_24
action_31 (31) = happyShift action_25
action_31 (4) = happyGoto action_48
action_31 (5) = happyGoto action_2
action_31 (6) = happyGoto action_6
action_31 (7) = happyGoto action_7
action_31 (8) = happyGoto action_8
action_31 (9) = happyGoto action_9
action_31 (10) = happyGoto action_10
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_11
action_32 (12) = happyShift action_3
action_32 (13) = happyShift action_4
action_32 (14) = happyShift action_12
action_32 (16) = happyShift action_13
action_32 (19) = happyShift action_14
action_32 (20) = happyShift action_15
action_32 (21) = happyShift action_16
action_32 (22) = happyShift action_17
action_32 (23) = happyShift action_18
action_32 (24) = happyShift action_19
action_32 (25) = happyShift action_20
action_32 (26) = happyShift action_21
action_32 (28) = happyShift action_22
action_32 (29) = happyShift action_23
action_32 (30) = happyShift action_24
action_32 (31) = happyShift action_25
action_32 (4) = happyGoto action_47
action_32 (5) = happyGoto action_2
action_32 (6) = happyGoto action_6
action_32 (7) = happyGoto action_7
action_32 (8) = happyGoto action_8
action_32 (9) = happyGoto action_9
action_32 (10) = happyGoto action_10
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_11
action_33 (12) = happyShift action_3
action_33 (13) = happyShift action_4
action_33 (14) = happyShift action_12
action_33 (16) = happyShift action_13
action_33 (19) = happyShift action_14
action_33 (20) = happyShift action_15
action_33 (21) = happyShift action_16
action_33 (22) = happyShift action_17
action_33 (23) = happyShift action_18
action_33 (24) = happyShift action_19
action_33 (25) = happyShift action_20
action_33 (26) = happyShift action_21
action_33 (28) = happyShift action_22
action_33 (29) = happyShift action_23
action_33 (30) = happyShift action_24
action_33 (31) = happyShift action_25
action_33 (4) = happyGoto action_46
action_33 (5) = happyGoto action_2
action_33 (6) = happyGoto action_6
action_33 (7) = happyGoto action_7
action_33 (8) = happyGoto action_8
action_33 (9) = happyGoto action_9
action_33 (10) = happyGoto action_10
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_11
action_34 (12) = happyShift action_3
action_34 (13) = happyShift action_4
action_34 (14) = happyShift action_12
action_34 (16) = happyShift action_13
action_34 (19) = happyShift action_14
action_34 (20) = happyShift action_15
action_34 (21) = happyShift action_16
action_34 (22) = happyShift action_17
action_34 (23) = happyShift action_18
action_34 (24) = happyShift action_19
action_34 (25) = happyShift action_20
action_34 (26) = happyShift action_21
action_34 (28) = happyShift action_22
action_34 (29) = happyShift action_23
action_34 (30) = happyShift action_24
action_34 (31) = happyShift action_25
action_34 (4) = happyGoto action_45
action_34 (5) = happyGoto action_2
action_34 (6) = happyGoto action_6
action_34 (7) = happyGoto action_7
action_34 (8) = happyGoto action_8
action_34 (9) = happyGoto action_9
action_34 (10) = happyGoto action_10
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_11
action_35 (12) = happyShift action_3
action_35 (13) = happyShift action_4
action_35 (14) = happyShift action_12
action_35 (16) = happyShift action_13
action_35 (19) = happyShift action_14
action_35 (20) = happyShift action_15
action_35 (21) = happyShift action_16
action_35 (22) = happyShift action_17
action_35 (23) = happyShift action_18
action_35 (24) = happyShift action_19
action_35 (25) = happyShift action_20
action_35 (26) = happyShift action_21
action_35 (28) = happyShift action_22
action_35 (29) = happyShift action_23
action_35 (30) = happyShift action_24
action_35 (31) = happyShift action_25
action_35 (4) = happyGoto action_44
action_35 (5) = happyGoto action_2
action_35 (6) = happyGoto action_6
action_35 (7) = happyGoto action_7
action_35 (8) = happyGoto action_8
action_35 (9) = happyGoto action_9
action_35 (10) = happyGoto action_10
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (11) = happyShift action_11
action_36 (12) = happyShift action_3
action_36 (13) = happyShift action_4
action_36 (14) = happyShift action_12
action_36 (16) = happyShift action_13
action_36 (19) = happyShift action_14
action_36 (20) = happyShift action_15
action_36 (21) = happyShift action_16
action_36 (22) = happyShift action_17
action_36 (23) = happyShift action_18
action_36 (24) = happyShift action_19
action_36 (25) = happyShift action_20
action_36 (26) = happyShift action_21
action_36 (28) = happyShift action_22
action_36 (29) = happyShift action_23
action_36 (30) = happyShift action_24
action_36 (31) = happyShift action_25
action_36 (4) = happyGoto action_43
action_36 (5) = happyGoto action_2
action_36 (6) = happyGoto action_6
action_36 (7) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (9) = happyGoto action_9
action_36 (10) = happyGoto action_10
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_11
action_37 (12) = happyShift action_3
action_37 (13) = happyShift action_4
action_37 (14) = happyShift action_12
action_37 (16) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (20) = happyShift action_15
action_37 (21) = happyShift action_16
action_37 (22) = happyShift action_17
action_37 (23) = happyShift action_18
action_37 (24) = happyShift action_19
action_37 (25) = happyShift action_20
action_37 (26) = happyShift action_21
action_37 (28) = happyShift action_22
action_37 (29) = happyShift action_23
action_37 (30) = happyShift action_24
action_37 (31) = happyShift action_25
action_37 (4) = happyGoto action_42
action_37 (5) = happyGoto action_2
action_37 (6) = happyGoto action_6
action_37 (7) = happyGoto action_7
action_37 (8) = happyGoto action_8
action_37 (9) = happyGoto action_9
action_37 (10) = happyGoto action_10
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (17) = happyShift action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (27) = happyShift action_40
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (11) = happyShift action_11
action_40 (12) = happyShift action_3
action_40 (13) = happyShift action_4
action_40 (14) = happyShift action_12
action_40 (16) = happyShift action_13
action_40 (19) = happyShift action_14
action_40 (20) = happyShift action_15
action_40 (21) = happyShift action_16
action_40 (22) = happyShift action_17
action_40 (23) = happyShift action_18
action_40 (24) = happyShift action_19
action_40 (25) = happyShift action_20
action_40 (26) = happyShift action_21
action_40 (28) = happyShift action_22
action_40 (29) = happyShift action_23
action_40 (30) = happyShift action_24
action_40 (31) = happyShift action_25
action_40 (4) = happyGoto action_68
action_40 (5) = happyGoto action_2
action_40 (6) = happyGoto action_6
action_40 (7) = happyGoto action_7
action_40 (8) = happyGoto action_8
action_40 (9) = happyGoto action_9
action_40 (10) = happyGoto action_10
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_11
action_41 (12) = happyShift action_3
action_41 (13) = happyShift action_4
action_41 (14) = happyShift action_12
action_41 (16) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (20) = happyShift action_15
action_41 (21) = happyShift action_16
action_41 (22) = happyShift action_17
action_41 (23) = happyShift action_18
action_41 (24) = happyShift action_19
action_41 (25) = happyShift action_20
action_41 (26) = happyShift action_21
action_41 (28) = happyShift action_22
action_41 (29) = happyShift action_23
action_41 (30) = happyShift action_24
action_41 (31) = happyShift action_25
action_41 (4) = happyGoto action_67
action_41 (5) = happyGoto action_2
action_41 (6) = happyGoto action_6
action_41 (7) = happyGoto action_7
action_41 (8) = happyGoto action_8
action_41 (9) = happyGoto action_9
action_41 (10) = happyGoto action_10
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (33) = happyShift action_66
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (33) = happyShift action_65
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (33) = happyShift action_64
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (36) = happyShift action_63
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (36) = happyShift action_62
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (36) = happyShift action_61
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (36) = happyShift action_60
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (36) = happyShift action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (36) = happyShift action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (33) = happyShift action_56
action_51 (36) = happyShift action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (36) = happyShift action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (36) = happyShift action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_11
action_54 (12) = happyShift action_3
action_54 (13) = happyShift action_4
action_54 (14) = happyShift action_12
action_54 (16) = happyShift action_13
action_54 (19) = happyShift action_14
action_54 (20) = happyShift action_15
action_54 (21) = happyShift action_16
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (25) = happyShift action_20
action_54 (26) = happyShift action_21
action_54 (28) = happyShift action_22
action_54 (29) = happyShift action_23
action_54 (30) = happyShift action_24
action_54 (31) = happyShift action_25
action_54 (4) = happyGoto action_79
action_54 (5) = happyGoto action_2
action_54 (6) = happyGoto action_6
action_54 (7) = happyGoto action_7
action_54 (8) = happyGoto action_8
action_54 (9) = happyGoto action_9
action_54 (10) = happyGoto action_10
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_11
action_55 (12) = happyShift action_3
action_55 (13) = happyShift action_4
action_55 (14) = happyShift action_12
action_55 (16) = happyShift action_13
action_55 (19) = happyShift action_14
action_55 (20) = happyShift action_15
action_55 (21) = happyShift action_16
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (26) = happyShift action_21
action_55 (28) = happyShift action_22
action_55 (29) = happyShift action_23
action_55 (30) = happyShift action_24
action_55 (31) = happyShift action_25
action_55 (4) = happyGoto action_78
action_55 (5) = happyGoto action_2
action_55 (6) = happyGoto action_6
action_55 (7) = happyGoto action_7
action_55 (8) = happyGoto action_8
action_55 (9) = happyGoto action_9
action_55 (10) = happyGoto action_10
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_15

action_57 (11) = happyShift action_11
action_57 (12) = happyShift action_3
action_57 (13) = happyShift action_4
action_57 (14) = happyShift action_12
action_57 (16) = happyShift action_13
action_57 (19) = happyShift action_14
action_57 (20) = happyShift action_15
action_57 (21) = happyShift action_16
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (25) = happyShift action_20
action_57 (26) = happyShift action_21
action_57 (28) = happyShift action_22
action_57 (29) = happyShift action_23
action_57 (30) = happyShift action_24
action_57 (31) = happyShift action_25
action_57 (4) = happyGoto action_77
action_57 (5) = happyGoto action_2
action_57 (6) = happyGoto action_6
action_57 (7) = happyGoto action_7
action_57 (8) = happyGoto action_8
action_57 (9) = happyGoto action_9
action_57 (10) = happyGoto action_10
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_11
action_58 (12) = happyShift action_3
action_58 (13) = happyShift action_4
action_58 (14) = happyShift action_12
action_58 (16) = happyShift action_13
action_58 (19) = happyShift action_14
action_58 (20) = happyShift action_15
action_58 (21) = happyShift action_16
action_58 (22) = happyShift action_17
action_58 (23) = happyShift action_18
action_58 (24) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (26) = happyShift action_21
action_58 (28) = happyShift action_22
action_58 (29) = happyShift action_23
action_58 (30) = happyShift action_24
action_58 (31) = happyShift action_25
action_58 (4) = happyGoto action_76
action_58 (5) = happyGoto action_2
action_58 (6) = happyGoto action_6
action_58 (7) = happyGoto action_7
action_58 (8) = happyGoto action_8
action_58 (9) = happyGoto action_9
action_58 (10) = happyGoto action_10
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyShift action_11
action_59 (12) = happyShift action_3
action_59 (13) = happyShift action_4
action_59 (14) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (19) = happyShift action_14
action_59 (20) = happyShift action_15
action_59 (21) = happyShift action_16
action_59 (22) = happyShift action_17
action_59 (23) = happyShift action_18
action_59 (24) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (26) = happyShift action_21
action_59 (28) = happyShift action_22
action_59 (29) = happyShift action_23
action_59 (30) = happyShift action_24
action_59 (31) = happyShift action_25
action_59 (4) = happyGoto action_75
action_59 (5) = happyGoto action_2
action_59 (6) = happyGoto action_6
action_59 (7) = happyGoto action_7
action_59 (8) = happyGoto action_8
action_59 (9) = happyGoto action_9
action_59 (10) = happyGoto action_10
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_11
action_60 (12) = happyShift action_3
action_60 (13) = happyShift action_4
action_60 (14) = happyShift action_12
action_60 (16) = happyShift action_13
action_60 (19) = happyShift action_14
action_60 (20) = happyShift action_15
action_60 (21) = happyShift action_16
action_60 (22) = happyShift action_17
action_60 (23) = happyShift action_18
action_60 (24) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (26) = happyShift action_21
action_60 (28) = happyShift action_22
action_60 (29) = happyShift action_23
action_60 (30) = happyShift action_24
action_60 (31) = happyShift action_25
action_60 (4) = happyGoto action_74
action_60 (5) = happyGoto action_2
action_60 (6) = happyGoto action_6
action_60 (7) = happyGoto action_7
action_60 (8) = happyGoto action_8
action_60 (9) = happyGoto action_9
action_60 (10) = happyGoto action_10
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (11) = happyShift action_11
action_61 (12) = happyShift action_3
action_61 (13) = happyShift action_4
action_61 (14) = happyShift action_12
action_61 (16) = happyShift action_13
action_61 (19) = happyShift action_14
action_61 (20) = happyShift action_15
action_61 (21) = happyShift action_16
action_61 (22) = happyShift action_17
action_61 (23) = happyShift action_18
action_61 (24) = happyShift action_19
action_61 (25) = happyShift action_20
action_61 (26) = happyShift action_21
action_61 (28) = happyShift action_22
action_61 (29) = happyShift action_23
action_61 (30) = happyShift action_24
action_61 (31) = happyShift action_25
action_61 (4) = happyGoto action_73
action_61 (5) = happyGoto action_2
action_61 (6) = happyGoto action_6
action_61 (7) = happyGoto action_7
action_61 (8) = happyGoto action_8
action_61 (9) = happyGoto action_9
action_61 (10) = happyGoto action_10
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (11) = happyShift action_11
action_62 (12) = happyShift action_3
action_62 (13) = happyShift action_4
action_62 (14) = happyShift action_12
action_62 (16) = happyShift action_13
action_62 (19) = happyShift action_14
action_62 (20) = happyShift action_15
action_62 (21) = happyShift action_16
action_62 (22) = happyShift action_17
action_62 (23) = happyShift action_18
action_62 (24) = happyShift action_19
action_62 (25) = happyShift action_20
action_62 (26) = happyShift action_21
action_62 (28) = happyShift action_22
action_62 (29) = happyShift action_23
action_62 (30) = happyShift action_24
action_62 (31) = happyShift action_25
action_62 (4) = happyGoto action_72
action_62 (5) = happyGoto action_2
action_62 (6) = happyGoto action_6
action_62 (7) = happyGoto action_7
action_62 (8) = happyGoto action_8
action_62 (9) = happyGoto action_9
action_62 (10) = happyGoto action_10
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_11
action_63 (12) = happyShift action_3
action_63 (13) = happyShift action_4
action_63 (14) = happyShift action_12
action_63 (16) = happyShift action_13
action_63 (19) = happyShift action_14
action_63 (20) = happyShift action_15
action_63 (21) = happyShift action_16
action_63 (22) = happyShift action_17
action_63 (23) = happyShift action_18
action_63 (24) = happyShift action_19
action_63 (25) = happyShift action_20
action_63 (26) = happyShift action_21
action_63 (28) = happyShift action_22
action_63 (29) = happyShift action_23
action_63 (30) = happyShift action_24
action_63 (31) = happyShift action_25
action_63 (4) = happyGoto action_71
action_63 (5) = happyGoto action_2
action_63 (6) = happyGoto action_6
action_63 (7) = happyGoto action_7
action_63 (8) = happyGoto action_8
action_63 (9) = happyGoto action_9
action_63 (10) = happyGoto action_10
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_12

action_65 _ = happyReduce_14

action_66 _ = happyReduce_13

action_67 (18) = happyShift action_70
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (15) = happyShift action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (11) = happyShift action_11
action_69 (12) = happyShift action_3
action_69 (13) = happyShift action_4
action_69 (14) = happyShift action_12
action_69 (16) = happyShift action_13
action_69 (19) = happyShift action_14
action_69 (20) = happyShift action_15
action_69 (21) = happyShift action_16
action_69 (22) = happyShift action_17
action_69 (23) = happyShift action_18
action_69 (24) = happyShift action_19
action_69 (25) = happyShift action_20
action_69 (26) = happyShift action_21
action_69 (28) = happyShift action_22
action_69 (29) = happyShift action_23
action_69 (30) = happyShift action_24
action_69 (31) = happyShift action_25
action_69 (4) = happyGoto action_90
action_69 (5) = happyGoto action_2
action_69 (6) = happyGoto action_6
action_69 (7) = happyGoto action_7
action_69 (8) = happyGoto action_8
action_69 (9) = happyGoto action_9
action_69 (10) = happyGoto action_10
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (11) = happyShift action_11
action_70 (12) = happyShift action_3
action_70 (13) = happyShift action_4
action_70 (14) = happyShift action_12
action_70 (16) = happyShift action_13
action_70 (19) = happyShift action_14
action_70 (20) = happyShift action_15
action_70 (21) = happyShift action_16
action_70 (22) = happyShift action_17
action_70 (23) = happyShift action_18
action_70 (24) = happyShift action_19
action_70 (25) = happyShift action_20
action_70 (26) = happyShift action_21
action_70 (28) = happyShift action_22
action_70 (29) = happyShift action_23
action_70 (30) = happyShift action_24
action_70 (31) = happyShift action_25
action_70 (4) = happyGoto action_89
action_70 (5) = happyGoto action_2
action_70 (6) = happyGoto action_6
action_70 (7) = happyGoto action_7
action_70 (8) = happyGoto action_8
action_70 (9) = happyGoto action_9
action_70 (10) = happyGoto action_10
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (33) = happyShift action_88
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (33) = happyShift action_87
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (33) = happyShift action_86
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (33) = happyShift action_85
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (33) = happyShift action_84
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (33) = happyShift action_83
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (33) = happyShift action_82
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (33) = happyShift action_81
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (33) = happyShift action_80
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_21

action_81 _ = happyReduce_20

action_82 _ = happyReduce_19

action_83 _ = happyReduce_18

action_84 _ = happyReduce_24

action_85 _ = happyReduce_23

action_86 _ = happyReduce_22

action_87 _ = happyReduce_17

action_88 _ = happyReduce_16

action_89 _ = happyReduce_11

action_90 _ = happyReduce_10

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Literal happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Variable happy_var_1
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
happyReduction_5 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn5
		 (AST.IntLit happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn5
		 (AST.BoolLit happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  6 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 (AST.Var happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happyReduce 6 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (AST.Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 8 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 4 9 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (AST.UnOpExpr AST.Not happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 9 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (AST.UnOpExpr AST.IsZero happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 9 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 9 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 10 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.And happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 10 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Or happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 10 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Plus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Minus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 6 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Times happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 10 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Div happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 10 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Eq happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 6 10 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Gt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 6 10 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.BinOpExpr AST.Lt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 11;
	TokenInt happy_dollar_dollar -> cont 12;
	TokenBoolean happy_dollar_dollar -> cont 13;
	TokenLet -> cont 14;
	TokenIn -> cont 15;
	TokenIf -> cont 16;
	TokenThen -> cont 17;
	TokenElse -> cont 18;
	TokenIsZero -> cont 19;
	TokenNegate -> cont 20;
	TokenNot -> cont 21;
	TokenBoolAnd -> cont 22;
	TokenBoolOr -> cont 23;
	TokenBoolEq -> cont 24;
	TokenBoolGt -> cont 25;
	TokenBoolLt -> cont 26;
	TokenEq -> cont 27;
	TokenPlus -> cont 28;
	TokenMinus -> cont 29;
	TokenTimes -> cont 30;
	TokenDiv -> cont 31;
	TokenOP -> cont 32;
	TokenCP -> cont 33;
	TokenOB -> cont 34;
	TokenCB -> cont 35;
	TokenComma -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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
  = TokenVar String
  | TokenInt Int
  | TokenBoolean Bool
  | TokenLet
  | TokenIn
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenIsZero
  | TokenNegate
  | TokenNot
  | TokenBoolAnd
  | TokenBoolOr
  | TokenBoolEq
  | TokenBoolGt
  | TokenBoolLt
  | TokenEq
  | TokenPlus
  | TokenMinus
  | TokenTimes
  | TokenDiv
  | TokenOP
  | TokenCP
  | TokenOB
  | TokenCB
  | TokenComma
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '&', '|', '!', '<', '>', ',']

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
lexOperator (',':cs) = TokenComma : lexer cs
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
