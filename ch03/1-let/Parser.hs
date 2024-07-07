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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,327) ([0,48128,49140,2183,0,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,16384,0,0,54000,7935,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,1024,0,49152,65355,34939,0,0,0,0,0,12032,61437,545,0,42464,15871,68,0,2048,0,0,32768,65175,4343,1,0,4,0,0,8192,0,0,0,64,0,0,0,0,0,0,0,64815,8687,2,57344,65445,17469,0,0,0,16,0,0,0,64,0,256,0,0,0,0,0,0,0,0,4,0,30720,32745,4367,0,12032,61437,545,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,2,0,0,512,0,0,0,0,0,24064,57338,1091,0,0,0,0,0,0,3,1,0,64815,8687,2,0,16,0,0,0,0,0,0,38784,63486,272,0,54000,7935,34,0,64094,17375,4,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,62652,34751,8,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","ListExpr","SyntaxSugarList","ListNode","LetExpr","LetExprRule","IfExpr","CondExpr","CondExprRule","UnOpExpr","UnOpExprOp","BinOpExpr","BinOpExprOp","EffectExpr","many__CondExprRule__","many__LetExprRule__","sepBy__ListNode__','__","many_rev__CondExprRule__","many_rev__LetExprRule__","sepBy_rev__ListNode__','__","var","int","boolean","let","in","if","then","else","cond","end","isZero","minus","not","cons","list","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","\"==>\"","print","%eof"]
        bit_start = st Prelude.* 61
        bit_end = (st Prelude.+ 1) Prelude.* 61
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..60]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (27) = happyShift action_16
action_0 (28) = happyShift action_3
action_0 (29) = happyShift action_4
action_0 (30) = happyShift action_17
action_0 (32) = happyShift action_18
action_0 (35) = happyShift action_19
action_0 (37) = happyShift action_20
action_0 (38) = happyShift action_21
action_0 (39) = happyShift action_22
action_0 (40) = happyShift action_23
action_0 (41) = happyShift action_24
action_0 (42) = happyShift action_25
action_0 (43) = happyShift action_26
action_0 (44) = happyShift action_27
action_0 (45) = happyShift action_28
action_0 (46) = happyShift action_29
action_0 (48) = happyShift action_30
action_0 (49) = happyShift action_31
action_0 (50) = happyShift action_32
action_0 (51) = happyShift action_33
action_0 (56) = happyShift action_34
action_0 (60) = happyShift action_35
action_0 (4) = happyGoto action_5
action_0 (6) = happyGoto action_2
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (13) = happyGoto action_9
action_0 (14) = happyGoto action_10
action_0 (16) = happyGoto action_11
action_0 (17) = happyGoto action_12
action_0 (18) = happyGoto action_13
action_0 (19) = happyGoto action_14
action_0 (20) = happyGoto action_15
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (28) = happyShift action_3
action_1 (29) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_18

action_4 _ = happyReduce_19

action_5 (61) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 (52) = happyShift action_47
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_8

action_14 (52) = happyShift action_46
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_9

action_16 _ = happyReduce_20

action_17 (50) = happyShift action_45
action_17 (22) = happyGoto action_43
action_17 (25) = happyGoto action_44
action_17 _ = happyReduce_53

action_18 (27) = happyShift action_16
action_18 (28) = happyShift action_3
action_18 (29) = happyShift action_4
action_18 (30) = happyShift action_17
action_18 (32) = happyShift action_18
action_18 (35) = happyShift action_19
action_18 (37) = happyShift action_20
action_18 (38) = happyShift action_21
action_18 (39) = happyShift action_22
action_18 (40) = happyShift action_23
action_18 (41) = happyShift action_24
action_18 (42) = happyShift action_25
action_18 (43) = happyShift action_26
action_18 (44) = happyShift action_27
action_18 (45) = happyShift action_28
action_18 (46) = happyShift action_29
action_18 (48) = happyShift action_30
action_18 (49) = happyShift action_31
action_18 (50) = happyShift action_32
action_18 (51) = happyShift action_33
action_18 (56) = happyShift action_34
action_18 (60) = happyShift action_35
action_18 (4) = happyGoto action_42
action_18 (6) = happyGoto action_2
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (11) = happyGoto action_8
action_18 (13) = happyGoto action_9
action_18 (14) = happyGoto action_10
action_18 (16) = happyGoto action_11
action_18 (17) = happyGoto action_12
action_18 (18) = happyGoto action_13
action_18 (19) = happyGoto action_14
action_18 (20) = happyGoto action_15
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (21) = happyGoto action_40
action_19 (24) = happyGoto action_41
action_19 _ = happyReduce_51

action_20 _ = happyReduce_35

action_21 _ = happyReduce_36

action_22 _ = happyReduce_34

action_23 (52) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (52) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_38

action_26 _ = happyReduce_39

action_27 _ = happyReduce_44

action_28 _ = happyReduce_45

action_29 _ = happyReduce_46

action_30 _ = happyReduce_40

action_31 _ = happyReduce_41

action_32 _ = happyReduce_42

action_33 _ = happyReduce_43

action_34 (57) = happyShift action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (52) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (27) = happyShift action_16
action_36 (28) = happyShift action_3
action_36 (29) = happyShift action_4
action_36 (30) = happyShift action_17
action_36 (32) = happyShift action_18
action_36 (35) = happyShift action_19
action_36 (37) = happyShift action_20
action_36 (38) = happyShift action_21
action_36 (39) = happyShift action_22
action_36 (40) = happyShift action_23
action_36 (41) = happyShift action_24
action_36 (42) = happyShift action_25
action_36 (43) = happyShift action_26
action_36 (44) = happyShift action_27
action_36 (45) = happyShift action_28
action_36 (46) = happyShift action_29
action_36 (48) = happyShift action_30
action_36 (49) = happyShift action_31
action_36 (50) = happyShift action_32
action_36 (51) = happyShift action_33
action_36 (56) = happyShift action_34
action_36 (60) = happyShift action_35
action_36 (4) = happyGoto action_73
action_36 (6) = happyGoto action_2
action_36 (7) = happyGoto action_6
action_36 (8) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 (13) = happyGoto action_9
action_36 (14) = happyGoto action_10
action_36 (16) = happyGoto action_11
action_36 (17) = happyGoto action_12
action_36 (18) = happyGoto action_13
action_36 (19) = happyGoto action_14
action_36 (20) = happyGoto action_15
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_21

action_38 (27) = happyShift action_16
action_38 (28) = happyShift action_3
action_38 (29) = happyShift action_4
action_38 (30) = happyShift action_17
action_38 (32) = happyShift action_18
action_38 (35) = happyShift action_19
action_38 (37) = happyShift action_20
action_38 (38) = happyShift action_21
action_38 (39) = happyShift action_22
action_38 (40) = happyShift action_23
action_38 (41) = happyShift action_24
action_38 (42) = happyShift action_25
action_38 (43) = happyShift action_26
action_38 (44) = happyShift action_27
action_38 (45) = happyShift action_28
action_38 (46) = happyShift action_29
action_38 (48) = happyShift action_30
action_38 (49) = happyShift action_31
action_38 (50) = happyShift action_32
action_38 (51) = happyShift action_33
action_38 (56) = happyShift action_34
action_38 (60) = happyShift action_35
action_38 (5) = happyGoto action_58
action_38 (6) = happyGoto action_59
action_38 (7) = happyGoto action_60
action_38 (8) = happyGoto action_61
action_38 (9) = happyGoto action_69
action_38 (10) = happyGoto action_70
action_38 (11) = happyGoto action_63
action_38 (13) = happyGoto action_64
action_38 (14) = happyGoto action_65
action_38 (16) = happyGoto action_66
action_38 (17) = happyGoto action_12
action_38 (18) = happyGoto action_67
action_38 (19) = happyGoto action_14
action_38 (20) = happyGoto action_68
action_38 (23) = happyGoto action_71
action_38 (26) = happyGoto action_72
action_38 _ = happyReduce_55

action_39 (27) = happyShift action_16
action_39 (28) = happyShift action_3
action_39 (29) = happyShift action_4
action_39 (30) = happyShift action_17
action_39 (32) = happyShift action_18
action_39 (35) = happyShift action_19
action_39 (37) = happyShift action_20
action_39 (38) = happyShift action_21
action_39 (39) = happyShift action_22
action_39 (40) = happyShift action_23
action_39 (41) = happyShift action_24
action_39 (42) = happyShift action_25
action_39 (43) = happyShift action_26
action_39 (44) = happyShift action_27
action_39 (45) = happyShift action_28
action_39 (46) = happyShift action_29
action_39 (48) = happyShift action_30
action_39 (49) = happyShift action_31
action_39 (50) = happyShift action_32
action_39 (51) = happyShift action_33
action_39 (56) = happyShift action_34
action_39 (60) = happyShift action_35
action_39 (5) = happyGoto action_58
action_39 (6) = happyGoto action_59
action_39 (7) = happyGoto action_60
action_39 (8) = happyGoto action_61
action_39 (10) = happyGoto action_62
action_39 (11) = happyGoto action_63
action_39 (13) = happyGoto action_64
action_39 (14) = happyGoto action_65
action_39 (16) = happyGoto action_66
action_39 (17) = happyGoto action_12
action_39 (18) = happyGoto action_67
action_39 (19) = happyGoto action_14
action_39 (20) = happyGoto action_68
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (36) = happyShift action_57
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (27) = happyShift action_16
action_41 (28) = happyShift action_3
action_41 (29) = happyShift action_4
action_41 (30) = happyShift action_17
action_41 (32) = happyShift action_18
action_41 (35) = happyShift action_19
action_41 (37) = happyShift action_20
action_41 (38) = happyShift action_21
action_41 (39) = happyShift action_22
action_41 (40) = happyShift action_23
action_41 (41) = happyShift action_24
action_41 (42) = happyShift action_25
action_41 (43) = happyShift action_26
action_41 (44) = happyShift action_27
action_41 (45) = happyShift action_28
action_41 (46) = happyShift action_29
action_41 (48) = happyShift action_30
action_41 (49) = happyShift action_31
action_41 (50) = happyShift action_32
action_41 (51) = happyShift action_33
action_41 (56) = happyShift action_34
action_41 (60) = happyShift action_35
action_41 (4) = happyGoto action_55
action_41 (6) = happyGoto action_2
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (11) = happyGoto action_8
action_41 (13) = happyGoto action_9
action_41 (14) = happyGoto action_10
action_41 (15) = happyGoto action_56
action_41 (16) = happyGoto action_11
action_41 (17) = happyGoto action_12
action_41 (18) = happyGoto action_13
action_41 (19) = happyGoto action_14
action_41 (20) = happyGoto action_15
action_41 _ = happyReduce_48

action_42 (33) = happyShift action_54
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (31) = happyShift action_53
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (27) = happyShift action_52
action_44 (12) = happyGoto action_51
action_44 _ = happyReduce_49

action_45 (22) = happyGoto action_50
action_45 (25) = happyGoto action_44
action_45 _ = happyReduce_53

action_46 (27) = happyShift action_16
action_46 (28) = happyShift action_3
action_46 (29) = happyShift action_4
action_46 (30) = happyShift action_17
action_46 (32) = happyShift action_18
action_46 (35) = happyShift action_19
action_46 (37) = happyShift action_20
action_46 (38) = happyShift action_21
action_46 (39) = happyShift action_22
action_46 (40) = happyShift action_23
action_46 (41) = happyShift action_24
action_46 (42) = happyShift action_25
action_46 (43) = happyShift action_26
action_46 (44) = happyShift action_27
action_46 (45) = happyShift action_28
action_46 (46) = happyShift action_29
action_46 (48) = happyShift action_30
action_46 (49) = happyShift action_31
action_46 (50) = happyShift action_32
action_46 (51) = happyShift action_33
action_46 (56) = happyShift action_34
action_46 (60) = happyShift action_35
action_46 (4) = happyGoto action_49
action_46 (6) = happyGoto action_2
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (11) = happyGoto action_8
action_46 (13) = happyGoto action_9
action_46 (14) = happyGoto action_10
action_46 (16) = happyGoto action_11
action_46 (17) = happyGoto action_12
action_46 (18) = happyGoto action_13
action_46 (19) = happyGoto action_14
action_46 (20) = happyGoto action_15
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (27) = happyShift action_16
action_47 (28) = happyShift action_3
action_47 (29) = happyShift action_4
action_47 (30) = happyShift action_17
action_47 (32) = happyShift action_18
action_47 (35) = happyShift action_19
action_47 (37) = happyShift action_20
action_47 (38) = happyShift action_21
action_47 (39) = happyShift action_22
action_47 (40) = happyShift action_23
action_47 (41) = happyShift action_24
action_47 (42) = happyShift action_25
action_47 (43) = happyShift action_26
action_47 (44) = happyShift action_27
action_47 (45) = happyShift action_28
action_47 (46) = happyShift action_29
action_47 (48) = happyShift action_30
action_47 (49) = happyShift action_31
action_47 (50) = happyShift action_32
action_47 (51) = happyShift action_33
action_47 (56) = happyShift action_34
action_47 (60) = happyShift action_35
action_47 (4) = happyGoto action_48
action_47 (6) = happyGoto action_2
action_47 (7) = happyGoto action_6
action_47 (8) = happyGoto action_7
action_47 (11) = happyGoto action_8
action_47 (13) = happyGoto action_9
action_47 (14) = happyGoto action_10
action_47 (16) = happyGoto action_11
action_47 (17) = happyGoto action_12
action_47 (18) = happyGoto action_13
action_47 (19) = happyGoto action_14
action_47 (20) = happyGoto action_15
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (53) = happyShift action_84
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (58) = happyShift action_83
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_82
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_54

action_52 (47) = happyShift action_81
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (27) = happyShift action_16
action_53 (28) = happyShift action_3
action_53 (29) = happyShift action_4
action_53 (30) = happyShift action_17
action_53 (32) = happyShift action_18
action_53 (35) = happyShift action_19
action_53 (37) = happyShift action_20
action_53 (38) = happyShift action_21
action_53 (39) = happyShift action_22
action_53 (40) = happyShift action_23
action_53 (41) = happyShift action_24
action_53 (42) = happyShift action_25
action_53 (43) = happyShift action_26
action_53 (44) = happyShift action_27
action_53 (45) = happyShift action_28
action_53 (46) = happyShift action_29
action_53 (48) = happyShift action_30
action_53 (49) = happyShift action_31
action_53 (50) = happyShift action_32
action_53 (51) = happyShift action_33
action_53 (56) = happyShift action_34
action_53 (60) = happyShift action_35
action_53 (4) = happyGoto action_80
action_53 (6) = happyGoto action_2
action_53 (7) = happyGoto action_6
action_53 (8) = happyGoto action_7
action_53 (11) = happyGoto action_8
action_53 (13) = happyGoto action_9
action_53 (14) = happyGoto action_10
action_53 (16) = happyGoto action_11
action_53 (17) = happyGoto action_12
action_53 (18) = happyGoto action_13
action_53 (19) = happyGoto action_14
action_53 (20) = happyGoto action_15
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (27) = happyShift action_16
action_54 (28) = happyShift action_3
action_54 (29) = happyShift action_4
action_54 (30) = happyShift action_17
action_54 (32) = happyShift action_18
action_54 (35) = happyShift action_19
action_54 (37) = happyShift action_20
action_54 (38) = happyShift action_21
action_54 (39) = happyShift action_22
action_54 (40) = happyShift action_23
action_54 (41) = happyShift action_24
action_54 (42) = happyShift action_25
action_54 (43) = happyShift action_26
action_54 (44) = happyShift action_27
action_54 (45) = happyShift action_28
action_54 (46) = happyShift action_29
action_54 (48) = happyShift action_30
action_54 (49) = happyShift action_31
action_54 (50) = happyShift action_32
action_54 (51) = happyShift action_33
action_54 (56) = happyShift action_34
action_54 (60) = happyShift action_35
action_54 (4) = happyGoto action_79
action_54 (6) = happyGoto action_2
action_54 (7) = happyGoto action_6
action_54 (8) = happyGoto action_7
action_54 (11) = happyGoto action_8
action_54 (13) = happyGoto action_9
action_54 (14) = happyGoto action_10
action_54 (16) = happyGoto action_11
action_54 (17) = happyGoto action_12
action_54 (18) = happyGoto action_13
action_54 (19) = happyGoto action_14
action_54 (20) = happyGoto action_15
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (59) = happyShift action_78
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_52

action_57 _ = happyReduce_31

action_58 _ = happyReduce_26

action_59 _ = happyReduce_10

action_60 _ = happyReduce_11

action_61 _ = happyReduce_25

action_62 (58) = happyShift action_77
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_12

action_64 _ = happyReduce_13

action_65 _ = happyReduce_14

action_66 _ = happyReduce_15

action_67 _ = happyReduce_16

action_68 _ = happyReduce_17

action_69 (53) = happyShift action_76
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_56

action_71 _ = happyReduce_24

action_72 (58) = happyShift action_75
action_72 _ = happyReduce_50

action_73 (53) = happyShift action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_47

action_75 (27) = happyShift action_16
action_75 (28) = happyShift action_3
action_75 (29) = happyShift action_4
action_75 (30) = happyShift action_17
action_75 (32) = happyShift action_18
action_75 (35) = happyShift action_19
action_75 (37) = happyShift action_20
action_75 (38) = happyShift action_21
action_75 (39) = happyShift action_22
action_75 (40) = happyShift action_23
action_75 (41) = happyShift action_24
action_75 (42) = happyShift action_25
action_75 (43) = happyShift action_26
action_75 (44) = happyShift action_27
action_75 (45) = happyShift action_28
action_75 (46) = happyShift action_29
action_75 (48) = happyShift action_30
action_75 (49) = happyShift action_31
action_75 (50) = happyShift action_32
action_75 (51) = happyShift action_33
action_75 (56) = happyShift action_34
action_75 (60) = happyShift action_35
action_75 (5) = happyGoto action_58
action_75 (6) = happyGoto action_59
action_75 (7) = happyGoto action_60
action_75 (8) = happyGoto action_61
action_75 (10) = happyGoto action_91
action_75 (11) = happyGoto action_63
action_75 (13) = happyGoto action_64
action_75 (14) = happyGoto action_65
action_75 (16) = happyGoto action_66
action_75 (17) = happyGoto action_12
action_75 (18) = happyGoto action_67
action_75 (19) = happyGoto action_14
action_75 (20) = happyGoto action_68
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_23

action_77 (40) = happyShift action_23
action_77 (41) = happyShift action_24
action_77 (56) = happyShift action_34
action_77 (8) = happyGoto action_90
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (27) = happyShift action_16
action_78 (28) = happyShift action_3
action_78 (29) = happyShift action_4
action_78 (30) = happyShift action_17
action_78 (32) = happyShift action_18
action_78 (35) = happyShift action_19
action_78 (37) = happyShift action_20
action_78 (38) = happyShift action_21
action_78 (39) = happyShift action_22
action_78 (40) = happyShift action_23
action_78 (41) = happyShift action_24
action_78 (42) = happyShift action_25
action_78 (43) = happyShift action_26
action_78 (44) = happyShift action_27
action_78 (45) = happyShift action_28
action_78 (46) = happyShift action_29
action_78 (48) = happyShift action_30
action_78 (49) = happyShift action_31
action_78 (50) = happyShift action_32
action_78 (51) = happyShift action_33
action_78 (56) = happyShift action_34
action_78 (60) = happyShift action_35
action_78 (4) = happyGoto action_89
action_78 (6) = happyGoto action_2
action_78 (7) = happyGoto action_6
action_78 (8) = happyGoto action_7
action_78 (11) = happyGoto action_8
action_78 (13) = happyGoto action_9
action_78 (14) = happyGoto action_10
action_78 (16) = happyGoto action_11
action_78 (17) = happyGoto action_12
action_78 (18) = happyGoto action_13
action_78 (19) = happyGoto action_14
action_78 (20) = happyGoto action_15
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (34) = happyShift action_88
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_27

action_81 (27) = happyShift action_16
action_81 (28) = happyShift action_3
action_81 (29) = happyShift action_4
action_81 (30) = happyShift action_17
action_81 (32) = happyShift action_18
action_81 (35) = happyShift action_19
action_81 (37) = happyShift action_20
action_81 (38) = happyShift action_21
action_81 (39) = happyShift action_22
action_81 (40) = happyShift action_23
action_81 (41) = happyShift action_24
action_81 (42) = happyShift action_25
action_81 (43) = happyShift action_26
action_81 (44) = happyShift action_27
action_81 (45) = happyShift action_28
action_81 (46) = happyShift action_29
action_81 (48) = happyShift action_30
action_81 (49) = happyShift action_31
action_81 (50) = happyShift action_32
action_81 (51) = happyShift action_33
action_81 (56) = happyShift action_34
action_81 (60) = happyShift action_35
action_81 (4) = happyGoto action_87
action_81 (6) = happyGoto action_2
action_81 (7) = happyGoto action_6
action_81 (8) = happyGoto action_7
action_81 (11) = happyGoto action_8
action_81 (13) = happyGoto action_9
action_81 (14) = happyGoto action_10
action_81 (16) = happyGoto action_11
action_81 (17) = happyGoto action_12
action_81 (18) = happyGoto action_13
action_81 (19) = happyGoto action_14
action_81 (20) = happyGoto action_15
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (27) = happyShift action_16
action_82 (28) = happyShift action_3
action_82 (29) = happyShift action_4
action_82 (30) = happyShift action_17
action_82 (32) = happyShift action_18
action_82 (35) = happyShift action_19
action_82 (37) = happyShift action_20
action_82 (38) = happyShift action_21
action_82 (39) = happyShift action_22
action_82 (40) = happyShift action_23
action_82 (41) = happyShift action_24
action_82 (42) = happyShift action_25
action_82 (43) = happyShift action_26
action_82 (44) = happyShift action_27
action_82 (45) = happyShift action_28
action_82 (46) = happyShift action_29
action_82 (48) = happyShift action_30
action_82 (49) = happyShift action_31
action_82 (50) = happyShift action_32
action_82 (51) = happyShift action_33
action_82 (56) = happyShift action_34
action_82 (60) = happyShift action_35
action_82 (4) = happyGoto action_86
action_82 (6) = happyGoto action_2
action_82 (7) = happyGoto action_6
action_82 (8) = happyGoto action_7
action_82 (11) = happyGoto action_8
action_82 (13) = happyGoto action_9
action_82 (14) = happyGoto action_10
action_82 (16) = happyGoto action_11
action_82 (17) = happyGoto action_12
action_82 (18) = happyGoto action_13
action_82 (19) = happyGoto action_14
action_82 (20) = happyGoto action_15
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (27) = happyShift action_16
action_83 (28) = happyShift action_3
action_83 (29) = happyShift action_4
action_83 (30) = happyShift action_17
action_83 (32) = happyShift action_18
action_83 (35) = happyShift action_19
action_83 (37) = happyShift action_20
action_83 (38) = happyShift action_21
action_83 (39) = happyShift action_22
action_83 (40) = happyShift action_23
action_83 (41) = happyShift action_24
action_83 (42) = happyShift action_25
action_83 (43) = happyShift action_26
action_83 (44) = happyShift action_27
action_83 (45) = happyShift action_28
action_83 (46) = happyShift action_29
action_83 (48) = happyShift action_30
action_83 (49) = happyShift action_31
action_83 (50) = happyShift action_32
action_83 (51) = happyShift action_33
action_83 (56) = happyShift action_34
action_83 (60) = happyShift action_35
action_83 (4) = happyGoto action_85
action_83 (6) = happyGoto action_2
action_83 (7) = happyGoto action_6
action_83 (8) = happyGoto action_7
action_83 (11) = happyGoto action_8
action_83 (13) = happyGoto action_9
action_83 (14) = happyGoto action_10
action_83 (16) = happyGoto action_11
action_83 (17) = happyGoto action_12
action_83 (18) = happyGoto action_13
action_83 (19) = happyGoto action_14
action_83 (20) = happyGoto action_15
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_33

action_85 (53) = happyShift action_94
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_28

action_87 _ = happyReduce_29

action_88 (27) = happyShift action_16
action_88 (28) = happyShift action_3
action_88 (29) = happyShift action_4
action_88 (30) = happyShift action_17
action_88 (32) = happyShift action_18
action_88 (35) = happyShift action_19
action_88 (37) = happyShift action_20
action_88 (38) = happyShift action_21
action_88 (39) = happyShift action_22
action_88 (40) = happyShift action_23
action_88 (41) = happyShift action_24
action_88 (42) = happyShift action_25
action_88 (43) = happyShift action_26
action_88 (44) = happyShift action_27
action_88 (45) = happyShift action_28
action_88 (46) = happyShift action_29
action_88 (48) = happyShift action_30
action_88 (49) = happyShift action_31
action_88 (50) = happyShift action_32
action_88 (51) = happyShift action_33
action_88 (56) = happyShift action_34
action_88 (60) = happyShift action_35
action_88 (4) = happyGoto action_93
action_88 (6) = happyGoto action_2
action_88 (7) = happyGoto action_6
action_88 (8) = happyGoto action_7
action_88 (11) = happyGoto action_8
action_88 (13) = happyGoto action_9
action_88 (14) = happyGoto action_10
action_88 (16) = happyGoto action_11
action_88 (17) = happyGoto action_12
action_88 (18) = happyGoto action_13
action_88 (19) = happyGoto action_14
action_88 (20) = happyGoto action_15
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_32

action_90 (53) = happyShift action_92
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_57

action_92 _ = happyReduce_22

action_93 _ = happyReduce_30

action_94 _ = happyReduce_37

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
		 (AST.IfExpr happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.CondExpr happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn4
		 (AST.EffectExpr happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Literal happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.Variable happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.LetExpr happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  5 happyReduction_13
happyReduction_13 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.CondExpr happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.EffectExpr happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  6 happyReduction_18
happyReduction_18 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn6
		 (AST.IntLit happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  6 happyReduction_19
happyReduction_19 (HappyTerminal (TokenBoolean happy_var_1))
	 =  HappyAbsSyn6
		 (AST.BoolLit happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn7
		 (AST.Var happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  8 happyReduction_21
happyReduction_21 _
	_
	 =  HappyAbsSyn8
		 (Empty
	)

happyReduce_22 = happyReduce 6 8 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Cons happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 8 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (foldr Cons Empty happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  10 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (SList happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn10
		 (Val happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happyReduce 4 11 happyReduction_27
happyReduction_27 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetRegular happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 5 11 happyReduction_28
happyReduction_28 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let AST.LetStar happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn12
		 ((happy_var_1, happy_var_3)
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 6 13 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn21  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (AST.Cond happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 ((happy_var_1,  happy_var_3)
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happyReduce 4 16 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (AST.UnOpExpr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_1  17 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn17
		 (AST.Not
	)

happyReduce_35 = happySpecReduce_1  17 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn17
		 (AST.IsZero
	)

happyReduce_36 = happySpecReduce_1  17 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn17
		 (AST.Negate
	)

happyReduce_37 = happyReduce 6 18 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (AST.BinOpExpr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_1  19 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn19
		 (AST.And
	)

happyReduce_39 = happySpecReduce_1  19 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn19
		 (AST.Or
	)

happyReduce_40 = happySpecReduce_1  19 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn19
		 (AST.Plus
	)

happyReduce_41 = happySpecReduce_1  19 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn19
		 (AST.Minus
	)

happyReduce_42 = happySpecReduce_1  19 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn19
		 (AST.Times
	)

happyReduce_43 = happySpecReduce_1  19 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn19
		 (AST.Div
	)

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn19
		 (AST.Eq
	)

happyReduce_45 = happySpecReduce_1  19 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn19
		 (AST.Gt
	)

happyReduce_46 = happySpecReduce_1  19 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn19
		 (AST.Lt
	)

happyReduce_47 = happyReduce 4 20 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (AST.PrintEffect happy_var_3
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_1  21 happyReduction_48
happyReduction_48 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn21
		 (reverse happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  22 happyReduction_49
happyReduction_49 (HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn22
		 (reverse happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  23 happyReduction_50
happyReduction_50 (HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn23
		 (reverse happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_0  24 happyReduction_51
happyReduction_51  =  HappyAbsSyn24
		 ([]
	)

happyReduce_52 = happySpecReduce_2  24 happyReduction_52
happyReduction_52 (HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn24
		 (happy_var_2 : happy_var_1
	)
happyReduction_52 _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_0  25 happyReduction_53
happyReduction_53  =  HappyAbsSyn25
		 ([]
	)

happyReduce_54 = happySpecReduce_2  25 happyReduction_54
happyReduction_54 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_2 : happy_var_1
	)
happyReduction_54 _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_0  26 happyReduction_55
happyReduction_55  =  HappyAbsSyn26
		 ([]
	)

happyReduce_56 = happySpecReduce_1  26 happyReduction_56
happyReduction_56 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn26
		 ([happy_var_1]
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  26 happyReduction_57
happyReduction_57 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn26  happy_var_1)
	 =  HappyAbsSyn26
		 (happy_var_3 : happy_var_1
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 61 61 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 27;
	TokenInt happy_dollar_dollar -> cont 28;
	TokenBoolean happy_dollar_dollar -> cont 29;
	TokenLet -> cont 30;
	TokenIn -> cont 31;
	TokenIf -> cont 32;
	TokenThen -> cont 33;
	TokenElse -> cont 34;
	TokenCond -> cont 35;
	TokenEnd -> cont 36;
	TokenIsZero -> cont 37;
	TokenNegate -> cont 38;
	TokenNot -> cont 39;
	TokenCons -> cont 40;
	TokenList -> cont 41;
	TokenBoolAnd -> cont 42;
	TokenBoolOr -> cont 43;
	TokenBoolEq -> cont 44;
	TokenBoolGt -> cont 45;
	TokenBoolLt -> cont 46;
	TokenEq -> cont 47;
	TokenPlus -> cont 48;
	TokenMinus -> cont 49;
	TokenTimes -> cont 50;
	TokenDiv -> cont 51;
	TokenOP -> cont 52;
	TokenCP -> cont 53;
	TokenOB -> cont 54;
	TokenCB -> cont 55;
	TokenOS -> cont 56;
	TokenCS -> cont 57;
	TokenComma -> cont 58;
	TokenLongArrow -> cont 59;
	TokenPrint -> cont 60;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 61 tk tks = happyError' (tks, explist)
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
  | TokenPrint
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
