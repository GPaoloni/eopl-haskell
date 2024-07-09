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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29
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
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24
	| HappyAbsSyn25 t25
	| HappyAbsSyn26 t26
	| HappyAbsSyn27 t27
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,401) ([0,57344,65357,34939,0,49152,52891,247,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,64111,17375,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,4096,0,0,0,0,4,0,0,0,0,0,19936,31743,136,0,39872,63486,272,0,14208,61437,545,0,0,4,0,0,56832,49140,2183,0,0,2,0,0,0,0,1,0,4096,0,0,0,0,2,0,0,16384,0,0,0,0,0,0,0,0,64111,17375,4,0,62686,34751,8,0,0,8192,0,0,0,0,8,0,256,0,0,0,0,0,0,0,0,2048,0,0,14208,61437,545,0,0,0,0,0,0,384,128,0,48128,32745,4367,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,32,0,39872,63486,272,0,0,0,0,0,0,192,64,0,0,0,0,0,48128,32745,4367,0,0,8,0,0,0,1,0,0,0,0,0,0,49152,65179,4343,1,32768,64823,8687,2,0,64111,17375,4,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,19936,31743,136,0,39872,63486,272,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","ListExpr","SyntaxSugarList","ListNode","LetExpr","LetExprRule","UnpackExpr","IfExpr","CondExpr","CondExprRule","UnOpExpr","UnOpExprOp","BinOpExpr","BinOpExprOp","EffectExpr","many__CondExprRule__","many__LetExprRule__","many__var__","sepBy__ListNode__','__","many_rev__CondExprRule__","many_rev__LetExprRule__","many_rev__var__","sepBy_rev__ListNode__','__","var","int","boolean","let","in","unpack","if","then","else","cond","end","isZero","minus","not","cons","list","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","\"==>\"","print","%eof"]
        bit_start = st Prelude.* 65
        bit_end = (st Prelude.+ 1) Prelude.* 65
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..64]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (30) = happyShift action_14
action_0 (31) = happyShift action_15
action_0 (32) = happyShift action_16
action_0 (33) = happyShift action_17
action_0 (35) = happyShift action_18
action_0 (36) = happyShift action_19
action_0 (39) = happyShift action_20
action_0 (41) = happyShift action_21
action_0 (42) = happyShift action_22
action_0 (43) = happyShift action_23
action_0 (44) = happyShift action_36
action_0 (45) = happyShift action_37
action_0 (46) = happyShift action_24
action_0 (47) = happyShift action_25
action_0 (48) = happyShift action_26
action_0 (49) = happyShift action_27
action_0 (50) = happyShift action_28
action_0 (52) = happyShift action_29
action_0 (53) = happyShift action_30
action_0 (54) = happyShift action_31
action_0 (55) = happyShift action_32
action_0 (60) = happyShift action_38
action_0 (64) = happyShift action_33
action_0 (4) = happyGoto action_34
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_35
action_0 (11) = happyGoto action_5
action_0 (13) = happyGoto action_6
action_0 (14) = happyGoto action_7
action_0 (15) = happyGoto action_8
action_0 (17) = happyGoto action_9
action_0 (18) = happyGoto action_10
action_0 (19) = happyGoto action_11
action_0 (20) = happyGoto action_12
action_0 (21) = happyGoto action_13
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (30) = happyShift action_14
action_1 (31) = happyShift action_15
action_1 (32) = happyShift action_16
action_1 (33) = happyShift action_17
action_1 (35) = happyShift action_18
action_1 (36) = happyShift action_19
action_1 (39) = happyShift action_20
action_1 (41) = happyShift action_21
action_1 (42) = happyShift action_22
action_1 (43) = happyShift action_23
action_1 (46) = happyShift action_24
action_1 (47) = happyShift action_25
action_1 (48) = happyShift action_26
action_1 (49) = happyShift action_27
action_1 (50) = happyShift action_28
action_1 (52) = happyShift action_29
action_1 (53) = happyShift action_30
action_1 (54) = happyShift action_31
action_1 (55) = happyShift action_32
action_1 (64) = happyShift action_33
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (11) = happyGoto action_5
action_1 (13) = happyGoto action_6
action_1 (14) = happyGoto action_7
action_1 (15) = happyGoto action_8
action_1 (17) = happyGoto action_9
action_1 (18) = happyGoto action_10
action_1 (19) = happyGoto action_11
action_1 (20) = happyGoto action_12
action_1 (21) = happyGoto action_13
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_3

action_4 _ = happyReduce_4

action_5 _ = happyReduce_5

action_6 _ = happyReduce_6

action_7 _ = happyReduce_7

action_8 _ = happyReduce_8

action_9 _ = happyReduce_9

action_10 (56) = happyShift action_52
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_10

action_12 (56) = happyShift action_51
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_11

action_14 _ = happyReduce_14

action_15 _ = happyReduce_12

action_16 _ = happyReduce_13

action_17 (54) = happyShift action_50
action_17 (23) = happyGoto action_48
action_17 (27) = happyGoto action_49
action_17 _ = happyReduce_49

action_18 (24) = happyGoto action_46
action_18 (28) = happyGoto action_47
action_18 _ = happyReduce_51

action_19 (30) = happyShift action_14
action_19 (31) = happyShift action_15
action_19 (32) = happyShift action_16
action_19 (33) = happyShift action_17
action_19 (35) = happyShift action_18
action_19 (36) = happyShift action_19
action_19 (39) = happyShift action_20
action_19 (41) = happyShift action_21
action_19 (42) = happyShift action_22
action_19 (43) = happyShift action_23
action_19 (44) = happyShift action_36
action_19 (45) = happyShift action_37
action_19 (46) = happyShift action_24
action_19 (47) = happyShift action_25
action_19 (48) = happyShift action_26
action_19 (49) = happyShift action_27
action_19 (50) = happyShift action_28
action_19 (52) = happyShift action_29
action_19 (53) = happyShift action_30
action_19 (54) = happyShift action_31
action_19 (55) = happyShift action_32
action_19 (60) = happyShift action_38
action_19 (64) = happyShift action_33
action_19 (4) = happyGoto action_45
action_19 (5) = happyGoto action_2
action_19 (6) = happyGoto action_3
action_19 (7) = happyGoto action_4
action_19 (8) = happyGoto action_35
action_19 (11) = happyGoto action_5
action_19 (13) = happyGoto action_6
action_19 (14) = happyGoto action_7
action_19 (15) = happyGoto action_8
action_19 (17) = happyGoto action_9
action_19 (18) = happyGoto action_10
action_19 (19) = happyGoto action_11
action_19 (20) = happyGoto action_12
action_19 (21) = happyGoto action_13
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyGoto action_43
action_20 (26) = happyGoto action_44
action_20 _ = happyReduce_47

action_21 _ = happyReduce_30

action_22 _ = happyReduce_31

action_23 _ = happyReduce_29

action_24 _ = happyReduce_33

action_25 _ = happyReduce_34

action_26 _ = happyReduce_39

action_27 _ = happyReduce_40

action_28 _ = happyReduce_41

action_29 _ = happyReduce_35

action_30 _ = happyReduce_36

action_31 _ = happyReduce_37

action_32 _ = happyReduce_38

action_33 (56) = happyShift action_42
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (65) = happyAccept
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_2

action_36 (56) = happyShift action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (56) = happyShift action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (61) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_15

action_40 (30) = happyShift action_14
action_40 (31) = happyShift action_15
action_40 (32) = happyShift action_16
action_40 (33) = happyShift action_17
action_40 (35) = happyShift action_18
action_40 (36) = happyShift action_19
action_40 (39) = happyShift action_20
action_40 (41) = happyShift action_21
action_40 (42) = happyShift action_22
action_40 (43) = happyShift action_23
action_40 (44) = happyShift action_36
action_40 (45) = happyShift action_37
action_40 (46) = happyShift action_24
action_40 (47) = happyShift action_25
action_40 (48) = happyShift action_26
action_40 (49) = happyShift action_27
action_40 (50) = happyShift action_28
action_40 (52) = happyShift action_29
action_40 (53) = happyShift action_30
action_40 (54) = happyShift action_31
action_40 (55) = happyShift action_32
action_40 (60) = happyShift action_38
action_40 (64) = happyShift action_33
action_40 (5) = happyGoto action_66
action_40 (6) = happyGoto action_3
action_40 (7) = happyGoto action_4
action_40 (8) = happyGoto action_67
action_40 (9) = happyGoto action_69
action_40 (10) = happyGoto action_70
action_40 (11) = happyGoto action_5
action_40 (13) = happyGoto action_6
action_40 (14) = happyGoto action_7
action_40 (15) = happyGoto action_8
action_40 (17) = happyGoto action_9
action_40 (18) = happyGoto action_10
action_40 (19) = happyGoto action_11
action_40 (20) = happyGoto action_12
action_40 (21) = happyGoto action_13
action_40 (25) = happyGoto action_71
action_40 (29) = happyGoto action_72
action_40 _ = happyReduce_53

action_41 (30) = happyShift action_14
action_41 (31) = happyShift action_15
action_41 (32) = happyShift action_16
action_41 (33) = happyShift action_17
action_41 (35) = happyShift action_18
action_41 (36) = happyShift action_19
action_41 (39) = happyShift action_20
action_41 (41) = happyShift action_21
action_41 (42) = happyShift action_22
action_41 (43) = happyShift action_23
action_41 (44) = happyShift action_36
action_41 (45) = happyShift action_37
action_41 (46) = happyShift action_24
action_41 (47) = happyShift action_25
action_41 (48) = happyShift action_26
action_41 (49) = happyShift action_27
action_41 (50) = happyShift action_28
action_41 (52) = happyShift action_29
action_41 (53) = happyShift action_30
action_41 (54) = happyShift action_31
action_41 (55) = happyShift action_32
action_41 (60) = happyShift action_38
action_41 (64) = happyShift action_33
action_41 (5) = happyGoto action_66
action_41 (6) = happyGoto action_3
action_41 (7) = happyGoto action_4
action_41 (8) = happyGoto action_67
action_41 (10) = happyGoto action_68
action_41 (11) = happyGoto action_5
action_41 (13) = happyGoto action_6
action_41 (14) = happyGoto action_7
action_41 (15) = happyGoto action_8
action_41 (17) = happyGoto action_9
action_41 (18) = happyGoto action_10
action_41 (19) = happyGoto action_11
action_41 (20) = happyGoto action_12
action_41 (21) = happyGoto action_13
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (30) = happyShift action_14
action_42 (31) = happyShift action_15
action_42 (32) = happyShift action_16
action_42 (33) = happyShift action_17
action_42 (35) = happyShift action_18
action_42 (36) = happyShift action_19
action_42 (39) = happyShift action_20
action_42 (41) = happyShift action_21
action_42 (42) = happyShift action_22
action_42 (43) = happyShift action_23
action_42 (44) = happyShift action_36
action_42 (45) = happyShift action_37
action_42 (46) = happyShift action_24
action_42 (47) = happyShift action_25
action_42 (48) = happyShift action_26
action_42 (49) = happyShift action_27
action_42 (50) = happyShift action_28
action_42 (52) = happyShift action_29
action_42 (53) = happyShift action_30
action_42 (54) = happyShift action_31
action_42 (55) = happyShift action_32
action_42 (60) = happyShift action_38
action_42 (64) = happyShift action_33
action_42 (4) = happyGoto action_65
action_42 (5) = happyGoto action_2
action_42 (6) = happyGoto action_3
action_42 (7) = happyGoto action_4
action_42 (8) = happyGoto action_35
action_42 (11) = happyGoto action_5
action_42 (13) = happyGoto action_6
action_42 (14) = happyGoto action_7
action_42 (15) = happyGoto action_8
action_42 (17) = happyGoto action_9
action_42 (18) = happyGoto action_10
action_42 (19) = happyGoto action_11
action_42 (20) = happyGoto action_12
action_42 (21) = happyGoto action_13
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (40) = happyShift action_64
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (30) = happyShift action_14
action_44 (31) = happyShift action_15
action_44 (32) = happyShift action_16
action_44 (33) = happyShift action_17
action_44 (35) = happyShift action_18
action_44 (36) = happyShift action_19
action_44 (39) = happyShift action_20
action_44 (41) = happyShift action_21
action_44 (42) = happyShift action_22
action_44 (43) = happyShift action_23
action_44 (44) = happyShift action_36
action_44 (45) = happyShift action_37
action_44 (46) = happyShift action_24
action_44 (47) = happyShift action_25
action_44 (48) = happyShift action_26
action_44 (49) = happyShift action_27
action_44 (50) = happyShift action_28
action_44 (52) = happyShift action_29
action_44 (53) = happyShift action_30
action_44 (54) = happyShift action_31
action_44 (55) = happyShift action_32
action_44 (60) = happyShift action_38
action_44 (64) = happyShift action_33
action_44 (4) = happyGoto action_62
action_44 (5) = happyGoto action_2
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_4
action_44 (8) = happyGoto action_35
action_44 (11) = happyGoto action_5
action_44 (13) = happyGoto action_6
action_44 (14) = happyGoto action_7
action_44 (15) = happyGoto action_8
action_44 (16) = happyGoto action_63
action_44 (17) = happyGoto action_9
action_44 (18) = happyGoto action_10
action_44 (19) = happyGoto action_11
action_44 (20) = happyGoto action_12
action_44 (21) = happyGoto action_13
action_44 _ = happyReduce_43

action_45 (37) = happyShift action_61
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (51) = happyShift action_60
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (30) = happyShift action_59
action_47 _ = happyReduce_45

action_48 (34) = happyShift action_58
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (30) = happyShift action_57
action_49 (12) = happyGoto action_56
action_49 _ = happyReduce_44

action_50 (23) = happyGoto action_55
action_50 (27) = happyGoto action_49
action_50 _ = happyReduce_49

action_51 (30) = happyShift action_14
action_51 (31) = happyShift action_15
action_51 (32) = happyShift action_16
action_51 (33) = happyShift action_17
action_51 (35) = happyShift action_18
action_51 (36) = happyShift action_19
action_51 (39) = happyShift action_20
action_51 (41) = happyShift action_21
action_51 (42) = happyShift action_22
action_51 (43) = happyShift action_23
action_51 (44) = happyShift action_36
action_51 (45) = happyShift action_37
action_51 (46) = happyShift action_24
action_51 (47) = happyShift action_25
action_51 (48) = happyShift action_26
action_51 (49) = happyShift action_27
action_51 (50) = happyShift action_28
action_51 (52) = happyShift action_29
action_51 (53) = happyShift action_30
action_51 (54) = happyShift action_31
action_51 (55) = happyShift action_32
action_51 (60) = happyShift action_38
action_51 (64) = happyShift action_33
action_51 (4) = happyGoto action_54
action_51 (5) = happyGoto action_2
action_51 (6) = happyGoto action_3
action_51 (7) = happyGoto action_4
action_51 (8) = happyGoto action_35
action_51 (11) = happyGoto action_5
action_51 (13) = happyGoto action_6
action_51 (14) = happyGoto action_7
action_51 (15) = happyGoto action_8
action_51 (17) = happyGoto action_9
action_51 (18) = happyGoto action_10
action_51 (19) = happyGoto action_11
action_51 (20) = happyGoto action_12
action_51 (21) = happyGoto action_13
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (30) = happyShift action_14
action_52 (31) = happyShift action_15
action_52 (32) = happyShift action_16
action_52 (33) = happyShift action_17
action_52 (35) = happyShift action_18
action_52 (36) = happyShift action_19
action_52 (39) = happyShift action_20
action_52 (41) = happyShift action_21
action_52 (42) = happyShift action_22
action_52 (43) = happyShift action_23
action_52 (44) = happyShift action_36
action_52 (45) = happyShift action_37
action_52 (46) = happyShift action_24
action_52 (47) = happyShift action_25
action_52 (48) = happyShift action_26
action_52 (49) = happyShift action_27
action_52 (50) = happyShift action_28
action_52 (52) = happyShift action_29
action_52 (53) = happyShift action_30
action_52 (54) = happyShift action_31
action_52 (55) = happyShift action_32
action_52 (60) = happyShift action_38
action_52 (64) = happyShift action_33
action_52 (4) = happyGoto action_53
action_52 (5) = happyGoto action_2
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_35
action_52 (11) = happyGoto action_5
action_52 (13) = happyGoto action_6
action_52 (14) = happyGoto action_7
action_52 (15) = happyGoto action_8
action_52 (17) = happyGoto action_9
action_52 (18) = happyGoto action_10
action_52 (19) = happyGoto action_11
action_52 (20) = happyGoto action_12
action_52 (21) = happyGoto action_13
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (57) = happyShift action_84
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (62) = happyShift action_83
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (34) = happyShift action_82
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_50

action_57 (51) = happyShift action_81
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (30) = happyShift action_14
action_58 (31) = happyShift action_15
action_58 (32) = happyShift action_16
action_58 (33) = happyShift action_17
action_58 (35) = happyShift action_18
action_58 (36) = happyShift action_19
action_58 (39) = happyShift action_20
action_58 (41) = happyShift action_21
action_58 (42) = happyShift action_22
action_58 (43) = happyShift action_23
action_58 (44) = happyShift action_36
action_58 (45) = happyShift action_37
action_58 (46) = happyShift action_24
action_58 (47) = happyShift action_25
action_58 (48) = happyShift action_26
action_58 (49) = happyShift action_27
action_58 (50) = happyShift action_28
action_58 (52) = happyShift action_29
action_58 (53) = happyShift action_30
action_58 (54) = happyShift action_31
action_58 (55) = happyShift action_32
action_58 (60) = happyShift action_38
action_58 (64) = happyShift action_33
action_58 (4) = happyGoto action_80
action_58 (5) = happyGoto action_2
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_4
action_58 (8) = happyGoto action_35
action_58 (11) = happyGoto action_5
action_58 (13) = happyGoto action_6
action_58 (14) = happyGoto action_7
action_58 (15) = happyGoto action_8
action_58 (17) = happyGoto action_9
action_58 (18) = happyGoto action_10
action_58 (19) = happyGoto action_11
action_58 (20) = happyGoto action_12
action_58 (21) = happyGoto action_13
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_52

action_60 (44) = happyShift action_36
action_60 (45) = happyShift action_37
action_60 (60) = happyShift action_38
action_60 (8) = happyGoto action_79
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (30) = happyShift action_14
action_61 (31) = happyShift action_15
action_61 (32) = happyShift action_16
action_61 (33) = happyShift action_17
action_61 (35) = happyShift action_18
action_61 (36) = happyShift action_19
action_61 (39) = happyShift action_20
action_61 (41) = happyShift action_21
action_61 (42) = happyShift action_22
action_61 (43) = happyShift action_23
action_61 (44) = happyShift action_36
action_61 (45) = happyShift action_37
action_61 (46) = happyShift action_24
action_61 (47) = happyShift action_25
action_61 (48) = happyShift action_26
action_61 (49) = happyShift action_27
action_61 (50) = happyShift action_28
action_61 (52) = happyShift action_29
action_61 (53) = happyShift action_30
action_61 (54) = happyShift action_31
action_61 (55) = happyShift action_32
action_61 (60) = happyShift action_38
action_61 (64) = happyShift action_33
action_61 (4) = happyGoto action_78
action_61 (5) = happyGoto action_2
action_61 (6) = happyGoto action_3
action_61 (7) = happyGoto action_4
action_61 (8) = happyGoto action_35
action_61 (11) = happyGoto action_5
action_61 (13) = happyGoto action_6
action_61 (14) = happyGoto action_7
action_61 (15) = happyGoto action_8
action_61 (17) = happyGoto action_9
action_61 (18) = happyGoto action_10
action_61 (19) = happyGoto action_11
action_61 (20) = happyGoto action_12
action_61 (21) = happyGoto action_13
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (63) = happyShift action_77
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_48

action_64 _ = happyReduce_26

action_65 (57) = happyShift action_76
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_20

action_67 _ = happyReduce_19

action_68 (62) = happyShift action_75
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (57) = happyShift action_74
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_54

action_71 _ = happyReduce_18

action_72 (62) = happyShift action_73
action_72 _ = happyReduce_46

action_73 (30) = happyShift action_14
action_73 (31) = happyShift action_15
action_73 (32) = happyShift action_16
action_73 (33) = happyShift action_17
action_73 (35) = happyShift action_18
action_73 (36) = happyShift action_19
action_73 (39) = happyShift action_20
action_73 (41) = happyShift action_21
action_73 (42) = happyShift action_22
action_73 (43) = happyShift action_23
action_73 (44) = happyShift action_36
action_73 (45) = happyShift action_37
action_73 (46) = happyShift action_24
action_73 (47) = happyShift action_25
action_73 (48) = happyShift action_26
action_73 (49) = happyShift action_27
action_73 (50) = happyShift action_28
action_73 (52) = happyShift action_29
action_73 (53) = happyShift action_30
action_73 (54) = happyShift action_31
action_73 (55) = happyShift action_32
action_73 (60) = happyShift action_38
action_73 (64) = happyShift action_33
action_73 (5) = happyGoto action_66
action_73 (6) = happyGoto action_3
action_73 (7) = happyGoto action_4
action_73 (8) = happyGoto action_67
action_73 (10) = happyGoto action_92
action_73 (11) = happyGoto action_5
action_73 (13) = happyGoto action_6
action_73 (14) = happyGoto action_7
action_73 (15) = happyGoto action_8
action_73 (17) = happyGoto action_9
action_73 (18) = happyGoto action_10
action_73 (19) = happyGoto action_11
action_73 (20) = happyGoto action_12
action_73 (21) = happyGoto action_13
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_17

action_75 (44) = happyShift action_36
action_75 (45) = happyShift action_37
action_75 (60) = happyShift action_38
action_75 (8) = happyGoto action_91
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_42

action_77 (30) = happyShift action_14
action_77 (31) = happyShift action_15
action_77 (32) = happyShift action_16
action_77 (33) = happyShift action_17
action_77 (35) = happyShift action_18
action_77 (36) = happyShift action_19
action_77 (39) = happyShift action_20
action_77 (41) = happyShift action_21
action_77 (42) = happyShift action_22
action_77 (43) = happyShift action_23
action_77 (44) = happyShift action_36
action_77 (45) = happyShift action_37
action_77 (46) = happyShift action_24
action_77 (47) = happyShift action_25
action_77 (48) = happyShift action_26
action_77 (49) = happyShift action_27
action_77 (50) = happyShift action_28
action_77 (52) = happyShift action_29
action_77 (53) = happyShift action_30
action_77 (54) = happyShift action_31
action_77 (55) = happyShift action_32
action_77 (60) = happyShift action_38
action_77 (64) = happyShift action_33
action_77 (4) = happyGoto action_90
action_77 (5) = happyGoto action_2
action_77 (6) = happyGoto action_3
action_77 (7) = happyGoto action_4
action_77 (8) = happyGoto action_35
action_77 (11) = happyGoto action_5
action_77 (13) = happyGoto action_6
action_77 (14) = happyGoto action_7
action_77 (15) = happyGoto action_8
action_77 (17) = happyGoto action_9
action_77 (18) = happyGoto action_10
action_77 (19) = happyGoto action_11
action_77 (20) = happyGoto action_12
action_77 (21) = happyGoto action_13
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (38) = happyShift action_89
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (34) = happyShift action_88
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_21

action_81 (30) = happyShift action_14
action_81 (31) = happyShift action_15
action_81 (32) = happyShift action_16
action_81 (33) = happyShift action_17
action_81 (35) = happyShift action_18
action_81 (36) = happyShift action_19
action_81 (39) = happyShift action_20
action_81 (41) = happyShift action_21
action_81 (42) = happyShift action_22
action_81 (43) = happyShift action_23
action_81 (44) = happyShift action_36
action_81 (45) = happyShift action_37
action_81 (46) = happyShift action_24
action_81 (47) = happyShift action_25
action_81 (48) = happyShift action_26
action_81 (49) = happyShift action_27
action_81 (50) = happyShift action_28
action_81 (52) = happyShift action_29
action_81 (53) = happyShift action_30
action_81 (54) = happyShift action_31
action_81 (55) = happyShift action_32
action_81 (60) = happyShift action_38
action_81 (64) = happyShift action_33
action_81 (4) = happyGoto action_87
action_81 (5) = happyGoto action_2
action_81 (6) = happyGoto action_3
action_81 (7) = happyGoto action_4
action_81 (8) = happyGoto action_35
action_81 (11) = happyGoto action_5
action_81 (13) = happyGoto action_6
action_81 (14) = happyGoto action_7
action_81 (15) = happyGoto action_8
action_81 (17) = happyGoto action_9
action_81 (18) = happyGoto action_10
action_81 (19) = happyGoto action_11
action_81 (20) = happyGoto action_12
action_81 (21) = happyGoto action_13
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (30) = happyShift action_14
action_82 (31) = happyShift action_15
action_82 (32) = happyShift action_16
action_82 (33) = happyShift action_17
action_82 (35) = happyShift action_18
action_82 (36) = happyShift action_19
action_82 (39) = happyShift action_20
action_82 (41) = happyShift action_21
action_82 (42) = happyShift action_22
action_82 (43) = happyShift action_23
action_82 (44) = happyShift action_36
action_82 (45) = happyShift action_37
action_82 (46) = happyShift action_24
action_82 (47) = happyShift action_25
action_82 (48) = happyShift action_26
action_82 (49) = happyShift action_27
action_82 (50) = happyShift action_28
action_82 (52) = happyShift action_29
action_82 (53) = happyShift action_30
action_82 (54) = happyShift action_31
action_82 (55) = happyShift action_32
action_82 (60) = happyShift action_38
action_82 (64) = happyShift action_33
action_82 (4) = happyGoto action_86
action_82 (5) = happyGoto action_2
action_82 (6) = happyGoto action_3
action_82 (7) = happyGoto action_4
action_82 (8) = happyGoto action_35
action_82 (11) = happyGoto action_5
action_82 (13) = happyGoto action_6
action_82 (14) = happyGoto action_7
action_82 (15) = happyGoto action_8
action_82 (17) = happyGoto action_9
action_82 (18) = happyGoto action_10
action_82 (19) = happyGoto action_11
action_82 (20) = happyGoto action_12
action_82 (21) = happyGoto action_13
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (30) = happyShift action_14
action_83 (31) = happyShift action_15
action_83 (32) = happyShift action_16
action_83 (33) = happyShift action_17
action_83 (35) = happyShift action_18
action_83 (36) = happyShift action_19
action_83 (39) = happyShift action_20
action_83 (41) = happyShift action_21
action_83 (42) = happyShift action_22
action_83 (43) = happyShift action_23
action_83 (44) = happyShift action_36
action_83 (45) = happyShift action_37
action_83 (46) = happyShift action_24
action_83 (47) = happyShift action_25
action_83 (48) = happyShift action_26
action_83 (49) = happyShift action_27
action_83 (50) = happyShift action_28
action_83 (52) = happyShift action_29
action_83 (53) = happyShift action_30
action_83 (54) = happyShift action_31
action_83 (55) = happyShift action_32
action_83 (60) = happyShift action_38
action_83 (64) = happyShift action_33
action_83 (4) = happyGoto action_85
action_83 (5) = happyGoto action_2
action_83 (6) = happyGoto action_3
action_83 (7) = happyGoto action_4
action_83 (8) = happyGoto action_35
action_83 (11) = happyGoto action_5
action_83 (13) = happyGoto action_6
action_83 (14) = happyGoto action_7
action_83 (15) = happyGoto action_8
action_83 (17) = happyGoto action_9
action_83 (18) = happyGoto action_10
action_83 (19) = happyGoto action_11
action_83 (20) = happyGoto action_12
action_83 (21) = happyGoto action_13
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_28

action_85 (57) = happyShift action_96
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_22

action_87 _ = happyReduce_23

action_88 (30) = happyShift action_14
action_88 (31) = happyShift action_15
action_88 (32) = happyShift action_16
action_88 (33) = happyShift action_17
action_88 (35) = happyShift action_18
action_88 (36) = happyShift action_19
action_88 (39) = happyShift action_20
action_88 (41) = happyShift action_21
action_88 (42) = happyShift action_22
action_88 (43) = happyShift action_23
action_88 (44) = happyShift action_36
action_88 (45) = happyShift action_37
action_88 (46) = happyShift action_24
action_88 (47) = happyShift action_25
action_88 (48) = happyShift action_26
action_88 (49) = happyShift action_27
action_88 (50) = happyShift action_28
action_88 (52) = happyShift action_29
action_88 (53) = happyShift action_30
action_88 (54) = happyShift action_31
action_88 (55) = happyShift action_32
action_88 (60) = happyShift action_38
action_88 (64) = happyShift action_33
action_88 (4) = happyGoto action_95
action_88 (5) = happyGoto action_2
action_88 (6) = happyGoto action_3
action_88 (7) = happyGoto action_4
action_88 (8) = happyGoto action_35
action_88 (11) = happyGoto action_5
action_88 (13) = happyGoto action_6
action_88 (14) = happyGoto action_7
action_88 (15) = happyGoto action_8
action_88 (17) = happyGoto action_9
action_88 (18) = happyGoto action_10
action_88 (19) = happyGoto action_11
action_88 (20) = happyGoto action_12
action_88 (21) = happyGoto action_13
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (30) = happyShift action_14
action_89 (31) = happyShift action_15
action_89 (32) = happyShift action_16
action_89 (33) = happyShift action_17
action_89 (35) = happyShift action_18
action_89 (36) = happyShift action_19
action_89 (39) = happyShift action_20
action_89 (41) = happyShift action_21
action_89 (42) = happyShift action_22
action_89 (43) = happyShift action_23
action_89 (44) = happyShift action_36
action_89 (45) = happyShift action_37
action_89 (46) = happyShift action_24
action_89 (47) = happyShift action_25
action_89 (48) = happyShift action_26
action_89 (49) = happyShift action_27
action_89 (50) = happyShift action_28
action_89 (52) = happyShift action_29
action_89 (53) = happyShift action_30
action_89 (54) = happyShift action_31
action_89 (55) = happyShift action_32
action_89 (60) = happyShift action_38
action_89 (64) = happyShift action_33
action_89 (4) = happyGoto action_94
action_89 (5) = happyGoto action_2
action_89 (6) = happyGoto action_3
action_89 (7) = happyGoto action_4
action_89 (8) = happyGoto action_35
action_89 (11) = happyGoto action_5
action_89 (13) = happyGoto action_6
action_89 (14) = happyGoto action_7
action_89 (15) = happyGoto action_8
action_89 (17) = happyGoto action_9
action_89 (18) = happyGoto action_10
action_89 (19) = happyGoto action_11
action_89 (20) = happyGoto action_12
action_89 (21) = happyGoto action_13
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_27

action_91 (57) = happyShift action_93
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_55

action_93 _ = happyReduce_16

action_94 _ = happyReduce_25

action_95 _ = happyReduce_24

action_96 _ = happyReduce_32

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.ListExpr happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Literal happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Variable happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LetExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  5 happyReduction_6
happyReduction_6 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.UnpackExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  5 happyReduction_7
happyReduction_7 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  5 happyReduction_8
happyReduction_8 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.CondExpr happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  5 happyReduction_9
happyReduction_9 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.EffectExpr happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn6
		 (AST.IntLit happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  6 happyReduction_13
happyReduction_13 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn6
		 (AST.BoolLit happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  7 happyReduction_14
happyReduction_14 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (AST.Var happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  8 happyReduction_15
happyReduction_15 _
	_
	 =  HappyAbsSyn8
		 (Empty
	)

happyReduce_16 = happyReduce 6 8 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cons happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 8 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (foldr Cons Empty happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  9 happyReduction_18
happyReduction_18 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (SList happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Val happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happyReduce 4 11 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetRegular happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 11 happyReduction_22
happyReduction_22 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetStar happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn12
		 ((happy_var_1, happy_var_3)
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happyReduce 6 13 happyReduction_24
happyReduction_24 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.Unpack (happy_var_2, happy_var_4) happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 6 14 happyReduction_25
happyReduction_25 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_3  15 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (AST.Cond happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn16
		 ((happy_var_1,  happy_var_3)
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 17 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.UnOpExpr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_1  18 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn18
		 (AST.Not
	)

happyReduce_30 = happySpecReduce_1  18 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn18
		 (AST.IsZero
	)

happyReduce_31 = happySpecReduce_1  18 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn18
		 (AST.Negate
	)

happyReduce_32 = happyReduce 6 19 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.BinOpExpr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_1  20 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn20
		 (AST.And
	)

happyReduce_34 = happySpecReduce_1  20 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn20
		 (AST.Or
	)

happyReduce_35 = happySpecReduce_1  20 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn20
		 (AST.Plus
	)

happyReduce_36 = happySpecReduce_1  20 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn20
		 (AST.Minus
	)

happyReduce_37 = happySpecReduce_1  20 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn20
		 (AST.Times
	)

happyReduce_38 = happySpecReduce_1  20 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn20
		 (AST.Div
	)

happyReduce_39 = happySpecReduce_1  20 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn20
		 (AST.Eq
	)

happyReduce_40 = happySpecReduce_1  20 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn20
		 (AST.Gt
	)

happyReduce_41 = happySpecReduce_1  20 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn20
		 (AST.Lt
	)

happyReduce_42 = happyReduce 4 21 happyReduction_42
happyReduction_42 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.PrintEffect happy_var_3
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  22 happyReduction_43
happyReduction_43 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn22
		 (reverse happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  23 happyReduction_44
happyReduction_44 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn23
		 (reverse happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  24 happyReduction_45
happyReduction_45 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn24
		 (reverse happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  25 happyReduction_46
happyReduction_46 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn25
		 (reverse happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_0  26 happyReduction_47
happyReduction_47  =  HappyAbsSyn26
		 ([]
	)

happyReduce_48 = happySpecReduce_2  26 happyReduction_48
happyReduction_48 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_2 : happy_var_1
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_0  27 happyReduction_49
happyReduction_49  =  HappyAbsSyn27
		 ([]
	)

happyReduce_50 = happySpecReduce_2  27 happyReduction_50
happyReduction_50 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_2 : happy_var_1
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_0  28 happyReduction_51
happyReduction_51  =  HappyAbsSyn28
		 ([]
	)

happyReduce_52 = happySpecReduce_2  28 happyReduction_52
happyReduction_52 (HappyTerminal (TokenVar happy_var_2))
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_2 : happy_var_1
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_0  29 happyReduction_53
happyReduction_53  =  HappyAbsSyn29
		 ([]
	)

happyReduce_54 = happySpecReduce_1  29 happyReduction_54
happyReduction_54 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  29 happyReduction_55
happyReduction_55 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_3 : happy_var_1
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 30;
	TokenInt happy_dollar_dollar -> cont 31;
	TokenBoolean happy_dollar_dollar -> cont 32;
	TokenLet -> cont 33;
	TokenIn -> cont 34;
	TokenUnpack -> cont 35;
	TokenIf -> cont 36;
	TokenThen -> cont 37;
	TokenElse -> cont 38;
	TokenCond -> cont 39;
	TokenEnd -> cont 40;
	TokenIsZero -> cont 41;
	TokenNegate -> cont 42;
	TokenNot -> cont 43;
	TokenCons -> cont 44;
	TokenList -> cont 45;
	TokenBoolAnd -> cont 46;
	TokenBoolOr -> cont 47;
	TokenBoolEq -> cont 48;
	TokenBoolGt -> cont 49;
	TokenBoolLt -> cont 50;
	TokenEq -> cont 51;
	TokenPlus -> cont 52;
	TokenMinus -> cont 53;
	TokenTimes -> cont 54;
	TokenDiv -> cont 55;
	TokenOP -> cont 56;
	TokenCP -> cont 57;
	TokenOB -> cont 58;
	TokenCB -> cont 59;
	TokenOS -> cont 60;
	TokenCS -> cont 61;
	TokenComma -> cont 62;
	TokenLongArrow -> cont 63;
	TokenPrint -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
  | TokenUnpack
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
  | TokenPrint
  deriving (Show)

reservedOperators = ['=','+','-','*','/','(',')', '{', '}', '[', ']', '&', '|', '!', '<', '>', ',']

reservedKeywords = [
  "let",
  "in",
  "unpack",
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
  "list",
  "print"
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
lexKeyword "unpack" = TokenUnpack
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
lexKeyword "print"  = TokenPrint
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
