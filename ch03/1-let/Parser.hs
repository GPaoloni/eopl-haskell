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
happyExpList = Happy_Data_Array.listArray (0,360) ([0,57344,65357,34939,0,32768,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,62686,34751,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,4096,0,0,54136,7935,34,0,0,0,0,0,19936,31743,136,0,39872,63486,272,0,0,2,0,0,28416,57338,1091,0,0,1,0,0,0,32768,0,0,2048,0,0,0,0,1,0,0,8192,0,0,0,0,0,0,0,32768,64823,8687,2,0,64111,17375,4,0,0,4096,0,0,0,0,4,0,128,0,0,0,0,0,0,0,0,1024,0,0,39872,63486,272,0,0,0,0,0,0,192,64,0,56832,49140,2183,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,256,0,0,0,0,0,32768,64823,8687,2,0,0,0,0,0,32768,32769,0,0,59836,3967,17,0,2048,0,0,0,256,0,0,0,0,0,0,0,39872,63486,272,0,14208,61437,545,0,28416,57338,1091,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,57344,65357,34939,0,49152,65179,4343,1,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

action_0 (30) = happyShift action_17
action_0 (31) = happyShift action_3
action_0 (32) = happyShift action_4
action_0 (33) = happyShift action_18
action_0 (35) = happyShift action_19
action_0 (36) = happyShift action_20
action_0 (39) = happyShift action_21
action_0 (41) = happyShift action_22
action_0 (42) = happyShift action_23
action_0 (43) = happyShift action_24
action_0 (44) = happyShift action_25
action_0 (45) = happyShift action_26
action_0 (46) = happyShift action_27
action_0 (47) = happyShift action_28
action_0 (48) = happyShift action_29
action_0 (49) = happyShift action_30
action_0 (50) = happyShift action_31
action_0 (52) = happyShift action_32
action_0 (53) = happyShift action_33
action_0 (54) = happyShift action_34
action_0 (55) = happyShift action_35
action_0 (60) = happyShift action_36
action_0 (64) = happyShift action_37
action_0 (4) = happyGoto action_5
action_0 (6) = happyGoto action_2
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (13) = happyGoto action_9
action_0 (14) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 (17) = happyGoto action_12
action_0 (18) = happyGoto action_13
action_0 (19) = happyGoto action_14
action_0 (20) = happyGoto action_15
action_0 (21) = happyGoto action_16
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_3
action_1 (32) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_20

action_4 _ = happyReduce_21

action_5 (65) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 _ = happyReduce_8

action_13 (56) = happyShift action_51
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_9

action_15 (56) = happyShift action_50
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_10

action_17 _ = happyReduce_22

action_18 (54) = happyShift action_49
action_18 (23) = happyGoto action_47
action_18 (27) = happyGoto action_48
action_18 _ = happyReduce_57

action_19 (24) = happyGoto action_45
action_19 (28) = happyGoto action_46
action_19 _ = happyReduce_59

action_20 (30) = happyShift action_17
action_20 (31) = happyShift action_3
action_20 (32) = happyShift action_4
action_20 (33) = happyShift action_18
action_20 (35) = happyShift action_19
action_20 (36) = happyShift action_20
action_20 (39) = happyShift action_21
action_20 (41) = happyShift action_22
action_20 (42) = happyShift action_23
action_20 (43) = happyShift action_24
action_20 (44) = happyShift action_25
action_20 (45) = happyShift action_26
action_20 (46) = happyShift action_27
action_20 (47) = happyShift action_28
action_20 (48) = happyShift action_29
action_20 (49) = happyShift action_30
action_20 (50) = happyShift action_31
action_20 (52) = happyShift action_32
action_20 (53) = happyShift action_33
action_20 (54) = happyShift action_34
action_20 (55) = happyShift action_35
action_20 (60) = happyShift action_36
action_20 (64) = happyShift action_37
action_20 (4) = happyGoto action_44
action_20 (6) = happyGoto action_2
action_20 (7) = happyGoto action_6
action_20 (8) = happyGoto action_7
action_20 (11) = happyGoto action_8
action_20 (13) = happyGoto action_9
action_20 (14) = happyGoto action_10
action_20 (15) = happyGoto action_11
action_20 (17) = happyGoto action_12
action_20 (18) = happyGoto action_13
action_20 (19) = happyGoto action_14
action_20 (20) = happyGoto action_15
action_20 (21) = happyGoto action_16
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (22) = happyGoto action_42
action_21 (26) = happyGoto action_43
action_21 _ = happyReduce_55

action_22 _ = happyReduce_38

action_23 _ = happyReduce_39

action_24 _ = happyReduce_37

action_25 (56) = happyShift action_41
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (56) = happyShift action_40
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_41

action_28 _ = happyReduce_42

action_29 _ = happyReduce_47

action_30 _ = happyReduce_48

action_31 _ = happyReduce_49

action_32 _ = happyReduce_43

action_33 _ = happyReduce_44

action_34 _ = happyReduce_45

action_35 _ = happyReduce_46

action_36 (61) = happyShift action_39
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (56) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (30) = happyShift action_17
action_38 (31) = happyShift action_3
action_38 (32) = happyShift action_4
action_38 (33) = happyShift action_18
action_38 (35) = happyShift action_19
action_38 (36) = happyShift action_20
action_38 (39) = happyShift action_21
action_38 (41) = happyShift action_22
action_38 (42) = happyShift action_23
action_38 (43) = happyShift action_24
action_38 (44) = happyShift action_25
action_38 (45) = happyShift action_26
action_38 (46) = happyShift action_27
action_38 (47) = happyShift action_28
action_38 (48) = happyShift action_29
action_38 (49) = happyShift action_30
action_38 (50) = happyShift action_31
action_38 (52) = happyShift action_32
action_38 (53) = happyShift action_33
action_38 (54) = happyShift action_34
action_38 (55) = happyShift action_35
action_38 (60) = happyShift action_36
action_38 (64) = happyShift action_37
action_38 (4) = happyGoto action_80
action_38 (6) = happyGoto action_2
action_38 (7) = happyGoto action_6
action_38 (8) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 (13) = happyGoto action_9
action_38 (14) = happyGoto action_10
action_38 (15) = happyGoto action_11
action_38 (17) = happyGoto action_12
action_38 (18) = happyGoto action_13
action_38 (19) = happyGoto action_14
action_38 (20) = happyGoto action_15
action_38 (21) = happyGoto action_16
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_23

action_40 (30) = happyShift action_17
action_40 (31) = happyShift action_3
action_40 (32) = happyShift action_4
action_40 (33) = happyShift action_18
action_40 (35) = happyShift action_19
action_40 (36) = happyShift action_20
action_40 (39) = happyShift action_21
action_40 (41) = happyShift action_22
action_40 (42) = happyShift action_23
action_40 (43) = happyShift action_24
action_40 (44) = happyShift action_25
action_40 (45) = happyShift action_26
action_40 (46) = happyShift action_27
action_40 (47) = happyShift action_28
action_40 (48) = happyShift action_29
action_40 (49) = happyShift action_30
action_40 (50) = happyShift action_31
action_40 (52) = happyShift action_32
action_40 (53) = happyShift action_33
action_40 (54) = happyShift action_34
action_40 (55) = happyShift action_35
action_40 (60) = happyShift action_36
action_40 (64) = happyShift action_37
action_40 (5) = happyGoto action_64
action_40 (6) = happyGoto action_65
action_40 (7) = happyGoto action_66
action_40 (8) = happyGoto action_67
action_40 (9) = happyGoto action_76
action_40 (10) = happyGoto action_77
action_40 (11) = happyGoto action_69
action_40 (13) = happyGoto action_70
action_40 (14) = happyGoto action_71
action_40 (15) = happyGoto action_72
action_40 (17) = happyGoto action_73
action_40 (18) = happyGoto action_13
action_40 (19) = happyGoto action_74
action_40 (20) = happyGoto action_15
action_40 (21) = happyGoto action_75
action_40 (25) = happyGoto action_78
action_40 (29) = happyGoto action_79
action_40 _ = happyReduce_61

action_41 (30) = happyShift action_17
action_41 (31) = happyShift action_3
action_41 (32) = happyShift action_4
action_41 (33) = happyShift action_18
action_41 (35) = happyShift action_19
action_41 (36) = happyShift action_20
action_41 (39) = happyShift action_21
action_41 (41) = happyShift action_22
action_41 (42) = happyShift action_23
action_41 (43) = happyShift action_24
action_41 (44) = happyShift action_25
action_41 (45) = happyShift action_26
action_41 (46) = happyShift action_27
action_41 (47) = happyShift action_28
action_41 (48) = happyShift action_29
action_41 (49) = happyShift action_30
action_41 (50) = happyShift action_31
action_41 (52) = happyShift action_32
action_41 (53) = happyShift action_33
action_41 (54) = happyShift action_34
action_41 (55) = happyShift action_35
action_41 (60) = happyShift action_36
action_41 (64) = happyShift action_37
action_41 (5) = happyGoto action_64
action_41 (6) = happyGoto action_65
action_41 (7) = happyGoto action_66
action_41 (8) = happyGoto action_67
action_41 (10) = happyGoto action_68
action_41 (11) = happyGoto action_69
action_41 (13) = happyGoto action_70
action_41 (14) = happyGoto action_71
action_41 (15) = happyGoto action_72
action_41 (17) = happyGoto action_73
action_41 (18) = happyGoto action_13
action_41 (19) = happyGoto action_74
action_41 (20) = happyGoto action_15
action_41 (21) = happyGoto action_75
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (40) = happyShift action_63
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (30) = happyShift action_17
action_43 (31) = happyShift action_3
action_43 (32) = happyShift action_4
action_43 (33) = happyShift action_18
action_43 (35) = happyShift action_19
action_43 (36) = happyShift action_20
action_43 (39) = happyShift action_21
action_43 (41) = happyShift action_22
action_43 (42) = happyShift action_23
action_43 (43) = happyShift action_24
action_43 (44) = happyShift action_25
action_43 (45) = happyShift action_26
action_43 (46) = happyShift action_27
action_43 (47) = happyShift action_28
action_43 (48) = happyShift action_29
action_43 (49) = happyShift action_30
action_43 (50) = happyShift action_31
action_43 (52) = happyShift action_32
action_43 (53) = happyShift action_33
action_43 (54) = happyShift action_34
action_43 (55) = happyShift action_35
action_43 (60) = happyShift action_36
action_43 (64) = happyShift action_37
action_43 (4) = happyGoto action_61
action_43 (6) = happyGoto action_2
action_43 (7) = happyGoto action_6
action_43 (8) = happyGoto action_7
action_43 (11) = happyGoto action_8
action_43 (13) = happyGoto action_9
action_43 (14) = happyGoto action_10
action_43 (15) = happyGoto action_11
action_43 (16) = happyGoto action_62
action_43 (17) = happyGoto action_12
action_43 (18) = happyGoto action_13
action_43 (19) = happyGoto action_14
action_43 (20) = happyGoto action_15
action_43 (21) = happyGoto action_16
action_43 _ = happyReduce_51

action_44 (37) = happyShift action_60
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (51) = happyShift action_59
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (30) = happyShift action_58
action_46 _ = happyReduce_53

action_47 (34) = happyShift action_57
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (30) = happyShift action_56
action_48 (12) = happyGoto action_55
action_48 _ = happyReduce_52

action_49 (23) = happyGoto action_54
action_49 (27) = happyGoto action_48
action_49 _ = happyReduce_57

action_50 (30) = happyShift action_17
action_50 (31) = happyShift action_3
action_50 (32) = happyShift action_4
action_50 (33) = happyShift action_18
action_50 (35) = happyShift action_19
action_50 (36) = happyShift action_20
action_50 (39) = happyShift action_21
action_50 (41) = happyShift action_22
action_50 (42) = happyShift action_23
action_50 (43) = happyShift action_24
action_50 (44) = happyShift action_25
action_50 (45) = happyShift action_26
action_50 (46) = happyShift action_27
action_50 (47) = happyShift action_28
action_50 (48) = happyShift action_29
action_50 (49) = happyShift action_30
action_50 (50) = happyShift action_31
action_50 (52) = happyShift action_32
action_50 (53) = happyShift action_33
action_50 (54) = happyShift action_34
action_50 (55) = happyShift action_35
action_50 (60) = happyShift action_36
action_50 (64) = happyShift action_37
action_50 (4) = happyGoto action_53
action_50 (6) = happyGoto action_2
action_50 (7) = happyGoto action_6
action_50 (8) = happyGoto action_7
action_50 (11) = happyGoto action_8
action_50 (13) = happyGoto action_9
action_50 (14) = happyGoto action_10
action_50 (15) = happyGoto action_11
action_50 (17) = happyGoto action_12
action_50 (18) = happyGoto action_13
action_50 (19) = happyGoto action_14
action_50 (20) = happyGoto action_15
action_50 (21) = happyGoto action_16
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (30) = happyShift action_17
action_51 (31) = happyShift action_3
action_51 (32) = happyShift action_4
action_51 (33) = happyShift action_18
action_51 (35) = happyShift action_19
action_51 (36) = happyShift action_20
action_51 (39) = happyShift action_21
action_51 (41) = happyShift action_22
action_51 (42) = happyShift action_23
action_51 (43) = happyShift action_24
action_51 (44) = happyShift action_25
action_51 (45) = happyShift action_26
action_51 (46) = happyShift action_27
action_51 (47) = happyShift action_28
action_51 (48) = happyShift action_29
action_51 (49) = happyShift action_30
action_51 (50) = happyShift action_31
action_51 (52) = happyShift action_32
action_51 (53) = happyShift action_33
action_51 (54) = happyShift action_34
action_51 (55) = happyShift action_35
action_51 (60) = happyShift action_36
action_51 (64) = happyShift action_37
action_51 (4) = happyGoto action_52
action_51 (6) = happyGoto action_2
action_51 (7) = happyGoto action_6
action_51 (8) = happyGoto action_7
action_51 (11) = happyGoto action_8
action_51 (13) = happyGoto action_9
action_51 (14) = happyGoto action_10
action_51 (15) = happyGoto action_11
action_51 (17) = happyGoto action_12
action_51 (18) = happyGoto action_13
action_51 (19) = happyGoto action_14
action_51 (20) = happyGoto action_15
action_51 (21) = happyGoto action_16
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (57) = happyShift action_92
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (62) = happyShift action_91
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (34) = happyShift action_90
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_58

action_56 (51) = happyShift action_89
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (30) = happyShift action_17
action_57 (31) = happyShift action_3
action_57 (32) = happyShift action_4
action_57 (33) = happyShift action_18
action_57 (35) = happyShift action_19
action_57 (36) = happyShift action_20
action_57 (39) = happyShift action_21
action_57 (41) = happyShift action_22
action_57 (42) = happyShift action_23
action_57 (43) = happyShift action_24
action_57 (44) = happyShift action_25
action_57 (45) = happyShift action_26
action_57 (46) = happyShift action_27
action_57 (47) = happyShift action_28
action_57 (48) = happyShift action_29
action_57 (49) = happyShift action_30
action_57 (50) = happyShift action_31
action_57 (52) = happyShift action_32
action_57 (53) = happyShift action_33
action_57 (54) = happyShift action_34
action_57 (55) = happyShift action_35
action_57 (60) = happyShift action_36
action_57 (64) = happyShift action_37
action_57 (4) = happyGoto action_88
action_57 (6) = happyGoto action_2
action_57 (7) = happyGoto action_6
action_57 (8) = happyGoto action_7
action_57 (11) = happyGoto action_8
action_57 (13) = happyGoto action_9
action_57 (14) = happyGoto action_10
action_57 (15) = happyGoto action_11
action_57 (17) = happyGoto action_12
action_57 (18) = happyGoto action_13
action_57 (19) = happyGoto action_14
action_57 (20) = happyGoto action_15
action_57 (21) = happyGoto action_16
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_60

action_59 (44) = happyShift action_25
action_59 (45) = happyShift action_26
action_59 (60) = happyShift action_36
action_59 (8) = happyGoto action_87
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (30) = happyShift action_17
action_60 (31) = happyShift action_3
action_60 (32) = happyShift action_4
action_60 (33) = happyShift action_18
action_60 (35) = happyShift action_19
action_60 (36) = happyShift action_20
action_60 (39) = happyShift action_21
action_60 (41) = happyShift action_22
action_60 (42) = happyShift action_23
action_60 (43) = happyShift action_24
action_60 (44) = happyShift action_25
action_60 (45) = happyShift action_26
action_60 (46) = happyShift action_27
action_60 (47) = happyShift action_28
action_60 (48) = happyShift action_29
action_60 (49) = happyShift action_30
action_60 (50) = happyShift action_31
action_60 (52) = happyShift action_32
action_60 (53) = happyShift action_33
action_60 (54) = happyShift action_34
action_60 (55) = happyShift action_35
action_60 (60) = happyShift action_36
action_60 (64) = happyShift action_37
action_60 (4) = happyGoto action_86
action_60 (6) = happyGoto action_2
action_60 (7) = happyGoto action_6
action_60 (8) = happyGoto action_7
action_60 (11) = happyGoto action_8
action_60 (13) = happyGoto action_9
action_60 (14) = happyGoto action_10
action_60 (15) = happyGoto action_11
action_60 (17) = happyGoto action_12
action_60 (18) = happyGoto action_13
action_60 (19) = happyGoto action_14
action_60 (20) = happyGoto action_15
action_60 (21) = happyGoto action_16
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (63) = happyShift action_85
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_56

action_63 _ = happyReduce_34

action_64 _ = happyReduce_28

action_65 _ = happyReduce_11

action_66 _ = happyReduce_12

action_67 _ = happyReduce_27

action_68 (62) = happyShift action_84
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_13

action_70 _ = happyReduce_14

action_71 _ = happyReduce_15

action_72 _ = happyReduce_16

action_73 _ = happyReduce_17

action_74 _ = happyReduce_18

action_75 _ = happyReduce_19

action_76 (57) = happyShift action_83
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_62

action_78 _ = happyReduce_26

action_79 (62) = happyShift action_82
action_79 _ = happyReduce_54

action_80 (57) = happyShift action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_50

action_82 (30) = happyShift action_17
action_82 (31) = happyShift action_3
action_82 (32) = happyShift action_4
action_82 (33) = happyShift action_18
action_82 (35) = happyShift action_19
action_82 (36) = happyShift action_20
action_82 (39) = happyShift action_21
action_82 (41) = happyShift action_22
action_82 (42) = happyShift action_23
action_82 (43) = happyShift action_24
action_82 (44) = happyShift action_25
action_82 (45) = happyShift action_26
action_82 (46) = happyShift action_27
action_82 (47) = happyShift action_28
action_82 (48) = happyShift action_29
action_82 (49) = happyShift action_30
action_82 (50) = happyShift action_31
action_82 (52) = happyShift action_32
action_82 (53) = happyShift action_33
action_82 (54) = happyShift action_34
action_82 (55) = happyShift action_35
action_82 (60) = happyShift action_36
action_82 (64) = happyShift action_37
action_82 (5) = happyGoto action_64
action_82 (6) = happyGoto action_65
action_82 (7) = happyGoto action_66
action_82 (8) = happyGoto action_67
action_82 (10) = happyGoto action_100
action_82 (11) = happyGoto action_69
action_82 (13) = happyGoto action_70
action_82 (14) = happyGoto action_71
action_82 (15) = happyGoto action_72
action_82 (17) = happyGoto action_73
action_82 (18) = happyGoto action_13
action_82 (19) = happyGoto action_74
action_82 (20) = happyGoto action_15
action_82 (21) = happyGoto action_75
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_25

action_84 (44) = happyShift action_25
action_84 (45) = happyShift action_26
action_84 (60) = happyShift action_36
action_84 (8) = happyGoto action_99
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (30) = happyShift action_17
action_85 (31) = happyShift action_3
action_85 (32) = happyShift action_4
action_85 (33) = happyShift action_18
action_85 (35) = happyShift action_19
action_85 (36) = happyShift action_20
action_85 (39) = happyShift action_21
action_85 (41) = happyShift action_22
action_85 (42) = happyShift action_23
action_85 (43) = happyShift action_24
action_85 (44) = happyShift action_25
action_85 (45) = happyShift action_26
action_85 (46) = happyShift action_27
action_85 (47) = happyShift action_28
action_85 (48) = happyShift action_29
action_85 (49) = happyShift action_30
action_85 (50) = happyShift action_31
action_85 (52) = happyShift action_32
action_85 (53) = happyShift action_33
action_85 (54) = happyShift action_34
action_85 (55) = happyShift action_35
action_85 (60) = happyShift action_36
action_85 (64) = happyShift action_37
action_85 (4) = happyGoto action_98
action_85 (6) = happyGoto action_2
action_85 (7) = happyGoto action_6
action_85 (8) = happyGoto action_7
action_85 (11) = happyGoto action_8
action_85 (13) = happyGoto action_9
action_85 (14) = happyGoto action_10
action_85 (15) = happyGoto action_11
action_85 (17) = happyGoto action_12
action_85 (18) = happyGoto action_13
action_85 (19) = happyGoto action_14
action_85 (20) = happyGoto action_15
action_85 (21) = happyGoto action_16
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (38) = happyShift action_97
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (34) = happyShift action_96
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_29

action_89 (30) = happyShift action_17
action_89 (31) = happyShift action_3
action_89 (32) = happyShift action_4
action_89 (33) = happyShift action_18
action_89 (35) = happyShift action_19
action_89 (36) = happyShift action_20
action_89 (39) = happyShift action_21
action_89 (41) = happyShift action_22
action_89 (42) = happyShift action_23
action_89 (43) = happyShift action_24
action_89 (44) = happyShift action_25
action_89 (45) = happyShift action_26
action_89 (46) = happyShift action_27
action_89 (47) = happyShift action_28
action_89 (48) = happyShift action_29
action_89 (49) = happyShift action_30
action_89 (50) = happyShift action_31
action_89 (52) = happyShift action_32
action_89 (53) = happyShift action_33
action_89 (54) = happyShift action_34
action_89 (55) = happyShift action_35
action_89 (60) = happyShift action_36
action_89 (64) = happyShift action_37
action_89 (4) = happyGoto action_95
action_89 (6) = happyGoto action_2
action_89 (7) = happyGoto action_6
action_89 (8) = happyGoto action_7
action_89 (11) = happyGoto action_8
action_89 (13) = happyGoto action_9
action_89 (14) = happyGoto action_10
action_89 (15) = happyGoto action_11
action_89 (17) = happyGoto action_12
action_89 (18) = happyGoto action_13
action_89 (19) = happyGoto action_14
action_89 (20) = happyGoto action_15
action_89 (21) = happyGoto action_16
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (30) = happyShift action_17
action_90 (31) = happyShift action_3
action_90 (32) = happyShift action_4
action_90 (33) = happyShift action_18
action_90 (35) = happyShift action_19
action_90 (36) = happyShift action_20
action_90 (39) = happyShift action_21
action_90 (41) = happyShift action_22
action_90 (42) = happyShift action_23
action_90 (43) = happyShift action_24
action_90 (44) = happyShift action_25
action_90 (45) = happyShift action_26
action_90 (46) = happyShift action_27
action_90 (47) = happyShift action_28
action_90 (48) = happyShift action_29
action_90 (49) = happyShift action_30
action_90 (50) = happyShift action_31
action_90 (52) = happyShift action_32
action_90 (53) = happyShift action_33
action_90 (54) = happyShift action_34
action_90 (55) = happyShift action_35
action_90 (60) = happyShift action_36
action_90 (64) = happyShift action_37
action_90 (4) = happyGoto action_94
action_90 (6) = happyGoto action_2
action_90 (7) = happyGoto action_6
action_90 (8) = happyGoto action_7
action_90 (11) = happyGoto action_8
action_90 (13) = happyGoto action_9
action_90 (14) = happyGoto action_10
action_90 (15) = happyGoto action_11
action_90 (17) = happyGoto action_12
action_90 (18) = happyGoto action_13
action_90 (19) = happyGoto action_14
action_90 (20) = happyGoto action_15
action_90 (21) = happyGoto action_16
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (30) = happyShift action_17
action_91 (31) = happyShift action_3
action_91 (32) = happyShift action_4
action_91 (33) = happyShift action_18
action_91 (35) = happyShift action_19
action_91 (36) = happyShift action_20
action_91 (39) = happyShift action_21
action_91 (41) = happyShift action_22
action_91 (42) = happyShift action_23
action_91 (43) = happyShift action_24
action_91 (44) = happyShift action_25
action_91 (45) = happyShift action_26
action_91 (46) = happyShift action_27
action_91 (47) = happyShift action_28
action_91 (48) = happyShift action_29
action_91 (49) = happyShift action_30
action_91 (50) = happyShift action_31
action_91 (52) = happyShift action_32
action_91 (53) = happyShift action_33
action_91 (54) = happyShift action_34
action_91 (55) = happyShift action_35
action_91 (60) = happyShift action_36
action_91 (64) = happyShift action_37
action_91 (4) = happyGoto action_93
action_91 (6) = happyGoto action_2
action_91 (7) = happyGoto action_6
action_91 (8) = happyGoto action_7
action_91 (11) = happyGoto action_8
action_91 (13) = happyGoto action_9
action_91 (14) = happyGoto action_10
action_91 (15) = happyGoto action_11
action_91 (17) = happyGoto action_12
action_91 (18) = happyGoto action_13
action_91 (19) = happyGoto action_14
action_91 (20) = happyGoto action_15
action_91 (21) = happyGoto action_16
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_36

action_93 (57) = happyShift action_104
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_30

action_95 _ = happyReduce_31

action_96 (30) = happyShift action_17
action_96 (31) = happyShift action_3
action_96 (32) = happyShift action_4
action_96 (33) = happyShift action_18
action_96 (35) = happyShift action_19
action_96 (36) = happyShift action_20
action_96 (39) = happyShift action_21
action_96 (41) = happyShift action_22
action_96 (42) = happyShift action_23
action_96 (43) = happyShift action_24
action_96 (44) = happyShift action_25
action_96 (45) = happyShift action_26
action_96 (46) = happyShift action_27
action_96 (47) = happyShift action_28
action_96 (48) = happyShift action_29
action_96 (49) = happyShift action_30
action_96 (50) = happyShift action_31
action_96 (52) = happyShift action_32
action_96 (53) = happyShift action_33
action_96 (54) = happyShift action_34
action_96 (55) = happyShift action_35
action_96 (60) = happyShift action_36
action_96 (64) = happyShift action_37
action_96 (4) = happyGoto action_103
action_96 (6) = happyGoto action_2
action_96 (7) = happyGoto action_6
action_96 (8) = happyGoto action_7
action_96 (11) = happyGoto action_8
action_96 (13) = happyGoto action_9
action_96 (14) = happyGoto action_10
action_96 (15) = happyGoto action_11
action_96 (17) = happyGoto action_12
action_96 (18) = happyGoto action_13
action_96 (19) = happyGoto action_14
action_96 (20) = happyGoto action_15
action_96 (21) = happyGoto action_16
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (30) = happyShift action_17
action_97 (31) = happyShift action_3
action_97 (32) = happyShift action_4
action_97 (33) = happyShift action_18
action_97 (35) = happyShift action_19
action_97 (36) = happyShift action_20
action_97 (39) = happyShift action_21
action_97 (41) = happyShift action_22
action_97 (42) = happyShift action_23
action_97 (43) = happyShift action_24
action_97 (44) = happyShift action_25
action_97 (45) = happyShift action_26
action_97 (46) = happyShift action_27
action_97 (47) = happyShift action_28
action_97 (48) = happyShift action_29
action_97 (49) = happyShift action_30
action_97 (50) = happyShift action_31
action_97 (52) = happyShift action_32
action_97 (53) = happyShift action_33
action_97 (54) = happyShift action_34
action_97 (55) = happyShift action_35
action_97 (60) = happyShift action_36
action_97 (64) = happyShift action_37
action_97 (4) = happyGoto action_102
action_97 (6) = happyGoto action_2
action_97 (7) = happyGoto action_6
action_97 (8) = happyGoto action_7
action_97 (11) = happyGoto action_8
action_97 (13) = happyGoto action_9
action_97 (14) = happyGoto action_10
action_97 (15) = happyGoto action_11
action_97 (17) = happyGoto action_12
action_97 (18) = happyGoto action_13
action_97 (19) = happyGoto action_14
action_97 (20) = happyGoto action_15
action_97 (21) = happyGoto action_16
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_35

action_99 (57) = happyShift action_101
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_63

action_101 _ = happyReduce_24

action_102 _ = happyReduce_33

action_103 _ = happyReduce_32

action_104 _ = happyReduce_40

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
		 (AST.ListExpr happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.LetExpr happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.UnpackExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.IfExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.CondExpr happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.EffectExpr happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Literal happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Variable happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LetExpr happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.UnpackExpr happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.CondExpr happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.EffectExpr happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  6 happyReduction_20
happyReduction_20 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn6
		 (AST.IntLit happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  6 happyReduction_21
happyReduction_21 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn6
		 (AST.BoolLit happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  7 happyReduction_22
happyReduction_22 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (AST.Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  8 happyReduction_23
happyReduction_23 _
	_
	 =  HappyAbsSyn8
		 (Empty
	)

happyReduce_24 = happyReduce 6 8 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cons happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 8 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (foldr Cons Empty happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  9 happyReduction_26
happyReduction_26 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (SList happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  10 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Val happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 11 happyReduction_29
happyReduction_29 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetRegular happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 5 11 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn23  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetStar happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  12 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn12
		 ((happy_var_1, happy_var_3)
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 6 13 happyReduction_32
happyReduction_32 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.Unpack (happy_var_2, happy_var_4) happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  15 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn22  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (AST.Cond happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  16 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn16
		 ((happy_var_1,  happy_var_3)
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 17 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.UnOpExpr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn18
		 (AST.Not
	)

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn18
		 (AST.IsZero
	)

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn18
		 (AST.Negate
	)

happyReduce_40 = happyReduce 6 19 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.BinOpExpr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_1  20 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn20
		 (AST.And
	)

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn20
		 (AST.Or
	)

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn20
		 (AST.Plus
	)

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn20
		 (AST.Minus
	)

happyReduce_45 = happySpecReduce_1  20 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn20
		 (AST.Times
	)

happyReduce_46 = happySpecReduce_1  20 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn20
		 (AST.Div
	)

happyReduce_47 = happySpecReduce_1  20 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn20
		 (AST.Eq
	)

happyReduce_48 = happySpecReduce_1  20 happyReduction_48
happyReduction_48 _
	 =  HappyAbsSyn20
		 (AST.Gt
	)

happyReduce_49 = happySpecReduce_1  20 happyReduction_49
happyReduction_49 _
	 =  HappyAbsSyn20
		 (AST.Lt
	)

happyReduce_50 = happyReduce 4 21 happyReduction_50
happyReduction_50 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (AST.PrintEffect happy_var_3
	) `HappyStk` happyRest

happyReduce_51 = happySpecReduce_1  22 happyReduction_51
happyReduction_51 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn22
		 (reverse happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  23 happyReduction_52
happyReduction_52 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn23
		 (reverse happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  24 happyReduction_53
happyReduction_53 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn24
		 (reverse happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  25 happyReduction_54
happyReduction_54 (HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn25
		 (reverse happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_0  26 happyReduction_55
happyReduction_55  =  HappyAbsSyn26
		 ([]
	)

happyReduce_56 = happySpecReduce_2  26 happyReduction_56
happyReduction_56 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_2 : happy_var_1
	)
happyReduction_56 _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_0  27 happyReduction_57
happyReduction_57  =  HappyAbsSyn27
		 ([]
	)

happyReduce_58 = happySpecReduce_2  27 happyReduction_58
happyReduction_58 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn27
		 (happy_var_2 : happy_var_1
	)
happyReduction_58 _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_0  28 happyReduction_59
happyReduction_59  =  HappyAbsSyn28
		 ([]
	)

happyReduce_60 = happySpecReduce_2  28 happyReduction_60
happyReduction_60 (HappyTerminal (TokenVar happy_var_2))
	(HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn28
		 (happy_var_2 : happy_var_1
	)
happyReduction_60 _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_0  29 happyReduction_61
happyReduction_61  =  HappyAbsSyn29
		 ([]
	)

happyReduce_62 = happySpecReduce_1  29 happyReduction_62
happyReduction_62 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn29
		 ([happy_var_1]
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_3  29 happyReduction_63
happyReduction_63 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn29  happy_var_1)
	 =  HappyAbsSyn29
		 (happy_var_3 : happy_var_1
	)
happyReduction_63 _ _ _  = notHappyAtAll 

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
