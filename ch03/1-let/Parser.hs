{-# OPTIONS_GHC -w #-}
module Parser (parseExpr) where

import qualified AST
import SList
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
happyExpList = Happy_Data_Array.listArray (0,326) ([57344,49125,135,1536,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,38784,7935,2,0,256,0,0,8,0,16384,0,0,512,0,0,16,0,32768,0,0,1024,0,0,32,0,0,1,0,2048,0,0,64,0,0,2,0,4096,0,0,4096,0,0,0,38784,7935,2,64700,4343,57344,49125,135,12032,15871,4,63864,8687,49152,32715,271,24064,31742,8,62192,17375,32768,65431,542,48128,63484,16,58848,34751,0,65327,1085,30720,61433,33,4096,0,0,0,4,61440,57330,67,38784,7935,2,0,512,0,0,16,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,8192,0,0,256,0,0,8,0,16384,0,0,512,0,32768,16,0,32768,0,0,1024,24064,31742,8,62192,17375,0,0,0,48128,63484,16,58848,34751,0,65327,1085,30720,61433,33,52160,3967,1,65118,2171,61440,57330,67,0,4,2,0,0,0,0,0,0,0,0,1024,0,0,4,0,24064,31742,8,62192,17375,0,0,64,0,0,2,0,4096,0,0,128,0,0,4,0,8192,0,0,256,0,0,8,0,16384,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","List","ListNode","LetExpr","IfExpr","UnOp","BinOp","var","int","boolean","let","in","if","then","else","isZero","minus","not","cons","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","%eof"]
        bit_start = st Prelude.* 43
        bit_end = (st Prelude.+ 1) Prelude.* 43
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..42]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (14) = happyShift action_12
action_0 (15) = happyShift action_3
action_0 (16) = happyShift action_4
action_0 (17) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (22) = happyShift action_15
action_0 (23) = happyShift action_16
action_0 (24) = happyShift action_17
action_0 (25) = happyShift action_18
action_0 (26) = happyShift action_19
action_0 (27) = happyShift action_20
action_0 (28) = happyShift action_21
action_0 (29) = happyShift action_22
action_0 (30) = happyShift action_23
action_0 (32) = happyShift action_24
action_0 (33) = happyShift action_25
action_0 (34) = happyShift action_26
action_0 (35) = happyShift action_27
action_0 (40) = happyShift action_28
action_0 (4) = happyGoto action_5
action_0 (6) = happyGoto action_2
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (10) = happyGoto action_8
action_0 (11) = happyGoto action_9
action_0 (12) = happyGoto action_10
action_0 (13) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_3
action_1 (16) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_14

action_4 _ = happyReduce_15

action_5 (43) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 _ = happyReduce_16

action_13 (14) = happyShift action_44
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_12
action_14 (15) = happyShift action_3
action_14 (16) = happyShift action_4
action_14 (17) = happyShift action_13
action_14 (19) = happyShift action_14
action_14 (22) = happyShift action_15
action_14 (23) = happyShift action_16
action_14 (24) = happyShift action_17
action_14 (25) = happyShift action_18
action_14 (26) = happyShift action_19
action_14 (27) = happyShift action_20
action_14 (28) = happyShift action_21
action_14 (29) = happyShift action_22
action_14 (30) = happyShift action_23
action_14 (32) = happyShift action_24
action_14 (33) = happyShift action_25
action_14 (34) = happyShift action_26
action_14 (35) = happyShift action_27
action_14 (40) = happyShift action_28
action_14 (4) = happyGoto action_43
action_14 (6) = happyGoto action_2
action_14 (7) = happyGoto action_6
action_14 (8) = happyGoto action_7
action_14 (10) = happyGoto action_8
action_14 (11) = happyGoto action_9
action_14 (12) = happyGoto action_10
action_14 (13) = happyGoto action_11
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (36) = happyShift action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (36) = happyShift action_41
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (36) = happyShift action_40
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (36) = happyShift action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (36) = happyShift action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (36) = happyShift action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (36) = happyShift action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (36) = happyShift action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (36) = happyShift action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (36) = happyShift action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (36) = happyShift action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (36) = happyShift action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (36) = happyShift action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (41) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_17

action_30 (14) = happyShift action_12
action_30 (15) = happyShift action_3
action_30 (16) = happyShift action_4
action_30 (17) = happyShift action_13
action_30 (19) = happyShift action_14
action_30 (22) = happyShift action_15
action_30 (23) = happyShift action_16
action_30 (24) = happyShift action_17
action_30 (25) = happyShift action_18
action_30 (26) = happyShift action_19
action_30 (27) = happyShift action_20
action_30 (28) = happyShift action_21
action_30 (29) = happyShift action_22
action_30 (30) = happyShift action_23
action_30 (32) = happyShift action_24
action_30 (33) = happyShift action_25
action_30 (34) = happyShift action_26
action_30 (35) = happyShift action_27
action_30 (40) = happyShift action_28
action_30 (4) = happyGoto action_67
action_30 (6) = happyGoto action_2
action_30 (7) = happyGoto action_6
action_30 (8) = happyGoto action_7
action_30 (10) = happyGoto action_8
action_30 (11) = happyGoto action_9
action_30 (12) = happyGoto action_10
action_30 (13) = happyGoto action_11
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_12
action_31 (15) = happyShift action_3
action_31 (16) = happyShift action_4
action_31 (17) = happyShift action_13
action_31 (19) = happyShift action_14
action_31 (22) = happyShift action_15
action_31 (23) = happyShift action_16
action_31 (24) = happyShift action_17
action_31 (25) = happyShift action_18
action_31 (26) = happyShift action_19
action_31 (27) = happyShift action_20
action_31 (28) = happyShift action_21
action_31 (29) = happyShift action_22
action_31 (30) = happyShift action_23
action_31 (32) = happyShift action_24
action_31 (33) = happyShift action_25
action_31 (34) = happyShift action_26
action_31 (35) = happyShift action_27
action_31 (40) = happyShift action_28
action_31 (4) = happyGoto action_66
action_31 (6) = happyGoto action_2
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 (10) = happyGoto action_8
action_31 (11) = happyGoto action_9
action_31 (12) = happyGoto action_10
action_31 (13) = happyGoto action_11
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_12
action_32 (15) = happyShift action_3
action_32 (16) = happyShift action_4
action_32 (17) = happyShift action_13
action_32 (19) = happyShift action_14
action_32 (22) = happyShift action_15
action_32 (23) = happyShift action_16
action_32 (24) = happyShift action_17
action_32 (25) = happyShift action_18
action_32 (26) = happyShift action_19
action_32 (27) = happyShift action_20
action_32 (28) = happyShift action_21
action_32 (29) = happyShift action_22
action_32 (30) = happyShift action_23
action_32 (32) = happyShift action_24
action_32 (33) = happyShift action_25
action_32 (34) = happyShift action_26
action_32 (35) = happyShift action_27
action_32 (40) = happyShift action_28
action_32 (4) = happyGoto action_65
action_32 (6) = happyGoto action_2
action_32 (7) = happyGoto action_6
action_32 (8) = happyGoto action_7
action_32 (10) = happyGoto action_8
action_32 (11) = happyGoto action_9
action_32 (12) = happyGoto action_10
action_32 (13) = happyGoto action_11
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_12
action_33 (15) = happyShift action_3
action_33 (16) = happyShift action_4
action_33 (17) = happyShift action_13
action_33 (19) = happyShift action_14
action_33 (22) = happyShift action_15
action_33 (23) = happyShift action_16
action_33 (24) = happyShift action_17
action_33 (25) = happyShift action_18
action_33 (26) = happyShift action_19
action_33 (27) = happyShift action_20
action_33 (28) = happyShift action_21
action_33 (29) = happyShift action_22
action_33 (30) = happyShift action_23
action_33 (32) = happyShift action_24
action_33 (33) = happyShift action_25
action_33 (34) = happyShift action_26
action_33 (35) = happyShift action_27
action_33 (40) = happyShift action_28
action_33 (4) = happyGoto action_64
action_33 (6) = happyGoto action_2
action_33 (7) = happyGoto action_6
action_33 (8) = happyGoto action_7
action_33 (10) = happyGoto action_8
action_33 (11) = happyGoto action_9
action_33 (12) = happyGoto action_10
action_33 (13) = happyGoto action_11
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_12
action_34 (15) = happyShift action_3
action_34 (16) = happyShift action_4
action_34 (17) = happyShift action_13
action_34 (19) = happyShift action_14
action_34 (22) = happyShift action_15
action_34 (23) = happyShift action_16
action_34 (24) = happyShift action_17
action_34 (25) = happyShift action_18
action_34 (26) = happyShift action_19
action_34 (27) = happyShift action_20
action_34 (28) = happyShift action_21
action_34 (29) = happyShift action_22
action_34 (30) = happyShift action_23
action_34 (32) = happyShift action_24
action_34 (33) = happyShift action_25
action_34 (34) = happyShift action_26
action_34 (35) = happyShift action_27
action_34 (40) = happyShift action_28
action_34 (4) = happyGoto action_63
action_34 (6) = happyGoto action_2
action_34 (7) = happyGoto action_6
action_34 (8) = happyGoto action_7
action_34 (10) = happyGoto action_8
action_34 (11) = happyGoto action_9
action_34 (12) = happyGoto action_10
action_34 (13) = happyGoto action_11
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (14) = happyShift action_12
action_35 (15) = happyShift action_3
action_35 (16) = happyShift action_4
action_35 (17) = happyShift action_13
action_35 (19) = happyShift action_14
action_35 (22) = happyShift action_15
action_35 (23) = happyShift action_16
action_35 (24) = happyShift action_17
action_35 (25) = happyShift action_18
action_35 (26) = happyShift action_19
action_35 (27) = happyShift action_20
action_35 (28) = happyShift action_21
action_35 (29) = happyShift action_22
action_35 (30) = happyShift action_23
action_35 (32) = happyShift action_24
action_35 (33) = happyShift action_25
action_35 (34) = happyShift action_26
action_35 (35) = happyShift action_27
action_35 (40) = happyShift action_28
action_35 (4) = happyGoto action_62
action_35 (6) = happyGoto action_2
action_35 (7) = happyGoto action_6
action_35 (8) = happyGoto action_7
action_35 (10) = happyGoto action_8
action_35 (11) = happyGoto action_9
action_35 (12) = happyGoto action_10
action_35 (13) = happyGoto action_11
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (14) = happyShift action_12
action_36 (15) = happyShift action_3
action_36 (16) = happyShift action_4
action_36 (17) = happyShift action_13
action_36 (19) = happyShift action_14
action_36 (22) = happyShift action_15
action_36 (23) = happyShift action_16
action_36 (24) = happyShift action_17
action_36 (25) = happyShift action_18
action_36 (26) = happyShift action_19
action_36 (27) = happyShift action_20
action_36 (28) = happyShift action_21
action_36 (29) = happyShift action_22
action_36 (30) = happyShift action_23
action_36 (32) = happyShift action_24
action_36 (33) = happyShift action_25
action_36 (34) = happyShift action_26
action_36 (35) = happyShift action_27
action_36 (40) = happyShift action_28
action_36 (4) = happyGoto action_61
action_36 (6) = happyGoto action_2
action_36 (7) = happyGoto action_6
action_36 (8) = happyGoto action_7
action_36 (10) = happyGoto action_8
action_36 (11) = happyGoto action_9
action_36 (12) = happyGoto action_10
action_36 (13) = happyGoto action_11
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (14) = happyShift action_12
action_37 (15) = happyShift action_3
action_37 (16) = happyShift action_4
action_37 (17) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (22) = happyShift action_15
action_37 (23) = happyShift action_16
action_37 (24) = happyShift action_17
action_37 (25) = happyShift action_18
action_37 (26) = happyShift action_19
action_37 (27) = happyShift action_20
action_37 (28) = happyShift action_21
action_37 (29) = happyShift action_22
action_37 (30) = happyShift action_23
action_37 (32) = happyShift action_24
action_37 (33) = happyShift action_25
action_37 (34) = happyShift action_26
action_37 (35) = happyShift action_27
action_37 (40) = happyShift action_28
action_37 (4) = happyGoto action_60
action_37 (6) = happyGoto action_2
action_37 (7) = happyGoto action_6
action_37 (8) = happyGoto action_7
action_37 (10) = happyGoto action_8
action_37 (11) = happyGoto action_9
action_37 (12) = happyGoto action_10
action_37 (13) = happyGoto action_11
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_12
action_38 (15) = happyShift action_3
action_38 (16) = happyShift action_4
action_38 (17) = happyShift action_13
action_38 (19) = happyShift action_14
action_38 (22) = happyShift action_15
action_38 (23) = happyShift action_16
action_38 (24) = happyShift action_17
action_38 (25) = happyShift action_18
action_38 (26) = happyShift action_19
action_38 (27) = happyShift action_20
action_38 (28) = happyShift action_21
action_38 (29) = happyShift action_22
action_38 (30) = happyShift action_23
action_38 (32) = happyShift action_24
action_38 (33) = happyShift action_25
action_38 (34) = happyShift action_26
action_38 (35) = happyShift action_27
action_38 (40) = happyShift action_28
action_38 (4) = happyGoto action_59
action_38 (6) = happyGoto action_2
action_38 (7) = happyGoto action_6
action_38 (8) = happyGoto action_7
action_38 (10) = happyGoto action_8
action_38 (11) = happyGoto action_9
action_38 (12) = happyGoto action_10
action_38 (13) = happyGoto action_11
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_12
action_39 (15) = happyShift action_3
action_39 (16) = happyShift action_4
action_39 (17) = happyShift action_13
action_39 (19) = happyShift action_14
action_39 (22) = happyShift action_15
action_39 (23) = happyShift action_16
action_39 (24) = happyShift action_17
action_39 (25) = happyShift action_18
action_39 (26) = happyShift action_19
action_39 (27) = happyShift action_20
action_39 (28) = happyShift action_21
action_39 (29) = happyShift action_22
action_39 (30) = happyShift action_23
action_39 (32) = happyShift action_24
action_39 (33) = happyShift action_25
action_39 (34) = happyShift action_26
action_39 (35) = happyShift action_27
action_39 (40) = happyShift action_28
action_39 (5) = happyGoto action_50
action_39 (6) = happyGoto action_51
action_39 (7) = happyGoto action_52
action_39 (8) = happyGoto action_53
action_39 (9) = happyGoto action_54
action_39 (10) = happyGoto action_55
action_39 (11) = happyGoto action_56
action_39 (12) = happyGoto action_57
action_39 (13) = happyGoto action_58
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_12
action_40 (15) = happyShift action_3
action_40 (16) = happyShift action_4
action_40 (17) = happyShift action_13
action_40 (19) = happyShift action_14
action_40 (22) = happyShift action_15
action_40 (23) = happyShift action_16
action_40 (24) = happyShift action_17
action_40 (25) = happyShift action_18
action_40 (26) = happyShift action_19
action_40 (27) = happyShift action_20
action_40 (28) = happyShift action_21
action_40 (29) = happyShift action_22
action_40 (30) = happyShift action_23
action_40 (32) = happyShift action_24
action_40 (33) = happyShift action_25
action_40 (34) = happyShift action_26
action_40 (35) = happyShift action_27
action_40 (40) = happyShift action_28
action_40 (4) = happyGoto action_49
action_40 (6) = happyGoto action_2
action_40 (7) = happyGoto action_6
action_40 (8) = happyGoto action_7
action_40 (10) = happyGoto action_8
action_40 (11) = happyGoto action_9
action_40 (12) = happyGoto action_10
action_40 (13) = happyGoto action_11
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_12
action_41 (15) = happyShift action_3
action_41 (16) = happyShift action_4
action_41 (17) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (22) = happyShift action_15
action_41 (23) = happyShift action_16
action_41 (24) = happyShift action_17
action_41 (25) = happyShift action_18
action_41 (26) = happyShift action_19
action_41 (27) = happyShift action_20
action_41 (28) = happyShift action_21
action_41 (29) = happyShift action_22
action_41 (30) = happyShift action_23
action_41 (32) = happyShift action_24
action_41 (33) = happyShift action_25
action_41 (34) = happyShift action_26
action_41 (35) = happyShift action_27
action_41 (40) = happyShift action_28
action_41 (4) = happyGoto action_48
action_41 (6) = happyGoto action_2
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (10) = happyGoto action_8
action_41 (11) = happyGoto action_9
action_41 (12) = happyGoto action_10
action_41 (13) = happyGoto action_11
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_3
action_42 (16) = happyShift action_4
action_42 (17) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (22) = happyShift action_15
action_42 (23) = happyShift action_16
action_42 (24) = happyShift action_17
action_42 (25) = happyShift action_18
action_42 (26) = happyShift action_19
action_42 (27) = happyShift action_20
action_42 (28) = happyShift action_21
action_42 (29) = happyShift action_22
action_42 (30) = happyShift action_23
action_42 (32) = happyShift action_24
action_42 (33) = happyShift action_25
action_42 (34) = happyShift action_26
action_42 (35) = happyShift action_27
action_42 (40) = happyShift action_28
action_42 (4) = happyGoto action_47
action_42 (6) = happyGoto action_2
action_42 (7) = happyGoto action_6
action_42 (8) = happyGoto action_7
action_42 (10) = happyGoto action_8
action_42 (11) = happyGoto action_9
action_42 (12) = happyGoto action_10
action_42 (13) = happyGoto action_11
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (20) = happyShift action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (31) = happyShift action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (14) = happyShift action_12
action_45 (15) = happyShift action_3
action_45 (16) = happyShift action_4
action_45 (17) = happyShift action_13
action_45 (19) = happyShift action_14
action_45 (22) = happyShift action_15
action_45 (23) = happyShift action_16
action_45 (24) = happyShift action_17
action_45 (25) = happyShift action_18
action_45 (26) = happyShift action_19
action_45 (27) = happyShift action_20
action_45 (28) = happyShift action_21
action_45 (29) = happyShift action_22
action_45 (30) = happyShift action_23
action_45 (32) = happyShift action_24
action_45 (33) = happyShift action_25
action_45 (34) = happyShift action_26
action_45 (35) = happyShift action_27
action_45 (40) = happyShift action_28
action_45 (4) = happyGoto action_83
action_45 (6) = happyGoto action_2
action_45 (7) = happyGoto action_6
action_45 (8) = happyGoto action_7
action_45 (10) = happyGoto action_8
action_45 (11) = happyGoto action_9
action_45 (12) = happyGoto action_10
action_45 (13) = happyGoto action_11
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (14) = happyShift action_12
action_46 (15) = happyShift action_3
action_46 (16) = happyShift action_4
action_46 (17) = happyShift action_13
action_46 (19) = happyShift action_14
action_46 (22) = happyShift action_15
action_46 (23) = happyShift action_16
action_46 (24) = happyShift action_17
action_46 (25) = happyShift action_18
action_46 (26) = happyShift action_19
action_46 (27) = happyShift action_20
action_46 (28) = happyShift action_21
action_46 (29) = happyShift action_22
action_46 (30) = happyShift action_23
action_46 (32) = happyShift action_24
action_46 (33) = happyShift action_25
action_46 (34) = happyShift action_26
action_46 (35) = happyShift action_27
action_46 (40) = happyShift action_28
action_46 (4) = happyGoto action_82
action_46 (6) = happyGoto action_2
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (10) = happyGoto action_8
action_46 (11) = happyGoto action_9
action_46 (12) = happyGoto action_10
action_46 (13) = happyGoto action_11
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (37) = happyShift action_81
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (37) = happyShift action_80
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (37) = happyShift action_79
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_20

action_51 _ = happyReduce_8

action_52 _ = happyReduce_9

action_53 _ = happyReduce_19

action_54 (42) = happyShift action_78
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_10

action_56 _ = happyReduce_11

action_57 _ = happyReduce_12

action_58 _ = happyReduce_13

action_59 (42) = happyShift action_77
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (42) = happyShift action_76
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (42) = happyShift action_75
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (42) = happyShift action_74
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (42) = happyShift action_73
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (42) = happyShift action_72
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (37) = happyShift action_70
action_65 (42) = happyShift action_71
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (42) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (42) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (14) = happyShift action_12
action_68 (15) = happyShift action_3
action_68 (16) = happyShift action_4
action_68 (17) = happyShift action_13
action_68 (19) = happyShift action_14
action_68 (22) = happyShift action_15
action_68 (23) = happyShift action_16
action_68 (24) = happyShift action_17
action_68 (25) = happyShift action_18
action_68 (26) = happyShift action_19
action_68 (27) = happyShift action_20
action_68 (28) = happyShift action_21
action_68 (29) = happyShift action_22
action_68 (30) = happyShift action_23
action_68 (32) = happyShift action_24
action_68 (33) = happyShift action_25
action_68 (34) = happyShift action_26
action_68 (35) = happyShift action_27
action_68 (40) = happyShift action_28
action_68 (4) = happyGoto action_95
action_68 (6) = happyGoto action_2
action_68 (7) = happyGoto action_6
action_68 (8) = happyGoto action_7
action_68 (10) = happyGoto action_8
action_68 (11) = happyGoto action_9
action_68 (12) = happyGoto action_10
action_68 (13) = happyGoto action_11
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_12
action_69 (15) = happyShift action_3
action_69 (16) = happyShift action_4
action_69 (17) = happyShift action_13
action_69 (19) = happyShift action_14
action_69 (22) = happyShift action_15
action_69 (23) = happyShift action_16
action_69 (24) = happyShift action_17
action_69 (25) = happyShift action_18
action_69 (26) = happyShift action_19
action_69 (27) = happyShift action_20
action_69 (28) = happyShift action_21
action_69 (29) = happyShift action_22
action_69 (30) = happyShift action_23
action_69 (32) = happyShift action_24
action_69 (33) = happyShift action_25
action_69 (34) = happyShift action_26
action_69 (35) = happyShift action_27
action_69 (40) = happyShift action_28
action_69 (4) = happyGoto action_94
action_69 (6) = happyGoto action_2
action_69 (7) = happyGoto action_6
action_69 (8) = happyGoto action_7
action_69 (10) = happyGoto action_8
action_69 (11) = happyGoto action_9
action_69 (12) = happyGoto action_10
action_69 (13) = happyGoto action_11
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_26

action_71 (14) = happyShift action_12
action_71 (15) = happyShift action_3
action_71 (16) = happyShift action_4
action_71 (17) = happyShift action_13
action_71 (19) = happyShift action_14
action_71 (22) = happyShift action_15
action_71 (23) = happyShift action_16
action_71 (24) = happyShift action_17
action_71 (25) = happyShift action_18
action_71 (26) = happyShift action_19
action_71 (27) = happyShift action_20
action_71 (28) = happyShift action_21
action_71 (29) = happyShift action_22
action_71 (30) = happyShift action_23
action_71 (32) = happyShift action_24
action_71 (33) = happyShift action_25
action_71 (34) = happyShift action_26
action_71 (35) = happyShift action_27
action_71 (40) = happyShift action_28
action_71 (4) = happyGoto action_93
action_71 (6) = happyGoto action_2
action_71 (7) = happyGoto action_6
action_71 (8) = happyGoto action_7
action_71 (10) = happyGoto action_8
action_71 (11) = happyGoto action_9
action_71 (12) = happyGoto action_10
action_71 (13) = happyGoto action_11
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (14) = happyShift action_12
action_72 (15) = happyShift action_3
action_72 (16) = happyShift action_4
action_72 (17) = happyShift action_13
action_72 (19) = happyShift action_14
action_72 (22) = happyShift action_15
action_72 (23) = happyShift action_16
action_72 (24) = happyShift action_17
action_72 (25) = happyShift action_18
action_72 (26) = happyShift action_19
action_72 (27) = happyShift action_20
action_72 (28) = happyShift action_21
action_72 (29) = happyShift action_22
action_72 (30) = happyShift action_23
action_72 (32) = happyShift action_24
action_72 (33) = happyShift action_25
action_72 (34) = happyShift action_26
action_72 (35) = happyShift action_27
action_72 (40) = happyShift action_28
action_72 (4) = happyGoto action_92
action_72 (6) = happyGoto action_2
action_72 (7) = happyGoto action_6
action_72 (8) = happyGoto action_7
action_72 (10) = happyGoto action_8
action_72 (11) = happyGoto action_9
action_72 (12) = happyGoto action_10
action_72 (13) = happyGoto action_11
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (14) = happyShift action_12
action_73 (15) = happyShift action_3
action_73 (16) = happyShift action_4
action_73 (17) = happyShift action_13
action_73 (19) = happyShift action_14
action_73 (22) = happyShift action_15
action_73 (23) = happyShift action_16
action_73 (24) = happyShift action_17
action_73 (25) = happyShift action_18
action_73 (26) = happyShift action_19
action_73 (27) = happyShift action_20
action_73 (28) = happyShift action_21
action_73 (29) = happyShift action_22
action_73 (30) = happyShift action_23
action_73 (32) = happyShift action_24
action_73 (33) = happyShift action_25
action_73 (34) = happyShift action_26
action_73 (35) = happyShift action_27
action_73 (40) = happyShift action_28
action_73 (4) = happyGoto action_91
action_73 (6) = happyGoto action_2
action_73 (7) = happyGoto action_6
action_73 (8) = happyGoto action_7
action_73 (10) = happyGoto action_8
action_73 (11) = happyGoto action_9
action_73 (12) = happyGoto action_10
action_73 (13) = happyGoto action_11
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (14) = happyShift action_12
action_74 (15) = happyShift action_3
action_74 (16) = happyShift action_4
action_74 (17) = happyShift action_13
action_74 (19) = happyShift action_14
action_74 (22) = happyShift action_15
action_74 (23) = happyShift action_16
action_74 (24) = happyShift action_17
action_74 (25) = happyShift action_18
action_74 (26) = happyShift action_19
action_74 (27) = happyShift action_20
action_74 (28) = happyShift action_21
action_74 (29) = happyShift action_22
action_74 (30) = happyShift action_23
action_74 (32) = happyShift action_24
action_74 (33) = happyShift action_25
action_74 (34) = happyShift action_26
action_74 (35) = happyShift action_27
action_74 (40) = happyShift action_28
action_74 (4) = happyGoto action_90
action_74 (6) = happyGoto action_2
action_74 (7) = happyGoto action_6
action_74 (8) = happyGoto action_7
action_74 (10) = happyGoto action_8
action_74 (11) = happyGoto action_9
action_74 (12) = happyGoto action_10
action_74 (13) = happyGoto action_11
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (14) = happyShift action_12
action_75 (15) = happyShift action_3
action_75 (16) = happyShift action_4
action_75 (17) = happyShift action_13
action_75 (19) = happyShift action_14
action_75 (22) = happyShift action_15
action_75 (23) = happyShift action_16
action_75 (24) = happyShift action_17
action_75 (25) = happyShift action_18
action_75 (26) = happyShift action_19
action_75 (27) = happyShift action_20
action_75 (28) = happyShift action_21
action_75 (29) = happyShift action_22
action_75 (30) = happyShift action_23
action_75 (32) = happyShift action_24
action_75 (33) = happyShift action_25
action_75 (34) = happyShift action_26
action_75 (35) = happyShift action_27
action_75 (40) = happyShift action_28
action_75 (4) = happyGoto action_89
action_75 (6) = happyGoto action_2
action_75 (7) = happyGoto action_6
action_75 (8) = happyGoto action_7
action_75 (10) = happyGoto action_8
action_75 (11) = happyGoto action_9
action_75 (12) = happyGoto action_10
action_75 (13) = happyGoto action_11
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (14) = happyShift action_12
action_76 (15) = happyShift action_3
action_76 (16) = happyShift action_4
action_76 (17) = happyShift action_13
action_76 (19) = happyShift action_14
action_76 (22) = happyShift action_15
action_76 (23) = happyShift action_16
action_76 (24) = happyShift action_17
action_76 (25) = happyShift action_18
action_76 (26) = happyShift action_19
action_76 (27) = happyShift action_20
action_76 (28) = happyShift action_21
action_76 (29) = happyShift action_22
action_76 (30) = happyShift action_23
action_76 (32) = happyShift action_24
action_76 (33) = happyShift action_25
action_76 (34) = happyShift action_26
action_76 (35) = happyShift action_27
action_76 (40) = happyShift action_28
action_76 (4) = happyGoto action_88
action_76 (6) = happyGoto action_2
action_76 (7) = happyGoto action_6
action_76 (8) = happyGoto action_7
action_76 (10) = happyGoto action_8
action_76 (11) = happyGoto action_9
action_76 (12) = happyGoto action_10
action_76 (13) = happyGoto action_11
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (14) = happyShift action_12
action_77 (15) = happyShift action_3
action_77 (16) = happyShift action_4
action_77 (17) = happyShift action_13
action_77 (19) = happyShift action_14
action_77 (22) = happyShift action_15
action_77 (23) = happyShift action_16
action_77 (24) = happyShift action_17
action_77 (25) = happyShift action_18
action_77 (26) = happyShift action_19
action_77 (27) = happyShift action_20
action_77 (28) = happyShift action_21
action_77 (29) = happyShift action_22
action_77 (30) = happyShift action_23
action_77 (32) = happyShift action_24
action_77 (33) = happyShift action_25
action_77 (34) = happyShift action_26
action_77 (35) = happyShift action_27
action_77 (40) = happyShift action_28
action_77 (4) = happyGoto action_87
action_77 (6) = happyGoto action_2
action_77 (7) = happyGoto action_6
action_77 (8) = happyGoto action_7
action_77 (10) = happyGoto action_8
action_77 (11) = happyGoto action_9
action_77 (12) = happyGoto action_10
action_77 (13) = happyGoto action_11
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (25) = happyShift action_18
action_78 (40) = happyShift action_28
action_78 (8) = happyGoto action_86
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_23

action_80 _ = happyReduce_25

action_81 _ = happyReduce_24

action_82 (21) = happyShift action_85
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (18) = happyShift action_84
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (14) = happyShift action_12
action_84 (15) = happyShift action_3
action_84 (16) = happyShift action_4
action_84 (17) = happyShift action_13
action_84 (19) = happyShift action_14
action_84 (22) = happyShift action_15
action_84 (23) = happyShift action_16
action_84 (24) = happyShift action_17
action_84 (25) = happyShift action_18
action_84 (26) = happyShift action_19
action_84 (27) = happyShift action_20
action_84 (28) = happyShift action_21
action_84 (29) = happyShift action_22
action_84 (30) = happyShift action_23
action_84 (32) = happyShift action_24
action_84 (33) = happyShift action_25
action_84 (34) = happyShift action_26
action_84 (35) = happyShift action_27
action_84 (40) = happyShift action_28
action_84 (4) = happyGoto action_107
action_84 (6) = happyGoto action_2
action_84 (7) = happyGoto action_6
action_84 (8) = happyGoto action_7
action_84 (10) = happyGoto action_8
action_84 (11) = happyGoto action_9
action_84 (12) = happyGoto action_10
action_84 (13) = happyGoto action_11
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (14) = happyShift action_12
action_85 (15) = happyShift action_3
action_85 (16) = happyShift action_4
action_85 (17) = happyShift action_13
action_85 (19) = happyShift action_14
action_85 (22) = happyShift action_15
action_85 (23) = happyShift action_16
action_85 (24) = happyShift action_17
action_85 (25) = happyShift action_18
action_85 (26) = happyShift action_19
action_85 (27) = happyShift action_20
action_85 (28) = happyShift action_21
action_85 (29) = happyShift action_22
action_85 (30) = happyShift action_23
action_85 (32) = happyShift action_24
action_85 (33) = happyShift action_25
action_85 (34) = happyShift action_26
action_85 (35) = happyShift action_27
action_85 (40) = happyShift action_28
action_85 (4) = happyGoto action_106
action_85 (6) = happyGoto action_2
action_85 (7) = happyGoto action_6
action_85 (8) = happyGoto action_7
action_85 (10) = happyGoto action_8
action_85 (11) = happyGoto action_9
action_85 (12) = happyGoto action_10
action_85 (13) = happyGoto action_11
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (37) = happyShift action_105
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (37) = happyShift action_104
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (37) = happyShift action_103
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (37) = happyShift action_102
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (37) = happyShift action_101
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (37) = happyShift action_100
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (37) = happyShift action_99
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (37) = happyShift action_98
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (37) = happyShift action_97
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (37) = happyShift action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_32

action_97 _ = happyReduce_31

action_98 _ = happyReduce_30

action_99 _ = happyReduce_29

action_100 _ = happyReduce_35

action_101 _ = happyReduce_34

action_102 _ = happyReduce_33

action_103 _ = happyReduce_28

action_104 _ = happyReduce_27

action_105 _ = happyReduce_18

action_106 _ = happyReduce_22

action_107 _ = happyReduce_21

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Literal happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.Variable happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.List happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.LetExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.IfExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Literal happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Variable happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LetExpr happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  6 happyReduction_14
happyReduction_14 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn6
		 (AST.IntLit happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  6 happyReduction_15
happyReduction_15 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn6
		 (AST.BoolLit happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (AST.Var happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  8 happyReduction_17
happyReduction_17 _
	_
	 =  HappyAbsSyn8
		 (Empty
	)

happyReduce_18 = happyReduce 6 8 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cons happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  9 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 (SList happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn9
		 (Val happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 6 10 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AST.Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 6 11 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 12 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.UnOpExpr AST.Not happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 4 12 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.UnOpExpr AST.IsZero happy_var_3
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 12 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 12 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 6 13 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.And happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 6 13 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Or happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 6 13 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Plus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 6 13 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Minus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 13 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Times happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 13 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Div happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 13 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Eq happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 13 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Gt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 6 13 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.BinOpExpr AST.Lt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 43 43 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 14;
	TokenInt happy_dollar_dollar -> cont 15;
	TokenBoolean happy_dollar_dollar -> cont 16;
	TokenLet -> cont 17;
	TokenIn -> cont 18;
	TokenIf -> cont 19;
	TokenThen -> cont 20;
	TokenElse -> cont 21;
	TokenIsZero -> cont 22;
	TokenNegate -> cont 23;
	TokenNot -> cont 24;
	TokenCons -> cont 25;
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
	TokenOS -> cont 40;
	TokenCS -> cont 41;
	TokenComma -> cont 42;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 43 tk tks = happyError' (tks, explist)
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
  | TokenCons
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
  | TokenOS
  | TokenCS
  | TokenComma
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '[', ']', '&', '|', '!', '<', '>', ',']

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
  "minus",
  "cons"
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
lexKeyword "cons"   = TokenCons
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
lexOperator ('[':cs) = TokenOS : lexer cs
lexOperator (']':cs) = TokenCS : lexer cs
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
