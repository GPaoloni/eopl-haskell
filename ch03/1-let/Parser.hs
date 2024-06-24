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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,294) ([0,38784,63486,272,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,2,0,0,30720,32745,4367,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,16384,0,32768,65175,4343,1,0,0,0,0,59768,3967,17,57344,65445,17469,0,0,1,0,0,64094,17375,4,0,2,0,0,0,512,0,32768,65175,4343,1,24064,57338,1091,0,0,8192,0,0,0,4096,0,38784,63486,272,0,64094,17375,4,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,16,0,0,512,0,0,0,0,0,59768,3967,17,0,0,0,0,0,48,16,0,64094,17375,4,0,4,0,0,512,0,0,32768,65175,4343,1,0,0,0,0,0,8192,0,57344,65445,17469,0,38784,63486,272,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","ListExpr","SyntaxSugarList","ListNode","LetExpr","IfExpr","CondExpr","CondExprRule","UnOpExpr","UnOpExprOp","BinOpExpr","BinOpExprOp","EffectExpr","many__CondExprRule__","sepBy__ListNode__','__","many_rev__CondExprRule__","sepBy_rev__ListNode__','__","var","int","boolean","let","in","if","then","else","cond","end","isZero","minus","not","cons","list","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","\"==>\"","print","%eof"]
        bit_start = st Prelude.* 58
        bit_end = (st Prelude.+ 1) Prelude.* 58
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..57]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (24) = happyShift action_16
action_0 (25) = happyShift action_3
action_0 (26) = happyShift action_4
action_0 (27) = happyShift action_17
action_0 (29) = happyShift action_18
action_0 (32) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (38) = happyShift action_24
action_0 (39) = happyShift action_25
action_0 (40) = happyShift action_26
action_0 (41) = happyShift action_27
action_0 (42) = happyShift action_28
action_0 (43) = happyShift action_29
action_0 (45) = happyShift action_30
action_0 (46) = happyShift action_31
action_0 (47) = happyShift action_32
action_0 (48) = happyShift action_33
action_0 (53) = happyShift action_34
action_0 (57) = happyShift action_35
action_0 (4) = happyGoto action_5
action_0 (6) = happyGoto action_2
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 (16) = happyGoto action_12
action_0 (17) = happyGoto action_13
action_0 (18) = happyGoto action_14
action_0 (19) = happyGoto action_15
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (25) = happyShift action_3
action_1 (26) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_18

action_4 _ = happyReduce_19

action_5 (58) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 (49) = happyShift action_45
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_8

action_14 (49) = happyShift action_44
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_9

action_16 _ = happyReduce_20

action_17 (24) = happyShift action_43
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (24) = happyShift action_16
action_18 (25) = happyShift action_3
action_18 (26) = happyShift action_4
action_18 (27) = happyShift action_17
action_18 (29) = happyShift action_18
action_18 (32) = happyShift action_19
action_18 (34) = happyShift action_20
action_18 (35) = happyShift action_21
action_18 (36) = happyShift action_22
action_18 (37) = happyShift action_23
action_18 (38) = happyShift action_24
action_18 (39) = happyShift action_25
action_18 (40) = happyShift action_26
action_18 (41) = happyShift action_27
action_18 (42) = happyShift action_28
action_18 (43) = happyShift action_29
action_18 (45) = happyShift action_30
action_18 (46) = happyShift action_31
action_18 (47) = happyShift action_32
action_18 (48) = happyShift action_33
action_18 (53) = happyShift action_34
action_18 (57) = happyShift action_35
action_18 (4) = happyGoto action_42
action_18 (6) = happyGoto action_2
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (11) = happyGoto action_8
action_18 (12) = happyGoto action_9
action_18 (13) = happyGoto action_10
action_18 (15) = happyGoto action_11
action_18 (16) = happyGoto action_12
action_18 (17) = happyGoto action_13
action_18 (18) = happyGoto action_14
action_18 (19) = happyGoto action_15
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (20) = happyGoto action_40
action_19 (22) = happyGoto action_41
action_19 _ = happyReduce_48

action_20 _ = happyReduce_33

action_21 _ = happyReduce_34

action_22 _ = happyReduce_32

action_23 (49) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (49) = happyShift action_38
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_36

action_26 _ = happyReduce_37

action_27 _ = happyReduce_42

action_28 _ = happyReduce_43

action_29 _ = happyReduce_44

action_30 _ = happyReduce_38

action_31 _ = happyReduce_39

action_32 _ = happyReduce_40

action_33 _ = happyReduce_41

action_34 (54) = happyShift action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (49) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (24) = happyShift action_16
action_36 (25) = happyShift action_3
action_36 (26) = happyShift action_4
action_36 (27) = happyShift action_17
action_36 (29) = happyShift action_18
action_36 (32) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (37) = happyShift action_23
action_36 (38) = happyShift action_24
action_36 (39) = happyShift action_25
action_36 (40) = happyShift action_26
action_36 (41) = happyShift action_27
action_36 (42) = happyShift action_28
action_36 (43) = happyShift action_29
action_36 (45) = happyShift action_30
action_36 (46) = happyShift action_31
action_36 (47) = happyShift action_32
action_36 (48) = happyShift action_33
action_36 (53) = happyShift action_34
action_36 (57) = happyShift action_35
action_36 (4) = happyGoto action_68
action_36 (6) = happyGoto action_2
action_36 (7) = happyGoto action_6
action_36 (8) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 (13) = happyGoto action_10
action_36 (15) = happyGoto action_11
action_36 (16) = happyGoto action_12
action_36 (17) = happyGoto action_13
action_36 (18) = happyGoto action_14
action_36 (19) = happyGoto action_15
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_21

action_38 (24) = happyShift action_16
action_38 (25) = happyShift action_3
action_38 (26) = happyShift action_4
action_38 (27) = happyShift action_17
action_38 (29) = happyShift action_18
action_38 (32) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (37) = happyShift action_23
action_38 (38) = happyShift action_24
action_38 (39) = happyShift action_25
action_38 (40) = happyShift action_26
action_38 (41) = happyShift action_27
action_38 (42) = happyShift action_28
action_38 (43) = happyShift action_29
action_38 (45) = happyShift action_30
action_38 (46) = happyShift action_31
action_38 (47) = happyShift action_32
action_38 (48) = happyShift action_33
action_38 (53) = happyShift action_34
action_38 (57) = happyShift action_35
action_38 (5) = happyGoto action_53
action_38 (6) = happyGoto action_54
action_38 (7) = happyGoto action_55
action_38 (8) = happyGoto action_56
action_38 (9) = happyGoto action_64
action_38 (10) = happyGoto action_65
action_38 (11) = happyGoto action_58
action_38 (12) = happyGoto action_59
action_38 (13) = happyGoto action_60
action_38 (15) = happyGoto action_61
action_38 (16) = happyGoto action_12
action_38 (17) = happyGoto action_62
action_38 (18) = happyGoto action_14
action_38 (19) = happyGoto action_63
action_38 (21) = happyGoto action_66
action_38 (23) = happyGoto action_67
action_38 _ = happyReduce_50

action_39 (24) = happyShift action_16
action_39 (25) = happyShift action_3
action_39 (26) = happyShift action_4
action_39 (27) = happyShift action_17
action_39 (29) = happyShift action_18
action_39 (32) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (35) = happyShift action_21
action_39 (36) = happyShift action_22
action_39 (37) = happyShift action_23
action_39 (38) = happyShift action_24
action_39 (39) = happyShift action_25
action_39 (40) = happyShift action_26
action_39 (41) = happyShift action_27
action_39 (42) = happyShift action_28
action_39 (43) = happyShift action_29
action_39 (45) = happyShift action_30
action_39 (46) = happyShift action_31
action_39 (47) = happyShift action_32
action_39 (48) = happyShift action_33
action_39 (53) = happyShift action_34
action_39 (57) = happyShift action_35
action_39 (5) = happyGoto action_53
action_39 (6) = happyGoto action_54
action_39 (7) = happyGoto action_55
action_39 (8) = happyGoto action_56
action_39 (10) = happyGoto action_57
action_39 (11) = happyGoto action_58
action_39 (12) = happyGoto action_59
action_39 (13) = happyGoto action_60
action_39 (15) = happyGoto action_61
action_39 (16) = happyGoto action_12
action_39 (17) = happyGoto action_62
action_39 (18) = happyGoto action_14
action_39 (19) = happyGoto action_63
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (33) = happyShift action_52
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (24) = happyShift action_16
action_41 (25) = happyShift action_3
action_41 (26) = happyShift action_4
action_41 (27) = happyShift action_17
action_41 (29) = happyShift action_18
action_41 (32) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (37) = happyShift action_23
action_41 (38) = happyShift action_24
action_41 (39) = happyShift action_25
action_41 (40) = happyShift action_26
action_41 (41) = happyShift action_27
action_41 (42) = happyShift action_28
action_41 (43) = happyShift action_29
action_41 (45) = happyShift action_30
action_41 (46) = happyShift action_31
action_41 (47) = happyShift action_32
action_41 (48) = happyShift action_33
action_41 (53) = happyShift action_34
action_41 (57) = happyShift action_35
action_41 (4) = happyGoto action_50
action_41 (6) = happyGoto action_2
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (11) = happyGoto action_8
action_41 (12) = happyGoto action_9
action_41 (13) = happyGoto action_10
action_41 (14) = happyGoto action_51
action_41 (15) = happyGoto action_11
action_41 (16) = happyGoto action_12
action_41 (17) = happyGoto action_13
action_41 (18) = happyGoto action_14
action_41 (19) = happyGoto action_15
action_41 _ = happyReduce_46

action_42 (30) = happyShift action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (44) = happyShift action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (24) = happyShift action_16
action_44 (25) = happyShift action_3
action_44 (26) = happyShift action_4
action_44 (27) = happyShift action_17
action_44 (29) = happyShift action_18
action_44 (32) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (38) = happyShift action_24
action_44 (39) = happyShift action_25
action_44 (40) = happyShift action_26
action_44 (41) = happyShift action_27
action_44 (42) = happyShift action_28
action_44 (43) = happyShift action_29
action_44 (45) = happyShift action_30
action_44 (46) = happyShift action_31
action_44 (47) = happyShift action_32
action_44 (48) = happyShift action_33
action_44 (53) = happyShift action_34
action_44 (57) = happyShift action_35
action_44 (4) = happyGoto action_47
action_44 (6) = happyGoto action_2
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (11) = happyGoto action_8
action_44 (12) = happyGoto action_9
action_44 (13) = happyGoto action_10
action_44 (15) = happyGoto action_11
action_44 (16) = happyGoto action_12
action_44 (17) = happyGoto action_13
action_44 (18) = happyGoto action_14
action_44 (19) = happyGoto action_15
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_16
action_45 (25) = happyShift action_3
action_45 (26) = happyShift action_4
action_45 (27) = happyShift action_17
action_45 (29) = happyShift action_18
action_45 (32) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (37) = happyShift action_23
action_45 (38) = happyShift action_24
action_45 (39) = happyShift action_25
action_45 (40) = happyShift action_26
action_45 (41) = happyShift action_27
action_45 (42) = happyShift action_28
action_45 (43) = happyShift action_29
action_45 (45) = happyShift action_30
action_45 (46) = happyShift action_31
action_45 (47) = happyShift action_32
action_45 (48) = happyShift action_33
action_45 (53) = happyShift action_34
action_45 (57) = happyShift action_35
action_45 (4) = happyGoto action_46
action_45 (6) = happyGoto action_2
action_45 (7) = happyGoto action_6
action_45 (8) = happyGoto action_7
action_45 (11) = happyGoto action_8
action_45 (12) = happyGoto action_9
action_45 (13) = happyGoto action_10
action_45 (15) = happyGoto action_11
action_45 (16) = happyGoto action_12
action_45 (17) = happyGoto action_13
action_45 (18) = happyGoto action_14
action_45 (19) = happyGoto action_15
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (50) = happyShift action_77
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (55) = happyShift action_76
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_16
action_48 (25) = happyShift action_3
action_48 (26) = happyShift action_4
action_48 (27) = happyShift action_17
action_48 (29) = happyShift action_18
action_48 (32) = happyShift action_19
action_48 (34) = happyShift action_20
action_48 (35) = happyShift action_21
action_48 (36) = happyShift action_22
action_48 (37) = happyShift action_23
action_48 (38) = happyShift action_24
action_48 (39) = happyShift action_25
action_48 (40) = happyShift action_26
action_48 (41) = happyShift action_27
action_48 (42) = happyShift action_28
action_48 (43) = happyShift action_29
action_48 (45) = happyShift action_30
action_48 (46) = happyShift action_31
action_48 (47) = happyShift action_32
action_48 (48) = happyShift action_33
action_48 (53) = happyShift action_34
action_48 (57) = happyShift action_35
action_48 (4) = happyGoto action_75
action_48 (6) = happyGoto action_2
action_48 (7) = happyGoto action_6
action_48 (8) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 (13) = happyGoto action_10
action_48 (15) = happyGoto action_11
action_48 (16) = happyGoto action_12
action_48 (17) = happyGoto action_13
action_48 (18) = happyGoto action_14
action_48 (19) = happyGoto action_15
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (24) = happyShift action_16
action_49 (25) = happyShift action_3
action_49 (26) = happyShift action_4
action_49 (27) = happyShift action_17
action_49 (29) = happyShift action_18
action_49 (32) = happyShift action_19
action_49 (34) = happyShift action_20
action_49 (35) = happyShift action_21
action_49 (36) = happyShift action_22
action_49 (37) = happyShift action_23
action_49 (38) = happyShift action_24
action_49 (39) = happyShift action_25
action_49 (40) = happyShift action_26
action_49 (41) = happyShift action_27
action_49 (42) = happyShift action_28
action_49 (43) = happyShift action_29
action_49 (45) = happyShift action_30
action_49 (46) = happyShift action_31
action_49 (47) = happyShift action_32
action_49 (48) = happyShift action_33
action_49 (53) = happyShift action_34
action_49 (57) = happyShift action_35
action_49 (4) = happyGoto action_74
action_49 (6) = happyGoto action_2
action_49 (7) = happyGoto action_6
action_49 (8) = happyGoto action_7
action_49 (11) = happyGoto action_8
action_49 (12) = happyGoto action_9
action_49 (13) = happyGoto action_10
action_49 (15) = happyGoto action_11
action_49 (16) = happyGoto action_12
action_49 (17) = happyGoto action_13
action_49 (18) = happyGoto action_14
action_49 (19) = happyGoto action_15
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (56) = happyShift action_73
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_49

action_52 _ = happyReduce_29

action_53 _ = happyReduce_26

action_54 _ = happyReduce_10

action_55 _ = happyReduce_11

action_56 _ = happyReduce_25

action_57 (55) = happyShift action_72
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_12

action_59 _ = happyReduce_13

action_60 _ = happyReduce_14

action_61 _ = happyReduce_15

action_62 _ = happyReduce_16

action_63 _ = happyReduce_17

action_64 (50) = happyShift action_71
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_51

action_66 _ = happyReduce_24

action_67 (55) = happyShift action_70
action_67 _ = happyReduce_47

action_68 (50) = happyShift action_69
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_45

action_70 (24) = happyShift action_16
action_70 (25) = happyShift action_3
action_70 (26) = happyShift action_4
action_70 (27) = happyShift action_17
action_70 (29) = happyShift action_18
action_70 (32) = happyShift action_19
action_70 (34) = happyShift action_20
action_70 (35) = happyShift action_21
action_70 (36) = happyShift action_22
action_70 (37) = happyShift action_23
action_70 (38) = happyShift action_24
action_70 (39) = happyShift action_25
action_70 (40) = happyShift action_26
action_70 (41) = happyShift action_27
action_70 (42) = happyShift action_28
action_70 (43) = happyShift action_29
action_70 (45) = happyShift action_30
action_70 (46) = happyShift action_31
action_70 (47) = happyShift action_32
action_70 (48) = happyShift action_33
action_70 (53) = happyShift action_34
action_70 (57) = happyShift action_35
action_70 (5) = happyGoto action_53
action_70 (6) = happyGoto action_54
action_70 (7) = happyGoto action_55
action_70 (8) = happyGoto action_56
action_70 (10) = happyGoto action_83
action_70 (11) = happyGoto action_58
action_70 (12) = happyGoto action_59
action_70 (13) = happyGoto action_60
action_70 (15) = happyGoto action_61
action_70 (16) = happyGoto action_12
action_70 (17) = happyGoto action_62
action_70 (18) = happyGoto action_14
action_70 (19) = happyGoto action_63
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_23

action_72 (37) = happyShift action_23
action_72 (38) = happyShift action_24
action_72 (53) = happyShift action_34
action_72 (8) = happyGoto action_82
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (24) = happyShift action_16
action_73 (25) = happyShift action_3
action_73 (26) = happyShift action_4
action_73 (27) = happyShift action_17
action_73 (29) = happyShift action_18
action_73 (32) = happyShift action_19
action_73 (34) = happyShift action_20
action_73 (35) = happyShift action_21
action_73 (36) = happyShift action_22
action_73 (37) = happyShift action_23
action_73 (38) = happyShift action_24
action_73 (39) = happyShift action_25
action_73 (40) = happyShift action_26
action_73 (41) = happyShift action_27
action_73 (42) = happyShift action_28
action_73 (43) = happyShift action_29
action_73 (45) = happyShift action_30
action_73 (46) = happyShift action_31
action_73 (47) = happyShift action_32
action_73 (48) = happyShift action_33
action_73 (53) = happyShift action_34
action_73 (57) = happyShift action_35
action_73 (4) = happyGoto action_81
action_73 (6) = happyGoto action_2
action_73 (7) = happyGoto action_6
action_73 (8) = happyGoto action_7
action_73 (11) = happyGoto action_8
action_73 (12) = happyGoto action_9
action_73 (13) = happyGoto action_10
action_73 (15) = happyGoto action_11
action_73 (16) = happyGoto action_12
action_73 (17) = happyGoto action_13
action_73 (18) = happyGoto action_14
action_73 (19) = happyGoto action_15
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (31) = happyShift action_80
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (28) = happyShift action_79
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (24) = happyShift action_16
action_76 (25) = happyShift action_3
action_76 (26) = happyShift action_4
action_76 (27) = happyShift action_17
action_76 (29) = happyShift action_18
action_76 (32) = happyShift action_19
action_76 (34) = happyShift action_20
action_76 (35) = happyShift action_21
action_76 (36) = happyShift action_22
action_76 (37) = happyShift action_23
action_76 (38) = happyShift action_24
action_76 (39) = happyShift action_25
action_76 (40) = happyShift action_26
action_76 (41) = happyShift action_27
action_76 (42) = happyShift action_28
action_76 (43) = happyShift action_29
action_76 (45) = happyShift action_30
action_76 (46) = happyShift action_31
action_76 (47) = happyShift action_32
action_76 (48) = happyShift action_33
action_76 (53) = happyShift action_34
action_76 (57) = happyShift action_35
action_76 (4) = happyGoto action_78
action_76 (6) = happyGoto action_2
action_76 (7) = happyGoto action_6
action_76 (8) = happyGoto action_7
action_76 (11) = happyGoto action_8
action_76 (12) = happyGoto action_9
action_76 (13) = happyGoto action_10
action_76 (15) = happyGoto action_11
action_76 (16) = happyGoto action_12
action_76 (17) = happyGoto action_13
action_76 (18) = happyGoto action_14
action_76 (19) = happyGoto action_15
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_31

action_78 (50) = happyShift action_87
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (24) = happyShift action_16
action_79 (25) = happyShift action_3
action_79 (26) = happyShift action_4
action_79 (27) = happyShift action_17
action_79 (29) = happyShift action_18
action_79 (32) = happyShift action_19
action_79 (34) = happyShift action_20
action_79 (35) = happyShift action_21
action_79 (36) = happyShift action_22
action_79 (37) = happyShift action_23
action_79 (38) = happyShift action_24
action_79 (39) = happyShift action_25
action_79 (40) = happyShift action_26
action_79 (41) = happyShift action_27
action_79 (42) = happyShift action_28
action_79 (43) = happyShift action_29
action_79 (45) = happyShift action_30
action_79 (46) = happyShift action_31
action_79 (47) = happyShift action_32
action_79 (48) = happyShift action_33
action_79 (53) = happyShift action_34
action_79 (57) = happyShift action_35
action_79 (4) = happyGoto action_86
action_79 (6) = happyGoto action_2
action_79 (7) = happyGoto action_6
action_79 (8) = happyGoto action_7
action_79 (11) = happyGoto action_8
action_79 (12) = happyGoto action_9
action_79 (13) = happyGoto action_10
action_79 (15) = happyGoto action_11
action_79 (16) = happyGoto action_12
action_79 (17) = happyGoto action_13
action_79 (18) = happyGoto action_14
action_79 (19) = happyGoto action_15
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (24) = happyShift action_16
action_80 (25) = happyShift action_3
action_80 (26) = happyShift action_4
action_80 (27) = happyShift action_17
action_80 (29) = happyShift action_18
action_80 (32) = happyShift action_19
action_80 (34) = happyShift action_20
action_80 (35) = happyShift action_21
action_80 (36) = happyShift action_22
action_80 (37) = happyShift action_23
action_80 (38) = happyShift action_24
action_80 (39) = happyShift action_25
action_80 (40) = happyShift action_26
action_80 (41) = happyShift action_27
action_80 (42) = happyShift action_28
action_80 (43) = happyShift action_29
action_80 (45) = happyShift action_30
action_80 (46) = happyShift action_31
action_80 (47) = happyShift action_32
action_80 (48) = happyShift action_33
action_80 (53) = happyShift action_34
action_80 (57) = happyShift action_35
action_80 (4) = happyGoto action_85
action_80 (6) = happyGoto action_2
action_80 (7) = happyGoto action_6
action_80 (8) = happyGoto action_7
action_80 (11) = happyGoto action_8
action_80 (12) = happyGoto action_9
action_80 (13) = happyGoto action_10
action_80 (15) = happyGoto action_11
action_80 (16) = happyGoto action_12
action_80 (17) = happyGoto action_13
action_80 (18) = happyGoto action_14
action_80 (19) = happyGoto action_15
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_30

action_82 (50) = happyShift action_84
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_52

action_84 _ = happyReduce_22

action_85 _ = happyReduce_28

action_86 _ = happyReduce_27

action_87 _ = happyReduce_35

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
happyReduction_8 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  4 happyReduction_9
happyReduction_9 (HappyAbsSyn19  happy_var_1)
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
happyReduction_13 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.IfExpr happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  5 happyReduction_14
happyReduction_14 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (AST.CondExpr happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyAbsSyn19  happy_var_1)
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
happyReduction_24 (HappyAbsSyn21  happy_var_1)
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

happyReduce_27 = happyReduce 6 11 happyReduction_27
happyReduction_27 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (AST.Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 6 12 happyReduction_28
happyReduction_28 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AST.If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (AST.Cond happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn14
		 ((happy_var_1,  happy_var_3)
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 15 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AST.UnOpExpr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn16
		 (AST.Not
	)

happyReduce_33 = happySpecReduce_1  16 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn16
		 (AST.IsZero
	)

happyReduce_34 = happySpecReduce_1  16 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn16
		 (AST.Negate
	)

happyReduce_35 = happyReduce 6 17 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.BinOpExpr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  18 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn18
		 (AST.And
	)

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn18
		 (AST.Or
	)

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn18
		 (AST.Plus
	)

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn18
		 (AST.Minus
	)

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn18
		 (AST.Times
	)

happyReduce_41 = happySpecReduce_1  18 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn18
		 (AST.Div
	)

happyReduce_42 = happySpecReduce_1  18 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn18
		 (AST.Eq
	)

happyReduce_43 = happySpecReduce_1  18 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn18
		 (AST.Gt
	)

happyReduce_44 = happySpecReduce_1  18 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn18
		 (AST.Lt
	)

happyReduce_45 = happyReduce 4 19 happyReduction_45
happyReduction_45 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AST.PrintEffect happy_var_3
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_1  20 happyReduction_46
happyReduction_46 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (reverse happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  21 happyReduction_47
happyReduction_47 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn21
		 (reverse happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_0  22 happyReduction_48
happyReduction_48  =  HappyAbsSyn22
		 ([]
	)

happyReduce_49 = happySpecReduce_2  22 happyReduction_49
happyReduction_49 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_2 : happy_var_1
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  23 happyReduction_50
happyReduction_50  =  HappyAbsSyn23
		 ([]
	)

happyReduce_51 = happySpecReduce_1  23 happyReduction_51
happyReduction_51 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn23
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  23 happyReduction_52
happyReduction_52 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_3 : happy_var_1
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 58 58 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 24;
	TokenInt happy_dollar_dollar -> cont 25;
	TokenBoolean happy_dollar_dollar -> cont 26;
	TokenLet -> cont 27;
	TokenIn -> cont 28;
	TokenIf -> cont 29;
	TokenThen -> cont 30;
	TokenElse -> cont 31;
	TokenCond -> cont 32;
	TokenEnd -> cont 33;
	TokenIsZero -> cont 34;
	TokenNegate -> cont 35;
	TokenNot -> cont 36;
	TokenCons -> cont 37;
	TokenList -> cont 38;
	TokenBoolAnd -> cont 39;
	TokenBoolOr -> cont 40;
	TokenBoolEq -> cont 41;
	TokenBoolGt -> cont 42;
	TokenBoolLt -> cont 43;
	TokenEq -> cont 44;
	TokenPlus -> cont 45;
	TokenMinus -> cont 46;
	TokenTimes -> cont 47;
	TokenDiv -> cont 48;
	TokenOP -> cont 49;
	TokenCP -> cont 50;
	TokenOB -> cont 51;
	TokenCB -> cont 52;
	TokenOS -> cont 53;
	TokenCS -> cont 54;
	TokenComma -> cont 55;
	TokenLongArrow -> cont 56;
	TokenPrint -> cont 57;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 58 tk tks = happyError' (tks, explist)
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
