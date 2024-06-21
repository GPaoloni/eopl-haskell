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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
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
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,470) ([0,54000,7935,2,6144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,49152,65355,2171,0,0,0,0,0,0,8,0,0,512,0,0,32768,0,0,0,32,0,0,2048,0,0,0,2,0,0,128,0,0,8192,0,0,0,8,0,0,512,0,0,32768,0,0,0,32,0,0,2048,0,0,0,2,0,0,4096,0,0,0,0,48128,49140,135,0,64815,8687,0,19392,31743,8,61440,65490,542,0,62652,34751,0,12032,61437,33,49152,65355,2171,0,54000,7935,2,48128,49140,135,0,64815,8687,0,19392,31743,8,61440,65490,542,0,62652,34751,0,12032,61437,33,0,128,0,0,54000,7935,2,0,1,0,0,0,16,0,19392,31743,8,61440,65490,542,0,0,0,4,0,0,0,0,0,0,0,0,16384,0,0,0,16,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,8,0,0,512,0,0,32768,0,0,0,32,0,0,2048,0,0,0,2,0,0,128,0,0,8448,0,0,0,8,0,0,512,0,64815,8687,0,19392,31743,8,0,0,0,0,62652,34751,0,12032,61437,33,49152,65355,2171,0,54000,7935,2,48128,49140,135,0,64815,8687,0,19392,31743,8,61440,65490,542,0,0,0,0,0,96,32,0,0,0,0,0,0,0,0,0,0,0,64815,8687,0,8192,0,0,0,1,0,0,62652,34751,0,12032,61437,33,0,0,0,0,0,16384,0,0,0,0,0,0,1024,0,0,0,1,0,0,64,0,0,4096,0,0,0,4,0,0,256,0,0,16384,0,0,0,16,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","List","SyntaxSugarList","ListNode","LetExpr","IfExpr","CondExpr","CondExprRule","UnOp","BinOp","many__CondExprRule__","sepBy__ListNode__','__","many_rev__CondExprRule__","sepBy_rev__ListNode__','__","var","int","boolean","let","in","if","then","else","cond","end","isZero","minus","not","cons","list","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","\"==>\"","%eof"]
        bit_start = st Prelude.* 54
        bit_end = (st Prelude.+ 1) Prelude.* 54
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..53]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (21) = happyShift action_13
action_0 (22) = happyShift action_3
action_0 (23) = happyShift action_4
action_0 (24) = happyShift action_14
action_0 (26) = happyShift action_15
action_0 (29) = happyShift action_16
action_0 (31) = happyShift action_17
action_0 (32) = happyShift action_18
action_0 (33) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (38) = happyShift action_24
action_0 (39) = happyShift action_25
action_0 (40) = happyShift action_26
action_0 (42) = happyShift action_27
action_0 (43) = happyShift action_28
action_0 (44) = happyShift action_29
action_0 (45) = happyShift action_30
action_0 (50) = happyShift action_31
action_0 (4) = happyGoto action_5
action_0 (6) = happyGoto action_2
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 (16) = happyGoto action_12
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (22) = happyShift action_3
action_1 (23) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_16

action_4 _ = happyReduce_17

action_5 (54) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 _ = happyReduce_8

action_13 _ = happyReduce_18

action_14 (21) = happyShift action_50
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (21) = happyShift action_13
action_15 (22) = happyShift action_3
action_15 (23) = happyShift action_4
action_15 (24) = happyShift action_14
action_15 (26) = happyShift action_15
action_15 (29) = happyShift action_16
action_15 (31) = happyShift action_17
action_15 (32) = happyShift action_18
action_15 (33) = happyShift action_19
action_15 (34) = happyShift action_20
action_15 (35) = happyShift action_21
action_15 (36) = happyShift action_22
action_15 (37) = happyShift action_23
action_15 (38) = happyShift action_24
action_15 (39) = happyShift action_25
action_15 (40) = happyShift action_26
action_15 (42) = happyShift action_27
action_15 (43) = happyShift action_28
action_15 (44) = happyShift action_29
action_15 (45) = happyShift action_30
action_15 (50) = happyShift action_31
action_15 (4) = happyGoto action_49
action_15 (6) = happyGoto action_2
action_15 (7) = happyGoto action_6
action_15 (8) = happyGoto action_7
action_15 (11) = happyGoto action_8
action_15 (12) = happyGoto action_9
action_15 (13) = happyGoto action_10
action_15 (15) = happyGoto action_11
action_15 (16) = happyGoto action_12
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (17) = happyGoto action_47
action_16 (19) = happyGoto action_48
action_16 _ = happyReduce_44

action_17 (46) = happyShift action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (46) = happyShift action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (46) = happyShift action_44
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (46) = happyShift action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (46) = happyShift action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (46) = happyShift action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (46) = happyShift action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (46) = happyShift action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (46) = happyShift action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (46) = happyShift action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (46) = happyShift action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (46) = happyShift action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (46) = happyShift action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (46) = happyShift action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (51) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_19

action_33 (21) = happyShift action_13
action_33 (22) = happyShift action_3
action_33 (23) = happyShift action_4
action_33 (24) = happyShift action_14
action_33 (26) = happyShift action_15
action_33 (29) = happyShift action_16
action_33 (31) = happyShift action_17
action_33 (32) = happyShift action_18
action_33 (33) = happyShift action_19
action_33 (34) = happyShift action_20
action_33 (35) = happyShift action_21
action_33 (36) = happyShift action_22
action_33 (37) = happyShift action_23
action_33 (38) = happyShift action_24
action_33 (39) = happyShift action_25
action_33 (40) = happyShift action_26
action_33 (42) = happyShift action_27
action_33 (43) = happyShift action_28
action_33 (44) = happyShift action_29
action_33 (45) = happyShift action_30
action_33 (50) = happyShift action_31
action_33 (4) = happyGoto action_81
action_33 (6) = happyGoto action_2
action_33 (7) = happyGoto action_6
action_33 (8) = happyGoto action_7
action_33 (11) = happyGoto action_8
action_33 (12) = happyGoto action_9
action_33 (13) = happyGoto action_10
action_33 (15) = happyGoto action_11
action_33 (16) = happyGoto action_12
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (21) = happyShift action_13
action_34 (22) = happyShift action_3
action_34 (23) = happyShift action_4
action_34 (24) = happyShift action_14
action_34 (26) = happyShift action_15
action_34 (29) = happyShift action_16
action_34 (31) = happyShift action_17
action_34 (32) = happyShift action_18
action_34 (33) = happyShift action_19
action_34 (34) = happyShift action_20
action_34 (35) = happyShift action_21
action_34 (36) = happyShift action_22
action_34 (37) = happyShift action_23
action_34 (38) = happyShift action_24
action_34 (39) = happyShift action_25
action_34 (40) = happyShift action_26
action_34 (42) = happyShift action_27
action_34 (43) = happyShift action_28
action_34 (44) = happyShift action_29
action_34 (45) = happyShift action_30
action_34 (50) = happyShift action_31
action_34 (4) = happyGoto action_80
action_34 (6) = happyGoto action_2
action_34 (7) = happyGoto action_6
action_34 (8) = happyGoto action_7
action_34 (11) = happyGoto action_8
action_34 (12) = happyGoto action_9
action_34 (13) = happyGoto action_10
action_34 (15) = happyGoto action_11
action_34 (16) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (21) = happyShift action_13
action_35 (22) = happyShift action_3
action_35 (23) = happyShift action_4
action_35 (24) = happyShift action_14
action_35 (26) = happyShift action_15
action_35 (29) = happyShift action_16
action_35 (31) = happyShift action_17
action_35 (32) = happyShift action_18
action_35 (33) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (36) = happyShift action_22
action_35 (37) = happyShift action_23
action_35 (38) = happyShift action_24
action_35 (39) = happyShift action_25
action_35 (40) = happyShift action_26
action_35 (42) = happyShift action_27
action_35 (43) = happyShift action_28
action_35 (44) = happyShift action_29
action_35 (45) = happyShift action_30
action_35 (50) = happyShift action_31
action_35 (4) = happyGoto action_79
action_35 (6) = happyGoto action_2
action_35 (7) = happyGoto action_6
action_35 (8) = happyGoto action_7
action_35 (11) = happyGoto action_8
action_35 (12) = happyGoto action_9
action_35 (13) = happyGoto action_10
action_35 (15) = happyGoto action_11
action_35 (16) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (21) = happyShift action_13
action_36 (22) = happyShift action_3
action_36 (23) = happyShift action_4
action_36 (24) = happyShift action_14
action_36 (26) = happyShift action_15
action_36 (29) = happyShift action_16
action_36 (31) = happyShift action_17
action_36 (32) = happyShift action_18
action_36 (33) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (37) = happyShift action_23
action_36 (38) = happyShift action_24
action_36 (39) = happyShift action_25
action_36 (40) = happyShift action_26
action_36 (42) = happyShift action_27
action_36 (43) = happyShift action_28
action_36 (44) = happyShift action_29
action_36 (45) = happyShift action_30
action_36 (50) = happyShift action_31
action_36 (4) = happyGoto action_78
action_36 (6) = happyGoto action_2
action_36 (7) = happyGoto action_6
action_36 (8) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 (13) = happyGoto action_10
action_36 (15) = happyGoto action_11
action_36 (16) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (21) = happyShift action_13
action_37 (22) = happyShift action_3
action_37 (23) = happyShift action_4
action_37 (24) = happyShift action_14
action_37 (26) = happyShift action_15
action_37 (29) = happyShift action_16
action_37 (31) = happyShift action_17
action_37 (32) = happyShift action_18
action_37 (33) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (35) = happyShift action_21
action_37 (36) = happyShift action_22
action_37 (37) = happyShift action_23
action_37 (38) = happyShift action_24
action_37 (39) = happyShift action_25
action_37 (40) = happyShift action_26
action_37 (42) = happyShift action_27
action_37 (43) = happyShift action_28
action_37 (44) = happyShift action_29
action_37 (45) = happyShift action_30
action_37 (50) = happyShift action_31
action_37 (4) = happyGoto action_77
action_37 (6) = happyGoto action_2
action_37 (7) = happyGoto action_6
action_37 (8) = happyGoto action_7
action_37 (11) = happyGoto action_8
action_37 (12) = happyGoto action_9
action_37 (13) = happyGoto action_10
action_37 (15) = happyGoto action_11
action_37 (16) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (21) = happyShift action_13
action_38 (22) = happyShift action_3
action_38 (23) = happyShift action_4
action_38 (24) = happyShift action_14
action_38 (26) = happyShift action_15
action_38 (29) = happyShift action_16
action_38 (31) = happyShift action_17
action_38 (32) = happyShift action_18
action_38 (33) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (37) = happyShift action_23
action_38 (38) = happyShift action_24
action_38 (39) = happyShift action_25
action_38 (40) = happyShift action_26
action_38 (42) = happyShift action_27
action_38 (43) = happyShift action_28
action_38 (44) = happyShift action_29
action_38 (45) = happyShift action_30
action_38 (50) = happyShift action_31
action_38 (4) = happyGoto action_76
action_38 (6) = happyGoto action_2
action_38 (7) = happyGoto action_6
action_38 (8) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 (12) = happyGoto action_9
action_38 (13) = happyGoto action_10
action_38 (15) = happyGoto action_11
action_38 (16) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (21) = happyShift action_13
action_39 (22) = happyShift action_3
action_39 (23) = happyShift action_4
action_39 (24) = happyShift action_14
action_39 (26) = happyShift action_15
action_39 (29) = happyShift action_16
action_39 (31) = happyShift action_17
action_39 (32) = happyShift action_18
action_39 (33) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (37) = happyShift action_23
action_39 (38) = happyShift action_24
action_39 (39) = happyShift action_25
action_39 (40) = happyShift action_26
action_39 (42) = happyShift action_27
action_39 (43) = happyShift action_28
action_39 (44) = happyShift action_29
action_39 (45) = happyShift action_30
action_39 (50) = happyShift action_31
action_39 (4) = happyGoto action_75
action_39 (6) = happyGoto action_2
action_39 (7) = happyGoto action_6
action_39 (8) = happyGoto action_7
action_39 (11) = happyGoto action_8
action_39 (12) = happyGoto action_9
action_39 (13) = happyGoto action_10
action_39 (15) = happyGoto action_11
action_39 (16) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (21) = happyShift action_13
action_40 (22) = happyShift action_3
action_40 (23) = happyShift action_4
action_40 (24) = happyShift action_14
action_40 (26) = happyShift action_15
action_40 (29) = happyShift action_16
action_40 (31) = happyShift action_17
action_40 (32) = happyShift action_18
action_40 (33) = happyShift action_19
action_40 (34) = happyShift action_20
action_40 (35) = happyShift action_21
action_40 (36) = happyShift action_22
action_40 (37) = happyShift action_23
action_40 (38) = happyShift action_24
action_40 (39) = happyShift action_25
action_40 (40) = happyShift action_26
action_40 (42) = happyShift action_27
action_40 (43) = happyShift action_28
action_40 (44) = happyShift action_29
action_40 (45) = happyShift action_30
action_40 (50) = happyShift action_31
action_40 (4) = happyGoto action_74
action_40 (6) = happyGoto action_2
action_40 (7) = happyGoto action_6
action_40 (8) = happyGoto action_7
action_40 (11) = happyGoto action_8
action_40 (12) = happyGoto action_9
action_40 (13) = happyGoto action_10
action_40 (15) = happyGoto action_11
action_40 (16) = happyGoto action_12
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (21) = happyShift action_13
action_41 (22) = happyShift action_3
action_41 (23) = happyShift action_4
action_41 (24) = happyShift action_14
action_41 (26) = happyShift action_15
action_41 (29) = happyShift action_16
action_41 (31) = happyShift action_17
action_41 (32) = happyShift action_18
action_41 (33) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (37) = happyShift action_23
action_41 (38) = happyShift action_24
action_41 (39) = happyShift action_25
action_41 (40) = happyShift action_26
action_41 (42) = happyShift action_27
action_41 (43) = happyShift action_28
action_41 (44) = happyShift action_29
action_41 (45) = happyShift action_30
action_41 (50) = happyShift action_31
action_41 (4) = happyGoto action_73
action_41 (6) = happyGoto action_2
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (11) = happyGoto action_8
action_41 (12) = happyGoto action_9
action_41 (13) = happyGoto action_10
action_41 (15) = happyGoto action_11
action_41 (16) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (21) = happyShift action_13
action_42 (22) = happyShift action_3
action_42 (23) = happyShift action_4
action_42 (24) = happyShift action_14
action_42 (26) = happyShift action_15
action_42 (29) = happyShift action_16
action_42 (31) = happyShift action_17
action_42 (32) = happyShift action_18
action_42 (33) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (35) = happyShift action_21
action_42 (36) = happyShift action_22
action_42 (37) = happyShift action_23
action_42 (38) = happyShift action_24
action_42 (39) = happyShift action_25
action_42 (40) = happyShift action_26
action_42 (42) = happyShift action_27
action_42 (43) = happyShift action_28
action_42 (44) = happyShift action_29
action_42 (45) = happyShift action_30
action_42 (50) = happyShift action_31
action_42 (5) = happyGoto action_59
action_42 (6) = happyGoto action_60
action_42 (7) = happyGoto action_61
action_42 (8) = happyGoto action_62
action_42 (9) = happyGoto action_69
action_42 (10) = happyGoto action_70
action_42 (11) = happyGoto action_64
action_42 (12) = happyGoto action_65
action_42 (13) = happyGoto action_66
action_42 (15) = happyGoto action_67
action_42 (16) = happyGoto action_68
action_42 (18) = happyGoto action_71
action_42 (20) = happyGoto action_72
action_42 _ = happyReduce_46

action_43 (21) = happyShift action_13
action_43 (22) = happyShift action_3
action_43 (23) = happyShift action_4
action_43 (24) = happyShift action_14
action_43 (26) = happyShift action_15
action_43 (29) = happyShift action_16
action_43 (31) = happyShift action_17
action_43 (32) = happyShift action_18
action_43 (33) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (35) = happyShift action_21
action_43 (36) = happyShift action_22
action_43 (37) = happyShift action_23
action_43 (38) = happyShift action_24
action_43 (39) = happyShift action_25
action_43 (40) = happyShift action_26
action_43 (42) = happyShift action_27
action_43 (43) = happyShift action_28
action_43 (44) = happyShift action_29
action_43 (45) = happyShift action_30
action_43 (50) = happyShift action_31
action_43 (5) = happyGoto action_59
action_43 (6) = happyGoto action_60
action_43 (7) = happyGoto action_61
action_43 (8) = happyGoto action_62
action_43 (10) = happyGoto action_63
action_43 (11) = happyGoto action_64
action_43 (12) = happyGoto action_65
action_43 (13) = happyGoto action_66
action_43 (15) = happyGoto action_67
action_43 (16) = happyGoto action_68
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (21) = happyShift action_13
action_44 (22) = happyShift action_3
action_44 (23) = happyShift action_4
action_44 (24) = happyShift action_14
action_44 (26) = happyShift action_15
action_44 (29) = happyShift action_16
action_44 (31) = happyShift action_17
action_44 (32) = happyShift action_18
action_44 (33) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (38) = happyShift action_24
action_44 (39) = happyShift action_25
action_44 (40) = happyShift action_26
action_44 (42) = happyShift action_27
action_44 (43) = happyShift action_28
action_44 (44) = happyShift action_29
action_44 (45) = happyShift action_30
action_44 (50) = happyShift action_31
action_44 (4) = happyGoto action_58
action_44 (6) = happyGoto action_2
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (11) = happyGoto action_8
action_44 (12) = happyGoto action_9
action_44 (13) = happyGoto action_10
action_44 (15) = happyGoto action_11
action_44 (16) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (21) = happyShift action_13
action_45 (22) = happyShift action_3
action_45 (23) = happyShift action_4
action_45 (24) = happyShift action_14
action_45 (26) = happyShift action_15
action_45 (29) = happyShift action_16
action_45 (31) = happyShift action_17
action_45 (32) = happyShift action_18
action_45 (33) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (37) = happyShift action_23
action_45 (38) = happyShift action_24
action_45 (39) = happyShift action_25
action_45 (40) = happyShift action_26
action_45 (42) = happyShift action_27
action_45 (43) = happyShift action_28
action_45 (44) = happyShift action_29
action_45 (45) = happyShift action_30
action_45 (50) = happyShift action_31
action_45 (4) = happyGoto action_57
action_45 (6) = happyGoto action_2
action_45 (7) = happyGoto action_6
action_45 (8) = happyGoto action_7
action_45 (11) = happyGoto action_8
action_45 (12) = happyGoto action_9
action_45 (13) = happyGoto action_10
action_45 (15) = happyGoto action_11
action_45 (16) = happyGoto action_12
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (21) = happyShift action_13
action_46 (22) = happyShift action_3
action_46 (23) = happyShift action_4
action_46 (24) = happyShift action_14
action_46 (26) = happyShift action_15
action_46 (29) = happyShift action_16
action_46 (31) = happyShift action_17
action_46 (32) = happyShift action_18
action_46 (33) = happyShift action_19
action_46 (34) = happyShift action_20
action_46 (35) = happyShift action_21
action_46 (36) = happyShift action_22
action_46 (37) = happyShift action_23
action_46 (38) = happyShift action_24
action_46 (39) = happyShift action_25
action_46 (40) = happyShift action_26
action_46 (42) = happyShift action_27
action_46 (43) = happyShift action_28
action_46 (44) = happyShift action_29
action_46 (45) = happyShift action_30
action_46 (50) = happyShift action_31
action_46 (4) = happyGoto action_56
action_46 (6) = happyGoto action_2
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (11) = happyGoto action_8
action_46 (12) = happyGoto action_9
action_46 (13) = happyGoto action_10
action_46 (15) = happyGoto action_11
action_46 (16) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (30) = happyShift action_55
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (21) = happyShift action_13
action_48 (22) = happyShift action_3
action_48 (23) = happyShift action_4
action_48 (24) = happyShift action_14
action_48 (26) = happyShift action_15
action_48 (29) = happyShift action_16
action_48 (31) = happyShift action_17
action_48 (32) = happyShift action_18
action_48 (33) = happyShift action_19
action_48 (34) = happyShift action_20
action_48 (35) = happyShift action_21
action_48 (36) = happyShift action_22
action_48 (37) = happyShift action_23
action_48 (38) = happyShift action_24
action_48 (39) = happyShift action_25
action_48 (40) = happyShift action_26
action_48 (42) = happyShift action_27
action_48 (43) = happyShift action_28
action_48 (44) = happyShift action_29
action_48 (45) = happyShift action_30
action_48 (50) = happyShift action_31
action_48 (4) = happyGoto action_53
action_48 (6) = happyGoto action_2
action_48 (7) = happyGoto action_6
action_48 (8) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 (13) = happyGoto action_10
action_48 (14) = happyGoto action_54
action_48 (15) = happyGoto action_11
action_48 (16) = happyGoto action_12
action_48 _ = happyReduce_42

action_49 (27) = happyShift action_52
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (41) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (21) = happyShift action_13
action_51 (22) = happyShift action_3
action_51 (23) = happyShift action_4
action_51 (24) = happyShift action_14
action_51 (26) = happyShift action_15
action_51 (29) = happyShift action_16
action_51 (31) = happyShift action_17
action_51 (32) = happyShift action_18
action_51 (33) = happyShift action_19
action_51 (34) = happyShift action_20
action_51 (35) = happyShift action_21
action_51 (36) = happyShift action_22
action_51 (37) = happyShift action_23
action_51 (38) = happyShift action_24
action_51 (39) = happyShift action_25
action_51 (40) = happyShift action_26
action_51 (42) = happyShift action_27
action_51 (43) = happyShift action_28
action_51 (44) = happyShift action_29
action_51 (45) = happyShift action_30
action_51 (50) = happyShift action_31
action_51 (4) = happyGoto action_100
action_51 (6) = happyGoto action_2
action_51 (7) = happyGoto action_6
action_51 (8) = happyGoto action_7
action_51 (11) = happyGoto action_8
action_51 (12) = happyGoto action_9
action_51 (13) = happyGoto action_10
action_51 (15) = happyGoto action_11
action_51 (16) = happyGoto action_12
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (21) = happyShift action_13
action_52 (22) = happyShift action_3
action_52 (23) = happyShift action_4
action_52 (24) = happyShift action_14
action_52 (26) = happyShift action_15
action_52 (29) = happyShift action_16
action_52 (31) = happyShift action_17
action_52 (32) = happyShift action_18
action_52 (33) = happyShift action_19
action_52 (34) = happyShift action_20
action_52 (35) = happyShift action_21
action_52 (36) = happyShift action_22
action_52 (37) = happyShift action_23
action_52 (38) = happyShift action_24
action_52 (39) = happyShift action_25
action_52 (40) = happyShift action_26
action_52 (42) = happyShift action_27
action_52 (43) = happyShift action_28
action_52 (44) = happyShift action_29
action_52 (45) = happyShift action_30
action_52 (50) = happyShift action_31
action_52 (4) = happyGoto action_99
action_52 (6) = happyGoto action_2
action_52 (7) = happyGoto action_6
action_52 (8) = happyGoto action_7
action_52 (11) = happyGoto action_8
action_52 (12) = happyGoto action_9
action_52 (13) = happyGoto action_10
action_52 (15) = happyGoto action_11
action_52 (16) = happyGoto action_12
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (53) = happyShift action_98
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_45

action_55 _ = happyReduce_27

action_56 (47) = happyShift action_97
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (47) = happyShift action_96
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (47) = happyShift action_95
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_24

action_60 _ = happyReduce_9

action_61 _ = happyReduce_10

action_62 _ = happyReduce_23

action_63 (52) = happyShift action_94
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_11

action_65 _ = happyReduce_12

action_66 _ = happyReduce_13

action_67 _ = happyReduce_14

action_68 _ = happyReduce_15

action_69 (47) = happyShift action_93
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_47

action_71 _ = happyReduce_22

action_72 (52) = happyShift action_92
action_72 _ = happyReduce_43

action_73 (52) = happyShift action_91
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (52) = happyShift action_90
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (52) = happyShift action_89
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (52) = happyShift action_88
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (52) = happyShift action_87
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (52) = happyShift action_86
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (47) = happyShift action_84
action_79 (52) = happyShift action_85
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (52) = happyShift action_83
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (52) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (21) = happyShift action_13
action_82 (22) = happyShift action_3
action_82 (23) = happyShift action_4
action_82 (24) = happyShift action_14
action_82 (26) = happyShift action_15
action_82 (29) = happyShift action_16
action_82 (31) = happyShift action_17
action_82 (32) = happyShift action_18
action_82 (33) = happyShift action_19
action_82 (34) = happyShift action_20
action_82 (35) = happyShift action_21
action_82 (36) = happyShift action_22
action_82 (37) = happyShift action_23
action_82 (38) = happyShift action_24
action_82 (39) = happyShift action_25
action_82 (40) = happyShift action_26
action_82 (42) = happyShift action_27
action_82 (43) = happyShift action_28
action_82 (44) = happyShift action_29
action_82 (45) = happyShift action_30
action_82 (50) = happyShift action_31
action_82 (4) = happyGoto action_114
action_82 (6) = happyGoto action_2
action_82 (7) = happyGoto action_6
action_82 (8) = happyGoto action_7
action_82 (11) = happyGoto action_8
action_82 (12) = happyGoto action_9
action_82 (13) = happyGoto action_10
action_82 (15) = happyGoto action_11
action_82 (16) = happyGoto action_12
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (21) = happyShift action_13
action_83 (22) = happyShift action_3
action_83 (23) = happyShift action_4
action_83 (24) = happyShift action_14
action_83 (26) = happyShift action_15
action_83 (29) = happyShift action_16
action_83 (31) = happyShift action_17
action_83 (32) = happyShift action_18
action_83 (33) = happyShift action_19
action_83 (34) = happyShift action_20
action_83 (35) = happyShift action_21
action_83 (36) = happyShift action_22
action_83 (37) = happyShift action_23
action_83 (38) = happyShift action_24
action_83 (39) = happyShift action_25
action_83 (40) = happyShift action_26
action_83 (42) = happyShift action_27
action_83 (43) = happyShift action_28
action_83 (44) = happyShift action_29
action_83 (45) = happyShift action_30
action_83 (50) = happyShift action_31
action_83 (4) = happyGoto action_113
action_83 (6) = happyGoto action_2
action_83 (7) = happyGoto action_6
action_83 (8) = happyGoto action_7
action_83 (11) = happyGoto action_8
action_83 (12) = happyGoto action_9
action_83 (13) = happyGoto action_10
action_83 (15) = happyGoto action_11
action_83 (16) = happyGoto action_12
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_32

action_85 (21) = happyShift action_13
action_85 (22) = happyShift action_3
action_85 (23) = happyShift action_4
action_85 (24) = happyShift action_14
action_85 (26) = happyShift action_15
action_85 (29) = happyShift action_16
action_85 (31) = happyShift action_17
action_85 (32) = happyShift action_18
action_85 (33) = happyShift action_19
action_85 (34) = happyShift action_20
action_85 (35) = happyShift action_21
action_85 (36) = happyShift action_22
action_85 (37) = happyShift action_23
action_85 (38) = happyShift action_24
action_85 (39) = happyShift action_25
action_85 (40) = happyShift action_26
action_85 (42) = happyShift action_27
action_85 (43) = happyShift action_28
action_85 (44) = happyShift action_29
action_85 (45) = happyShift action_30
action_85 (50) = happyShift action_31
action_85 (4) = happyGoto action_112
action_85 (6) = happyGoto action_2
action_85 (7) = happyGoto action_6
action_85 (8) = happyGoto action_7
action_85 (11) = happyGoto action_8
action_85 (12) = happyGoto action_9
action_85 (13) = happyGoto action_10
action_85 (15) = happyGoto action_11
action_85 (16) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (21) = happyShift action_13
action_86 (22) = happyShift action_3
action_86 (23) = happyShift action_4
action_86 (24) = happyShift action_14
action_86 (26) = happyShift action_15
action_86 (29) = happyShift action_16
action_86 (31) = happyShift action_17
action_86 (32) = happyShift action_18
action_86 (33) = happyShift action_19
action_86 (34) = happyShift action_20
action_86 (35) = happyShift action_21
action_86 (36) = happyShift action_22
action_86 (37) = happyShift action_23
action_86 (38) = happyShift action_24
action_86 (39) = happyShift action_25
action_86 (40) = happyShift action_26
action_86 (42) = happyShift action_27
action_86 (43) = happyShift action_28
action_86 (44) = happyShift action_29
action_86 (45) = happyShift action_30
action_86 (50) = happyShift action_31
action_86 (4) = happyGoto action_111
action_86 (6) = happyGoto action_2
action_86 (7) = happyGoto action_6
action_86 (8) = happyGoto action_7
action_86 (11) = happyGoto action_8
action_86 (12) = happyGoto action_9
action_86 (13) = happyGoto action_10
action_86 (15) = happyGoto action_11
action_86 (16) = happyGoto action_12
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (21) = happyShift action_13
action_87 (22) = happyShift action_3
action_87 (23) = happyShift action_4
action_87 (24) = happyShift action_14
action_87 (26) = happyShift action_15
action_87 (29) = happyShift action_16
action_87 (31) = happyShift action_17
action_87 (32) = happyShift action_18
action_87 (33) = happyShift action_19
action_87 (34) = happyShift action_20
action_87 (35) = happyShift action_21
action_87 (36) = happyShift action_22
action_87 (37) = happyShift action_23
action_87 (38) = happyShift action_24
action_87 (39) = happyShift action_25
action_87 (40) = happyShift action_26
action_87 (42) = happyShift action_27
action_87 (43) = happyShift action_28
action_87 (44) = happyShift action_29
action_87 (45) = happyShift action_30
action_87 (50) = happyShift action_31
action_87 (4) = happyGoto action_110
action_87 (6) = happyGoto action_2
action_87 (7) = happyGoto action_6
action_87 (8) = happyGoto action_7
action_87 (11) = happyGoto action_8
action_87 (12) = happyGoto action_9
action_87 (13) = happyGoto action_10
action_87 (15) = happyGoto action_11
action_87 (16) = happyGoto action_12
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (21) = happyShift action_13
action_88 (22) = happyShift action_3
action_88 (23) = happyShift action_4
action_88 (24) = happyShift action_14
action_88 (26) = happyShift action_15
action_88 (29) = happyShift action_16
action_88 (31) = happyShift action_17
action_88 (32) = happyShift action_18
action_88 (33) = happyShift action_19
action_88 (34) = happyShift action_20
action_88 (35) = happyShift action_21
action_88 (36) = happyShift action_22
action_88 (37) = happyShift action_23
action_88 (38) = happyShift action_24
action_88 (39) = happyShift action_25
action_88 (40) = happyShift action_26
action_88 (42) = happyShift action_27
action_88 (43) = happyShift action_28
action_88 (44) = happyShift action_29
action_88 (45) = happyShift action_30
action_88 (50) = happyShift action_31
action_88 (4) = happyGoto action_109
action_88 (6) = happyGoto action_2
action_88 (7) = happyGoto action_6
action_88 (8) = happyGoto action_7
action_88 (11) = happyGoto action_8
action_88 (12) = happyGoto action_9
action_88 (13) = happyGoto action_10
action_88 (15) = happyGoto action_11
action_88 (16) = happyGoto action_12
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (21) = happyShift action_13
action_89 (22) = happyShift action_3
action_89 (23) = happyShift action_4
action_89 (24) = happyShift action_14
action_89 (26) = happyShift action_15
action_89 (29) = happyShift action_16
action_89 (31) = happyShift action_17
action_89 (32) = happyShift action_18
action_89 (33) = happyShift action_19
action_89 (34) = happyShift action_20
action_89 (35) = happyShift action_21
action_89 (36) = happyShift action_22
action_89 (37) = happyShift action_23
action_89 (38) = happyShift action_24
action_89 (39) = happyShift action_25
action_89 (40) = happyShift action_26
action_89 (42) = happyShift action_27
action_89 (43) = happyShift action_28
action_89 (44) = happyShift action_29
action_89 (45) = happyShift action_30
action_89 (50) = happyShift action_31
action_89 (4) = happyGoto action_108
action_89 (6) = happyGoto action_2
action_89 (7) = happyGoto action_6
action_89 (8) = happyGoto action_7
action_89 (11) = happyGoto action_8
action_89 (12) = happyGoto action_9
action_89 (13) = happyGoto action_10
action_89 (15) = happyGoto action_11
action_89 (16) = happyGoto action_12
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (21) = happyShift action_13
action_90 (22) = happyShift action_3
action_90 (23) = happyShift action_4
action_90 (24) = happyShift action_14
action_90 (26) = happyShift action_15
action_90 (29) = happyShift action_16
action_90 (31) = happyShift action_17
action_90 (32) = happyShift action_18
action_90 (33) = happyShift action_19
action_90 (34) = happyShift action_20
action_90 (35) = happyShift action_21
action_90 (36) = happyShift action_22
action_90 (37) = happyShift action_23
action_90 (38) = happyShift action_24
action_90 (39) = happyShift action_25
action_90 (40) = happyShift action_26
action_90 (42) = happyShift action_27
action_90 (43) = happyShift action_28
action_90 (44) = happyShift action_29
action_90 (45) = happyShift action_30
action_90 (50) = happyShift action_31
action_90 (4) = happyGoto action_107
action_90 (6) = happyGoto action_2
action_90 (7) = happyGoto action_6
action_90 (8) = happyGoto action_7
action_90 (11) = happyGoto action_8
action_90 (12) = happyGoto action_9
action_90 (13) = happyGoto action_10
action_90 (15) = happyGoto action_11
action_90 (16) = happyGoto action_12
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (21) = happyShift action_13
action_91 (22) = happyShift action_3
action_91 (23) = happyShift action_4
action_91 (24) = happyShift action_14
action_91 (26) = happyShift action_15
action_91 (29) = happyShift action_16
action_91 (31) = happyShift action_17
action_91 (32) = happyShift action_18
action_91 (33) = happyShift action_19
action_91 (34) = happyShift action_20
action_91 (35) = happyShift action_21
action_91 (36) = happyShift action_22
action_91 (37) = happyShift action_23
action_91 (38) = happyShift action_24
action_91 (39) = happyShift action_25
action_91 (40) = happyShift action_26
action_91 (42) = happyShift action_27
action_91 (43) = happyShift action_28
action_91 (44) = happyShift action_29
action_91 (45) = happyShift action_30
action_91 (50) = happyShift action_31
action_91 (4) = happyGoto action_106
action_91 (6) = happyGoto action_2
action_91 (7) = happyGoto action_6
action_91 (8) = happyGoto action_7
action_91 (11) = happyGoto action_8
action_91 (12) = happyGoto action_9
action_91 (13) = happyGoto action_10
action_91 (15) = happyGoto action_11
action_91 (16) = happyGoto action_12
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (21) = happyShift action_13
action_92 (22) = happyShift action_3
action_92 (23) = happyShift action_4
action_92 (24) = happyShift action_14
action_92 (26) = happyShift action_15
action_92 (29) = happyShift action_16
action_92 (31) = happyShift action_17
action_92 (32) = happyShift action_18
action_92 (33) = happyShift action_19
action_92 (34) = happyShift action_20
action_92 (35) = happyShift action_21
action_92 (36) = happyShift action_22
action_92 (37) = happyShift action_23
action_92 (38) = happyShift action_24
action_92 (39) = happyShift action_25
action_92 (40) = happyShift action_26
action_92 (42) = happyShift action_27
action_92 (43) = happyShift action_28
action_92 (44) = happyShift action_29
action_92 (45) = happyShift action_30
action_92 (50) = happyShift action_31
action_92 (5) = happyGoto action_59
action_92 (6) = happyGoto action_60
action_92 (7) = happyGoto action_61
action_92 (8) = happyGoto action_62
action_92 (10) = happyGoto action_105
action_92 (11) = happyGoto action_64
action_92 (12) = happyGoto action_65
action_92 (13) = happyGoto action_66
action_92 (15) = happyGoto action_67
action_92 (16) = happyGoto action_68
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_21

action_94 (34) = happyShift action_20
action_94 (35) = happyShift action_21
action_94 (50) = happyShift action_31
action_94 (8) = happyGoto action_104
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_29

action_96 _ = happyReduce_31

action_97 _ = happyReduce_30

action_98 (21) = happyShift action_13
action_98 (22) = happyShift action_3
action_98 (23) = happyShift action_4
action_98 (24) = happyShift action_14
action_98 (26) = happyShift action_15
action_98 (29) = happyShift action_16
action_98 (31) = happyShift action_17
action_98 (32) = happyShift action_18
action_98 (33) = happyShift action_19
action_98 (34) = happyShift action_20
action_98 (35) = happyShift action_21
action_98 (36) = happyShift action_22
action_98 (37) = happyShift action_23
action_98 (38) = happyShift action_24
action_98 (39) = happyShift action_25
action_98 (40) = happyShift action_26
action_98 (42) = happyShift action_27
action_98 (43) = happyShift action_28
action_98 (44) = happyShift action_29
action_98 (45) = happyShift action_30
action_98 (50) = happyShift action_31
action_98 (4) = happyGoto action_103
action_98 (6) = happyGoto action_2
action_98 (7) = happyGoto action_6
action_98 (8) = happyGoto action_7
action_98 (11) = happyGoto action_8
action_98 (12) = happyGoto action_9
action_98 (13) = happyGoto action_10
action_98 (15) = happyGoto action_11
action_98 (16) = happyGoto action_12
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (28) = happyShift action_102
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (25) = happyShift action_101
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (21) = happyShift action_13
action_101 (22) = happyShift action_3
action_101 (23) = happyShift action_4
action_101 (24) = happyShift action_14
action_101 (26) = happyShift action_15
action_101 (29) = happyShift action_16
action_101 (31) = happyShift action_17
action_101 (32) = happyShift action_18
action_101 (33) = happyShift action_19
action_101 (34) = happyShift action_20
action_101 (35) = happyShift action_21
action_101 (36) = happyShift action_22
action_101 (37) = happyShift action_23
action_101 (38) = happyShift action_24
action_101 (39) = happyShift action_25
action_101 (40) = happyShift action_26
action_101 (42) = happyShift action_27
action_101 (43) = happyShift action_28
action_101 (44) = happyShift action_29
action_101 (45) = happyShift action_30
action_101 (50) = happyShift action_31
action_101 (4) = happyGoto action_126
action_101 (6) = happyGoto action_2
action_101 (7) = happyGoto action_6
action_101 (8) = happyGoto action_7
action_101 (11) = happyGoto action_8
action_101 (12) = happyGoto action_9
action_101 (13) = happyGoto action_10
action_101 (15) = happyGoto action_11
action_101 (16) = happyGoto action_12
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (21) = happyShift action_13
action_102 (22) = happyShift action_3
action_102 (23) = happyShift action_4
action_102 (24) = happyShift action_14
action_102 (26) = happyShift action_15
action_102 (29) = happyShift action_16
action_102 (31) = happyShift action_17
action_102 (32) = happyShift action_18
action_102 (33) = happyShift action_19
action_102 (34) = happyShift action_20
action_102 (35) = happyShift action_21
action_102 (36) = happyShift action_22
action_102 (37) = happyShift action_23
action_102 (38) = happyShift action_24
action_102 (39) = happyShift action_25
action_102 (40) = happyShift action_26
action_102 (42) = happyShift action_27
action_102 (43) = happyShift action_28
action_102 (44) = happyShift action_29
action_102 (45) = happyShift action_30
action_102 (50) = happyShift action_31
action_102 (4) = happyGoto action_125
action_102 (6) = happyGoto action_2
action_102 (7) = happyGoto action_6
action_102 (8) = happyGoto action_7
action_102 (11) = happyGoto action_8
action_102 (12) = happyGoto action_9
action_102 (13) = happyGoto action_10
action_102 (15) = happyGoto action_11
action_102 (16) = happyGoto action_12
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_28

action_104 (47) = happyShift action_124
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_48

action_106 (47) = happyShift action_123
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (47) = happyShift action_122
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (47) = happyShift action_121
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (47) = happyShift action_120
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (47) = happyShift action_119
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (47) = happyShift action_118
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (47) = happyShift action_117
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (47) = happyShift action_116
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (47) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_38

action_116 _ = happyReduce_37

action_117 _ = happyReduce_36

action_118 _ = happyReduce_35

action_119 _ = happyReduce_41

action_120 _ = happyReduce_40

action_121 _ = happyReduce_39

action_122 _ = happyReduce_34

action_123 _ = happyReduce_33

action_124 _ = happyReduce_20

action_125 _ = happyReduce_26

action_126 _ = happyReduce_25

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
happyReduction_4 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.LetExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.IfExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.CondExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Literal happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Variable happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LetExpr happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.CondExpr happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  6 happyReduction_16
happyReduction_16 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn6
		 (AST.IntLit happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  6 happyReduction_17
happyReduction_17 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn6
		 (AST.BoolLit happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  7 happyReduction_18
happyReduction_18 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (AST.Var happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  8 happyReduction_19
happyReduction_19 _
	_
	 =  HappyAbsSyn8
		 (Empty
	)

happyReduce_20 = happyReduce 6 8 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cons happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 8 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (foldr Cons Empty happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (SList happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Val happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happyReduce 6 11 happyReduction_25
happyReduction_25 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 6 12 happyReduction_26
happyReduction_26 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (AST.Cond happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  14 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn14
		 ((happy_var_1,  happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 15 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.UnOpExpr AST.Not happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 15 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.UnOpExpr AST.IsZero happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 15 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 15 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.UnOpExpr AST.Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 16 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.And happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 16 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Or happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 6 16 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Plus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 6 16 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Minus happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 6 16 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Times happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 6 16 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Div happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 16 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Eq happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 6 16 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Gt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 6 16 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.BinOpExpr AST.Lt happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_1  17 happyReduction_42
happyReduction_42 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn17
		 (reverse happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  18 happyReduction_43
happyReduction_43 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn18
		 (reverse happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_0  19 happyReduction_44
happyReduction_44  =  HappyAbsSyn19
		 ([]
	)

happyReduce_45 = happySpecReduce_2  19 happyReduction_45
happyReduction_45 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_2 : happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  20 happyReduction_46
happyReduction_46  =  HappyAbsSyn20
		 ([]
	)

happyReduce_47 = happySpecReduce_1  20 happyReduction_47
happyReduction_47 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn20
		 ([happy_var_1]
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  20 happyReduction_48
happyReduction_48 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_3 : happy_var_1
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 21;
	TokenInt happy_dollar_dollar -> cont 22;
	TokenBoolean happy_dollar_dollar -> cont 23;
	TokenLet -> cont 24;
	TokenIn -> cont 25;
	TokenIf -> cont 26;
	TokenThen -> cont 27;
	TokenElse -> cont 28;
	TokenCond -> cont 29;
	TokenEnd -> cont 30;
	TokenIsZero -> cont 31;
	TokenNegate -> cont 32;
	TokenNot -> cont 33;
	TokenCons -> cont 34;
	TokenList -> cont 35;
	TokenBoolAnd -> cont 36;
	TokenBoolOr -> cont 37;
	TokenBoolEq -> cont 38;
	TokenBoolGt -> cont 39;
	TokenBoolLt -> cont 40;
	TokenEq -> cont 41;
	TokenPlus -> cont 42;
	TokenMinus -> cont 43;
	TokenTimes -> cont 44;
	TokenDiv -> cont 45;
	TokenOP -> cont 46;
	TokenCP -> cont 47;
	TokenOB -> cont 48;
	TokenCB -> cont 49;
	TokenOS -> cont 50;
	TokenCS -> cont 51;
	TokenComma -> cont 52;
	TokenLongArrow -> cont 53;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 54 tk tks = happyError' (tks, explist)
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
  | TokenCond
  | TokenEnd
  | TokenIsZero
  | TokenNegate
  | TokenNot
  | TokenCons
  | TokenList
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
  | TokenLongArrow
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '[', ']', '&', '|', '!', '<', '>', ',']

reservedKeywords = [
  "let",
  "in",
  "if",
  "then",
  "else",
  "cond",
  "end",
  "true",
  "false",
  "isZero",
  "not",
  "minus",
  "cons",
  "list"
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
lexKeyword "cond"   = TokenCond
lexKeyword "end"    = TokenEnd
lexKeyword "true"   = TokenBoolean True
lexKeyword "false"  = TokenBoolean False
lexKeyword "isZero" = TokenIsZero
lexKeyword "not"    = TokenNot
lexKeyword "minus"  = TokenNegate
lexKeyword "cons"   = TokenCons
lexKeyword "list"   = TokenList
lexKeyword (c:_)    = error $ "Unexpected keyword: " ++ [c]

lexOperator :: String -> [Token]
lexOperator ('=':'=':'>':cs) = TokenLongArrow : lexer cs
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
