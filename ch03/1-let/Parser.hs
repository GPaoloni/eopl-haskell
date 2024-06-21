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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,272) ([0,19392,31743,8,32768,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19392,31743,8,0,0,0,0,0,32768,0,0,0,0,0,64,0,0,49152,65355,2171,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,49152,65355,2171,0,19392,31743,8,0,128,0,0,19392,31743,8,0,16,0,0,0,1024,0,49152,65355,2171,0,0,0,0,0,0,8192,0,19392,31743,8,49152,65355,2171,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,32,49152,65355,2171,0,0,0,0,0,6144,2048,0,19392,31743,8,0,32,0,0,1024,0,0,49152,65355,2171,0,0,0,1,49152,65355,2171,0,19392,31743,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_calc","Expr","NonListExpr","Literal","Variable","List","SyntaxSugarList","ListNode","LetExpr","IfExpr","CondExpr","CondExprRule","UnOp","UnOpOp","BinOp","BinOpOp","many__CondExprRule__","sepBy__ListNode__','__","many_rev__CondExprRule__","sepBy_rev__ListNode__','__","var","int","boolean","let","in","if","then","else","cond","end","isZero","minus","not","cons","list","and","or","\"==\"","'>'","'<'","'='","'+'","'-'","'*'","'/'","'('","')'","'{'","'}'","'['","']'","','","\"==>\"","%eof"]
        bit_start = st Prelude.* 56
        bit_end = (st Prelude.+ 1) Prelude.* 56
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..55]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (23) = happyShift action_15
action_0 (24) = happyShift action_3
action_0 (25) = happyShift action_4
action_0 (26) = happyShift action_16
action_0 (28) = happyShift action_17
action_0 (31) = happyShift action_18
action_0 (33) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (38) = happyShift action_24
action_0 (39) = happyShift action_25
action_0 (40) = happyShift action_26
action_0 (41) = happyShift action_27
action_0 (42) = happyShift action_28
action_0 (44) = happyShift action_29
action_0 (45) = happyShift action_30
action_0 (46) = happyShift action_31
action_0 (47) = happyShift action_32
action_0 (52) = happyShift action_33
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
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (24) = happyShift action_3
action_1 (25) = happyShift action_4
action_1 (6) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_16

action_4 _ = happyReduce_17

action_5 (56) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 _ = happyReduce_3

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_6

action_11 _ = happyReduce_7

action_12 (23) = happyShift action_15
action_12 (24) = happyShift action_3
action_12 (25) = happyShift action_4
action_12 (26) = happyShift action_16
action_12 (28) = happyShift action_17
action_12 (31) = happyShift action_18
action_12 (33) = happyShift action_19
action_12 (34) = happyShift action_20
action_12 (35) = happyShift action_21
action_12 (36) = happyShift action_22
action_12 (37) = happyShift action_23
action_12 (38) = happyShift action_24
action_12 (39) = happyShift action_25
action_12 (40) = happyShift action_26
action_12 (41) = happyShift action_27
action_12 (42) = happyShift action_28
action_12 (44) = happyShift action_29
action_12 (45) = happyShift action_30
action_12 (46) = happyShift action_31
action_12 (47) = happyShift action_32
action_12 (52) = happyShift action_33
action_12 (4) = happyGoto action_42
action_12 (6) = happyGoto action_2
action_12 (7) = happyGoto action_6
action_12 (8) = happyGoto action_7
action_12 (11) = happyGoto action_8
action_12 (12) = happyGoto action_9
action_12 (13) = happyGoto action_10
action_12 (15) = happyGoto action_11
action_12 (16) = happyGoto action_12
action_12 (17) = happyGoto action_13
action_12 (18) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_8

action_14 (48) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_18

action_16 (23) = happyShift action_40
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (23) = happyShift action_15
action_17 (24) = happyShift action_3
action_17 (25) = happyShift action_4
action_17 (26) = happyShift action_16
action_17 (28) = happyShift action_17
action_17 (31) = happyShift action_18
action_17 (33) = happyShift action_19
action_17 (34) = happyShift action_20
action_17 (35) = happyShift action_21
action_17 (36) = happyShift action_22
action_17 (37) = happyShift action_23
action_17 (38) = happyShift action_24
action_17 (39) = happyShift action_25
action_17 (40) = happyShift action_26
action_17 (41) = happyShift action_27
action_17 (42) = happyShift action_28
action_17 (44) = happyShift action_29
action_17 (45) = happyShift action_30
action_17 (46) = happyShift action_31
action_17 (47) = happyShift action_32
action_17 (52) = happyShift action_33
action_17 (4) = happyGoto action_39
action_17 (6) = happyGoto action_2
action_17 (7) = happyGoto action_6
action_17 (8) = happyGoto action_7
action_17 (11) = happyGoto action_8
action_17 (12) = happyGoto action_9
action_17 (13) = happyGoto action_10
action_17 (15) = happyGoto action_11
action_17 (16) = happyGoto action_12
action_17 (17) = happyGoto action_13
action_17 (18) = happyGoto action_14
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (19) = happyGoto action_37
action_18 (21) = happyGoto action_38
action_18 _ = happyReduce_46

action_19 _ = happyReduce_31

action_20 _ = happyReduce_32

action_21 _ = happyReduce_30

action_22 (48) = happyShift action_36
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (48) = happyShift action_35
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_35

action_25 _ = happyReduce_36

action_26 _ = happyReduce_41

action_27 _ = happyReduce_42

action_28 _ = happyReduce_43

action_29 _ = happyReduce_37

action_30 (48) = happyReduce_38
action_30 _ = happyReduce_33

action_31 _ = happyReduce_39

action_32 _ = happyReduce_40

action_33 (53) = happyShift action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_19

action_35 (23) = happyShift action_15
action_35 (24) = happyShift action_3
action_35 (25) = happyShift action_4
action_35 (26) = happyShift action_16
action_35 (28) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (33) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (35) = happyShift action_21
action_35 (36) = happyShift action_22
action_35 (37) = happyShift action_23
action_35 (38) = happyShift action_24
action_35 (39) = happyShift action_25
action_35 (40) = happyShift action_26
action_35 (41) = happyShift action_27
action_35 (42) = happyShift action_28
action_35 (44) = happyShift action_29
action_35 (45) = happyShift action_30
action_35 (46) = happyShift action_31
action_35 (47) = happyShift action_32
action_35 (52) = happyShift action_33
action_35 (5) = happyGoto action_49
action_35 (6) = happyGoto action_50
action_35 (7) = happyGoto action_51
action_35 (8) = happyGoto action_52
action_35 (9) = happyGoto action_59
action_35 (10) = happyGoto action_60
action_35 (11) = happyGoto action_54
action_35 (12) = happyGoto action_55
action_35 (13) = happyGoto action_56
action_35 (15) = happyGoto action_57
action_35 (16) = happyGoto action_12
action_35 (17) = happyGoto action_58
action_35 (18) = happyGoto action_14
action_35 (20) = happyGoto action_61
action_35 (22) = happyGoto action_62
action_35 _ = happyReduce_48

action_36 (23) = happyShift action_15
action_36 (24) = happyShift action_3
action_36 (25) = happyShift action_4
action_36 (26) = happyShift action_16
action_36 (28) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (33) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (35) = happyShift action_21
action_36 (36) = happyShift action_22
action_36 (37) = happyShift action_23
action_36 (38) = happyShift action_24
action_36 (39) = happyShift action_25
action_36 (40) = happyShift action_26
action_36 (41) = happyShift action_27
action_36 (42) = happyShift action_28
action_36 (44) = happyShift action_29
action_36 (45) = happyShift action_30
action_36 (46) = happyShift action_31
action_36 (47) = happyShift action_32
action_36 (52) = happyShift action_33
action_36 (5) = happyGoto action_49
action_36 (6) = happyGoto action_50
action_36 (7) = happyGoto action_51
action_36 (8) = happyGoto action_52
action_36 (10) = happyGoto action_53
action_36 (11) = happyGoto action_54
action_36 (12) = happyGoto action_55
action_36 (13) = happyGoto action_56
action_36 (15) = happyGoto action_57
action_36 (16) = happyGoto action_12
action_36 (17) = happyGoto action_58
action_36 (18) = happyGoto action_14
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (32) = happyShift action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_15
action_38 (24) = happyShift action_3
action_38 (25) = happyShift action_4
action_38 (26) = happyShift action_16
action_38 (28) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (33) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (35) = happyShift action_21
action_38 (36) = happyShift action_22
action_38 (37) = happyShift action_23
action_38 (38) = happyShift action_24
action_38 (39) = happyShift action_25
action_38 (40) = happyShift action_26
action_38 (41) = happyShift action_27
action_38 (42) = happyShift action_28
action_38 (44) = happyShift action_29
action_38 (45) = happyShift action_30
action_38 (46) = happyShift action_31
action_38 (47) = happyShift action_32
action_38 (52) = happyShift action_33
action_38 (4) = happyGoto action_46
action_38 (6) = happyGoto action_2
action_38 (7) = happyGoto action_6
action_38 (8) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 (12) = happyGoto action_9
action_38 (13) = happyGoto action_10
action_38 (14) = happyGoto action_47
action_38 (15) = happyGoto action_11
action_38 (16) = happyGoto action_12
action_38 (17) = happyGoto action_13
action_38 (18) = happyGoto action_14
action_38 _ = happyReduce_44

action_39 (29) = happyShift action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (43) = happyShift action_44
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_15
action_41 (24) = happyShift action_3
action_41 (25) = happyShift action_4
action_41 (26) = happyShift action_16
action_41 (28) = happyShift action_17
action_41 (31) = happyShift action_18
action_41 (33) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (35) = happyShift action_21
action_41 (36) = happyShift action_22
action_41 (37) = happyShift action_23
action_41 (38) = happyShift action_24
action_41 (39) = happyShift action_25
action_41 (40) = happyShift action_26
action_41 (41) = happyShift action_27
action_41 (42) = happyShift action_28
action_41 (44) = happyShift action_29
action_41 (45) = happyShift action_30
action_41 (46) = happyShift action_31
action_41 (47) = happyShift action_32
action_41 (52) = happyShift action_33
action_41 (4) = happyGoto action_43
action_41 (6) = happyGoto action_2
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (11) = happyGoto action_8
action_41 (12) = happyGoto action_9
action_41 (13) = happyGoto action_10
action_41 (15) = happyGoto action_11
action_41 (16) = happyGoto action_12
action_41 (17) = happyGoto action_13
action_41 (18) = happyGoto action_14
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_29

action_43 (54) = happyShift action_69
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (23) = happyShift action_15
action_44 (24) = happyShift action_3
action_44 (25) = happyShift action_4
action_44 (26) = happyShift action_16
action_44 (28) = happyShift action_17
action_44 (31) = happyShift action_18
action_44 (33) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (35) = happyShift action_21
action_44 (36) = happyShift action_22
action_44 (37) = happyShift action_23
action_44 (38) = happyShift action_24
action_44 (39) = happyShift action_25
action_44 (40) = happyShift action_26
action_44 (41) = happyShift action_27
action_44 (42) = happyShift action_28
action_44 (44) = happyShift action_29
action_44 (45) = happyShift action_30
action_44 (46) = happyShift action_31
action_44 (47) = happyShift action_32
action_44 (52) = happyShift action_33
action_44 (4) = happyGoto action_68
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
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (23) = happyShift action_15
action_45 (24) = happyShift action_3
action_45 (25) = happyShift action_4
action_45 (26) = happyShift action_16
action_45 (28) = happyShift action_17
action_45 (31) = happyShift action_18
action_45 (33) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (35) = happyShift action_21
action_45 (36) = happyShift action_22
action_45 (37) = happyShift action_23
action_45 (38) = happyShift action_24
action_45 (39) = happyShift action_25
action_45 (40) = happyShift action_26
action_45 (41) = happyShift action_27
action_45 (42) = happyShift action_28
action_45 (44) = happyShift action_29
action_45 (45) = happyShift action_30
action_45 (46) = happyShift action_31
action_45 (47) = happyShift action_32
action_45 (52) = happyShift action_33
action_45 (4) = happyGoto action_67
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
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (55) = happyShift action_66
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_47

action_48 _ = happyReduce_27

action_49 _ = happyReduce_24

action_50 _ = happyReduce_9

action_51 _ = happyReduce_10

action_52 _ = happyReduce_23

action_53 (54) = happyShift action_65
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_11

action_55 _ = happyReduce_12

action_56 _ = happyReduce_13

action_57 _ = happyReduce_14

action_58 _ = happyReduce_15

action_59 (49) = happyShift action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_49

action_61 _ = happyReduce_22

action_62 (54) = happyShift action_63
action_62 _ = happyReduce_45

action_63 (23) = happyShift action_15
action_63 (24) = happyShift action_3
action_63 (25) = happyShift action_4
action_63 (26) = happyShift action_16
action_63 (28) = happyShift action_17
action_63 (31) = happyShift action_18
action_63 (33) = happyShift action_19
action_63 (34) = happyShift action_20
action_63 (35) = happyShift action_21
action_63 (36) = happyShift action_22
action_63 (37) = happyShift action_23
action_63 (38) = happyShift action_24
action_63 (39) = happyShift action_25
action_63 (40) = happyShift action_26
action_63 (41) = happyShift action_27
action_63 (42) = happyShift action_28
action_63 (44) = happyShift action_29
action_63 (45) = happyShift action_30
action_63 (46) = happyShift action_31
action_63 (47) = happyShift action_32
action_63 (52) = happyShift action_33
action_63 (5) = happyGoto action_49
action_63 (6) = happyGoto action_50
action_63 (7) = happyGoto action_51
action_63 (8) = happyGoto action_52
action_63 (10) = happyGoto action_75
action_63 (11) = happyGoto action_54
action_63 (12) = happyGoto action_55
action_63 (13) = happyGoto action_56
action_63 (15) = happyGoto action_57
action_63 (16) = happyGoto action_12
action_63 (17) = happyGoto action_58
action_63 (18) = happyGoto action_14
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_21

action_65 (36) = happyShift action_22
action_65 (37) = happyShift action_23
action_65 (52) = happyShift action_33
action_65 (8) = happyGoto action_74
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (23) = happyShift action_15
action_66 (24) = happyShift action_3
action_66 (25) = happyShift action_4
action_66 (26) = happyShift action_16
action_66 (28) = happyShift action_17
action_66 (31) = happyShift action_18
action_66 (33) = happyShift action_19
action_66 (34) = happyShift action_20
action_66 (35) = happyShift action_21
action_66 (36) = happyShift action_22
action_66 (37) = happyShift action_23
action_66 (38) = happyShift action_24
action_66 (39) = happyShift action_25
action_66 (40) = happyShift action_26
action_66 (41) = happyShift action_27
action_66 (42) = happyShift action_28
action_66 (44) = happyShift action_29
action_66 (45) = happyShift action_30
action_66 (46) = happyShift action_31
action_66 (47) = happyShift action_32
action_66 (52) = happyShift action_33
action_66 (4) = happyGoto action_73
action_66 (6) = happyGoto action_2
action_66 (7) = happyGoto action_6
action_66 (8) = happyGoto action_7
action_66 (11) = happyGoto action_8
action_66 (12) = happyGoto action_9
action_66 (13) = happyGoto action_10
action_66 (15) = happyGoto action_11
action_66 (16) = happyGoto action_12
action_66 (17) = happyGoto action_13
action_66 (18) = happyGoto action_14
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (30) = happyShift action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (27) = happyShift action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (23) = happyShift action_15
action_69 (24) = happyShift action_3
action_69 (25) = happyShift action_4
action_69 (26) = happyShift action_16
action_69 (28) = happyShift action_17
action_69 (31) = happyShift action_18
action_69 (33) = happyShift action_19
action_69 (34) = happyShift action_20
action_69 (35) = happyShift action_21
action_69 (36) = happyShift action_22
action_69 (37) = happyShift action_23
action_69 (38) = happyShift action_24
action_69 (39) = happyShift action_25
action_69 (40) = happyShift action_26
action_69 (41) = happyShift action_27
action_69 (42) = happyShift action_28
action_69 (44) = happyShift action_29
action_69 (45) = happyShift action_30
action_69 (46) = happyShift action_31
action_69 (47) = happyShift action_32
action_69 (52) = happyShift action_33
action_69 (4) = happyGoto action_70
action_69 (6) = happyGoto action_2
action_69 (7) = happyGoto action_6
action_69 (8) = happyGoto action_7
action_69 (11) = happyGoto action_8
action_69 (12) = happyGoto action_9
action_69 (13) = happyGoto action_10
action_69 (15) = happyGoto action_11
action_69 (16) = happyGoto action_12
action_69 (17) = happyGoto action_13
action_69 (18) = happyGoto action_14
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (49) = happyShift action_79
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (23) = happyShift action_15
action_71 (24) = happyShift action_3
action_71 (25) = happyShift action_4
action_71 (26) = happyShift action_16
action_71 (28) = happyShift action_17
action_71 (31) = happyShift action_18
action_71 (33) = happyShift action_19
action_71 (34) = happyShift action_20
action_71 (35) = happyShift action_21
action_71 (36) = happyShift action_22
action_71 (37) = happyShift action_23
action_71 (38) = happyShift action_24
action_71 (39) = happyShift action_25
action_71 (40) = happyShift action_26
action_71 (41) = happyShift action_27
action_71 (42) = happyShift action_28
action_71 (44) = happyShift action_29
action_71 (45) = happyShift action_30
action_71 (46) = happyShift action_31
action_71 (47) = happyShift action_32
action_71 (52) = happyShift action_33
action_71 (4) = happyGoto action_78
action_71 (6) = happyGoto action_2
action_71 (7) = happyGoto action_6
action_71 (8) = happyGoto action_7
action_71 (11) = happyGoto action_8
action_71 (12) = happyGoto action_9
action_71 (13) = happyGoto action_10
action_71 (15) = happyGoto action_11
action_71 (16) = happyGoto action_12
action_71 (17) = happyGoto action_13
action_71 (18) = happyGoto action_14
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (23) = happyShift action_15
action_72 (24) = happyShift action_3
action_72 (25) = happyShift action_4
action_72 (26) = happyShift action_16
action_72 (28) = happyShift action_17
action_72 (31) = happyShift action_18
action_72 (33) = happyShift action_19
action_72 (34) = happyShift action_20
action_72 (35) = happyShift action_21
action_72 (36) = happyShift action_22
action_72 (37) = happyShift action_23
action_72 (38) = happyShift action_24
action_72 (39) = happyShift action_25
action_72 (40) = happyShift action_26
action_72 (41) = happyShift action_27
action_72 (42) = happyShift action_28
action_72 (44) = happyShift action_29
action_72 (45) = happyShift action_30
action_72 (46) = happyShift action_31
action_72 (47) = happyShift action_32
action_72 (52) = happyShift action_33
action_72 (4) = happyGoto action_77
action_72 (6) = happyGoto action_2
action_72 (7) = happyGoto action_6
action_72 (8) = happyGoto action_7
action_72 (11) = happyGoto action_8
action_72 (12) = happyGoto action_9
action_72 (13) = happyGoto action_10
action_72 (15) = happyGoto action_11
action_72 (16) = happyGoto action_12
action_72 (17) = happyGoto action_13
action_72 (18) = happyGoto action_14
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_28

action_74 (49) = happyShift action_76
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_50

action_76 _ = happyReduce_20

action_77 _ = happyReduce_26

action_78 _ = happyReduce_25

action_79 _ = happyReduce_34

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
happyReduction_8 (HappyAbsSyn17  happy_var_1)
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
happyReduction_15 (HappyAbsSyn17  happy_var_1)
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
happyReduction_22 (HappyAbsSyn20  happy_var_1)
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
	(HappyAbsSyn19  happy_var_2)
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

happyReduce_29 = happySpecReduce_2  15 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (AST.UnOpExpr happy_var_1 happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  16 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn16
		 (AST.Not
	)

happyReduce_31 = happySpecReduce_1  16 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn16
		 (AST.IsZero
	)

happyReduce_32 = happySpecReduce_1  16 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn16
		 (AST.Negate
	)

happyReduce_33 = happySpecReduce_1  16 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn16
		 (AST.Negate
	)

happyReduce_34 = happyReduce 6 17 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AST.BinOpExpr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  18 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn18
		 (AST.And
	)

happyReduce_36 = happySpecReduce_1  18 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn18
		 (AST.Or
	)

happyReduce_37 = happySpecReduce_1  18 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn18
		 (AST.Plus
	)

happyReduce_38 = happySpecReduce_1  18 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn18
		 (AST.Minus
	)

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn18
		 (AST.Times
	)

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn18
		 (AST.Div
	)

happyReduce_41 = happySpecReduce_1  18 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn18
		 (AST.Eq
	)

happyReduce_42 = happySpecReduce_1  18 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn18
		 (AST.Gt
	)

happyReduce_43 = happySpecReduce_1  18 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn18
		 (AST.Lt
	)

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn19
		 (reverse happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  20 happyReduction_45
happyReduction_45 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (reverse happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_0  21 happyReduction_46
happyReduction_46  =  HappyAbsSyn21
		 ([]
	)

happyReduce_47 = happySpecReduce_2  21 happyReduction_47
happyReduction_47 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_2 : happy_var_1
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_0  22 happyReduction_48
happyReduction_48  =  HappyAbsSyn22
		 ([]
	)

happyReduce_49 = happySpecReduce_1  22 happyReduction_49
happyReduction_49 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn22
		 ([happy_var_1]
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  22 happyReduction_50
happyReduction_50 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_3 : happy_var_1
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenVar happy_dollar_dollar -> cont 23;
	TokenInt happy_dollar_dollar -> cont 24;
	TokenBoolean happy_dollar_dollar -> cont 25;
	TokenLet -> cont 26;
	TokenIn -> cont 27;
	TokenIf -> cont 28;
	TokenThen -> cont 29;
	TokenElse -> cont 30;
	TokenCond -> cont 31;
	TokenEnd -> cont 32;
	TokenIsZero -> cont 33;
	TokenNegate -> cont 34;
	TokenNot -> cont 35;
	TokenCons -> cont 36;
	TokenList -> cont 37;
	TokenBoolAnd -> cont 38;
	TokenBoolOr -> cont 39;
	TokenBoolEq -> cont 40;
	TokenBoolGt -> cont 41;
	TokenBoolLt -> cont 42;
	TokenEq -> cont 43;
	TokenPlus -> cont 44;
	TokenMinus -> cont 45;
	TokenTimes -> cont 46;
	TokenDiv -> cont 47;
	TokenOP -> cont 48;
	TokenCP -> cont 49;
	TokenOB -> cont 50;
	TokenCB -> cont 51;
	TokenOS -> cont 52;
	TokenCS -> cont 53;
	TokenComma -> cont 54;
	TokenLongArrow -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
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
