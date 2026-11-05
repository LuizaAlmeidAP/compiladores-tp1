{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,212) ([4096,0,0,0,16,0,0,0,2048,0,0,0,0,0,0,2048,0,0,0,0,512,0,0,0,2,32,0,0,24576,0,0,0,0,8,0,16384,2153,0,0,128,0,0,0,0,0,2,26944,8,0,0,63488,9,16,0,2552,4096,0,0,0,16,0,0,4096,0,0,0,1,64,0,0,0,2048,0,0,0,0,16384,0,0,0,8,0,8,0,0,1920,0,0,0,0,0,16384,2153,0,0,0,2552,4096,0,63488,9,16,0,8,0,0,0,65520,0,4096,1536,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,9,16,0,2552,4096,0,2,6,0,128,0,0,16384,2153,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,26944,8,0,0,63488,9,16,0,2552,4096,0,0,65520,32,0,1536,8192,0,0,0,0,26944,8,0,0,30720,0,16,0,120,4096,0,30720,0,16,0,120,4096,0,30720,0,16,0,120,4096,0,30720,0,16,0,120,4096,0,30720,0,16,0,120,4096,0,30720,0,16,0,120,4096,0,0,0,32,0,61440,8447,0,0,6,32,0,61440,255,0,0,6,0,128,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30720,0,16,0,0,0,0,0,0,0,0,0,0,0,0,61440,0,0,0,240,0,0,64512,0,0,0,252,0,0,64512,0,0,0,252,0,0,64512,0,0,0,252,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,1024,0,0,16384,2153,0,0,0,0,8444,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Declrs","Declr","VarList","Type","Body","Stmt","Exp","ExpBool","program","var","begin","end","if","then","else","while","do","read","write","typeInt","typeBool","typeReal","typeStr","id","int","real","str","true","false","and","or","not","'='","'<>'","'<'","'>'","'<='","'>='","'+'","'-'","'*'","'/'","div","mod","':='","';'","'.'","','","'('","')'","':'","%eof"]
        bit_start = st Prelude.* 56
        bit_end = (st Prelude.+ 1) Prelude.* 56
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..55]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (13) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (13) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (28) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (56) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (28) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (50) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (50) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (14) = happyShift action_9
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (14) = happyShift action_9
action_8 (15) = happyShift action_10
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (28) = happyShift action_22
action_9 (5) = happyGoto action_19
action_9 (6) = happyGoto action_20
action_9 (7) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (15) = happyShift action_13
action_10 (17) = happyShift action_14
action_10 (20) = happyShift action_15
action_10 (22) = happyShift action_16
action_10 (23) = happyShift action_17
action_10 (28) = happyShift action_18
action_10 (9) = happyGoto action_11
action_10 (10) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (16) = happyShift action_43
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (50) = happyShift action_42
action_12 _ = happyReduce_12

action_13 (15) = happyShift action_13
action_13 (17) = happyShift action_14
action_13 (20) = happyShift action_15
action_13 (22) = happyShift action_16
action_13 (23) = happyShift action_17
action_13 (28) = happyShift action_18
action_13 (9) = happyGoto action_41
action_13 (10) = happyGoto action_12
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (28) = happyShift action_32
action_14 (29) = happyShift action_33
action_14 (30) = happyShift action_34
action_14 (31) = happyShift action_35
action_14 (32) = happyShift action_36
action_14 (33) = happyShift action_37
action_14 (36) = happyShift action_38
action_14 (53) = happyShift action_39
action_14 (11) = happyGoto action_30
action_14 (12) = happyGoto action_40
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (28) = happyShift action_32
action_15 (29) = happyShift action_33
action_15 (30) = happyShift action_34
action_15 (31) = happyShift action_35
action_15 (32) = happyShift action_36
action_15 (33) = happyShift action_37
action_15 (36) = happyShift action_38
action_15 (53) = happyShift action_39
action_15 (11) = happyGoto action_30
action_15 (12) = happyGoto action_31
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (53) = happyShift action_29
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (53) = happyShift action_28
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (49) = happyShift action_27
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (15) = happyShift action_26
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (28) = happyShift action_22
action_20 (5) = happyGoto action_25
action_20 (6) = happyGoto action_20
action_20 (7) = happyGoto action_21
action_20 _ = happyReduce_3

action_21 (55) = happyShift action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (52) = happyShift action_23
action_22 _ = happyReduce_6

action_23 (28) = happyShift action_22
action_23 (7) = happyGoto action_77
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (24) = happyShift action_73
action_24 (25) = happyShift action_74
action_24 (26) = happyShift action_75
action_24 (27) = happyShift action_76
action_24 (8) = happyGoto action_72
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_4

action_26 (15) = happyShift action_13
action_26 (17) = happyShift action_14
action_26 (20) = happyShift action_15
action_26 (22) = happyShift action_16
action_26 (23) = happyShift action_17
action_26 (28) = happyShift action_18
action_26 (9) = happyGoto action_71
action_26 (10) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (28) = happyShift action_32
action_27 (29) = happyShift action_33
action_27 (30) = happyShift action_34
action_27 (31) = happyShift action_35
action_27 (32) = happyShift action_36
action_27 (33) = happyShift action_37
action_27 (36) = happyShift action_38
action_27 (53) = happyShift action_39
action_27 (11) = happyGoto action_69
action_27 (12) = happyGoto action_70
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_32
action_28 (29) = happyShift action_33
action_28 (30) = happyShift action_34
action_28 (31) = happyShift action_35
action_28 (32) = happyShift action_36
action_28 (33) = happyShift action_37
action_28 (36) = happyShift action_38
action_28 (53) = happyShift action_39
action_28 (11) = happyGoto action_67
action_28 (12) = happyGoto action_68
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (28) = happyShift action_66
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (37) = happyShift action_54
action_30 (38) = happyShift action_55
action_30 (39) = happyShift action_56
action_30 (40) = happyShift action_57
action_30 (41) = happyShift action_58
action_30 (42) = happyShift action_59
action_30 (43) = happyShift action_60
action_30 (44) = happyShift action_61
action_30 (45) = happyShift action_62
action_30 (46) = happyShift action_63
action_30 (47) = happyShift action_64
action_30 (48) = happyShift action_65
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (21) = happyShift action_53
action_31 (34) = happyShift action_48
action_31 (35) = happyShift action_49
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_24

action_33 _ = happyReduce_25

action_34 _ = happyReduce_26

action_35 _ = happyReduce_27

action_36 _ = happyReduce_35

action_37 _ = happyReduce_36

action_38 (28) = happyShift action_32
action_38 (29) = happyShift action_33
action_38 (30) = happyShift action_34
action_38 (31) = happyShift action_35
action_38 (32) = happyShift action_36
action_38 (33) = happyShift action_37
action_38 (36) = happyShift action_38
action_38 (53) = happyShift action_39
action_38 (11) = happyGoto action_30
action_38 (12) = happyGoto action_52
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_32
action_39 (29) = happyShift action_33
action_39 (30) = happyShift action_34
action_39 (31) = happyShift action_35
action_39 (32) = happyShift action_36
action_39 (33) = happyShift action_37
action_39 (36) = happyShift action_38
action_39 (53) = happyShift action_39
action_39 (11) = happyGoto action_50
action_39 (12) = happyGoto action_51
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (18) = happyShift action_47
action_40 (34) = happyShift action_48
action_40 (35) = happyShift action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_46
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_13
action_42 (17) = happyShift action_14
action_42 (20) = happyShift action_15
action_42 (22) = happyShift action_16
action_42 (23) = happyShift action_17
action_42 (28) = happyShift action_18
action_42 (9) = happyGoto action_45
action_42 (10) = happyGoto action_12
action_42 _ = happyReduce_13

action_43 (51) = happyShift action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_2

action_45 _ = happyReduce_14

action_46 _ = happyReduce_23

action_47 (15) = happyShift action_13
action_47 (17) = happyShift action_14
action_47 (20) = happyShift action_15
action_47 (22) = happyShift action_16
action_47 (23) = happyShift action_17
action_47 (28) = happyShift action_18
action_47 (10) = happyGoto action_101
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (28) = happyShift action_32
action_48 (29) = happyShift action_33
action_48 (30) = happyShift action_34
action_48 (31) = happyShift action_35
action_48 (32) = happyShift action_36
action_48 (33) = happyShift action_37
action_48 (36) = happyShift action_38
action_48 (53) = happyShift action_39
action_48 (11) = happyGoto action_30
action_48 (12) = happyGoto action_100
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (28) = happyShift action_32
action_49 (29) = happyShift action_33
action_49 (30) = happyShift action_34
action_49 (31) = happyShift action_35
action_49 (32) = happyShift action_36
action_49 (33) = happyShift action_37
action_49 (36) = happyShift action_38
action_49 (53) = happyShift action_39
action_49 (11) = happyGoto action_30
action_49 (12) = happyGoto action_99
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (37) = happyShift action_54
action_50 (38) = happyShift action_55
action_50 (39) = happyShift action_56
action_50 (40) = happyShift action_57
action_50 (41) = happyShift action_58
action_50 (42) = happyShift action_59
action_50 (43) = happyShift action_60
action_50 (44) = happyShift action_61
action_50 (45) = happyShift action_62
action_50 (46) = happyShift action_63
action_50 (47) = happyShift action_64
action_50 (48) = happyShift action_65
action_50 (54) = happyShift action_98
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (34) = happyShift action_48
action_51 (35) = happyShift action_49
action_51 (54) = happyShift action_97
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_46

action_53 (15) = happyShift action_13
action_53 (17) = happyShift action_14
action_53 (20) = happyShift action_15
action_53 (22) = happyShift action_16
action_53 (23) = happyShift action_17
action_53 (28) = happyShift action_18
action_53 (10) = happyGoto action_96
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (28) = happyShift action_32
action_54 (29) = happyShift action_33
action_54 (30) = happyShift action_34
action_54 (31) = happyShift action_35
action_54 (53) = happyShift action_84
action_54 (11) = happyGoto action_95
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (28) = happyShift action_32
action_55 (29) = happyShift action_33
action_55 (30) = happyShift action_34
action_55 (31) = happyShift action_35
action_55 (53) = happyShift action_84
action_55 (11) = happyGoto action_94
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_32
action_56 (29) = happyShift action_33
action_56 (30) = happyShift action_34
action_56 (31) = happyShift action_35
action_56 (53) = happyShift action_84
action_56 (11) = happyGoto action_93
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (28) = happyShift action_32
action_57 (29) = happyShift action_33
action_57 (30) = happyShift action_34
action_57 (31) = happyShift action_35
action_57 (53) = happyShift action_84
action_57 (11) = happyGoto action_92
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (28) = happyShift action_32
action_58 (29) = happyShift action_33
action_58 (30) = happyShift action_34
action_58 (31) = happyShift action_35
action_58 (53) = happyShift action_84
action_58 (11) = happyGoto action_91
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (28) = happyShift action_32
action_59 (29) = happyShift action_33
action_59 (30) = happyShift action_34
action_59 (31) = happyShift action_35
action_59 (53) = happyShift action_84
action_59 (11) = happyGoto action_90
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (28) = happyShift action_32
action_60 (29) = happyShift action_33
action_60 (30) = happyShift action_34
action_60 (31) = happyShift action_35
action_60 (53) = happyShift action_84
action_60 (11) = happyGoto action_89
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (28) = happyShift action_32
action_61 (29) = happyShift action_33
action_61 (30) = happyShift action_34
action_61 (31) = happyShift action_35
action_61 (53) = happyShift action_84
action_61 (11) = happyGoto action_88
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (28) = happyShift action_32
action_62 (29) = happyShift action_33
action_62 (30) = happyShift action_34
action_62 (31) = happyShift action_35
action_62 (53) = happyShift action_84
action_62 (11) = happyGoto action_87
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (28) = happyShift action_32
action_63 (29) = happyShift action_33
action_63 (30) = happyShift action_34
action_63 (31) = happyShift action_35
action_63 (53) = happyShift action_84
action_63 (11) = happyGoto action_86
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (28) = happyShift action_32
action_64 (29) = happyShift action_33
action_64 (30) = happyShift action_34
action_64 (31) = happyShift action_35
action_64 (53) = happyShift action_84
action_64 (11) = happyGoto action_85
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (28) = happyShift action_32
action_65 (29) = happyShift action_33
action_65 (30) = happyShift action_34
action_65 (31) = happyShift action_35
action_65 (53) = happyShift action_84
action_65 (11) = happyGoto action_83
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (54) = happyShift action_82
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (37) = happyShift action_54
action_67 (38) = happyShift action_55
action_67 (39) = happyShift action_56
action_67 (40) = happyShift action_57
action_67 (41) = happyShift action_58
action_67 (42) = happyShift action_59
action_67 (43) = happyShift action_60
action_67 (44) = happyShift action_61
action_67 (45) = happyShift action_62
action_67 (46) = happyShift action_63
action_67 (47) = happyShift action_64
action_67 (48) = happyShift action_65
action_67 (54) = happyShift action_81
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (34) = happyShift action_48
action_68 (35) = happyShift action_49
action_68 (54) = happyShift action_80
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (37) = happyShift action_54
action_69 (38) = happyShift action_55
action_69 (39) = happyShift action_56
action_69 (40) = happyShift action_57
action_69 (41) = happyShift action_58
action_69 (42) = happyShift action_59
action_69 (43) = happyShift action_60
action_69 (44) = happyShift action_61
action_69 (45) = happyShift action_62
action_69 (46) = happyShift action_63
action_69 (47) = happyShift action_64
action_69 (48) = happyShift action_65
action_69 _ = happyReduce_15

action_70 (34) = happyShift action_48
action_70 (35) = happyShift action_49
action_70 _ = happyReduce_16

action_71 (16) = happyShift action_79
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (50) = happyShift action_78
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_8

action_74 _ = happyReduce_10

action_75 _ = happyReduce_9

action_76 _ = happyReduce_11

action_77 _ = happyReduce_7

action_78 _ = happyReduce_5

action_79 (51) = happyShift action_104
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_22

action_81 _ = happyReduce_21

action_82 _ = happyReduce_20

action_83 _ = happyReduce_34

action_84 (28) = happyShift action_32
action_84 (29) = happyShift action_33
action_84 (30) = happyShift action_34
action_84 (31) = happyShift action_35
action_84 (53) = happyShift action_84
action_84 (11) = happyGoto action_103
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_33

action_86 _ = happyReduce_32

action_87 _ = happyReduce_31

action_88 (45) = happyShift action_62
action_88 (46) = happyShift action_63
action_88 (47) = happyShift action_64
action_88 (48) = happyShift action_65
action_88 _ = happyReduce_30

action_89 (45) = happyShift action_62
action_89 (46) = happyShift action_63
action_89 (47) = happyShift action_64
action_89 (48) = happyShift action_65
action_89 _ = happyReduce_29

action_90 (43) = happyShift action_60
action_90 (44) = happyShift action_61
action_90 (45) = happyShift action_62
action_90 (46) = happyShift action_63
action_90 (47) = happyShift action_64
action_90 (48) = happyShift action_65
action_90 _ = happyReduce_43

action_91 (43) = happyShift action_60
action_91 (44) = happyShift action_61
action_91 (45) = happyShift action_62
action_91 (46) = happyShift action_63
action_91 (47) = happyShift action_64
action_91 (48) = happyShift action_65
action_91 _ = happyReduce_42

action_92 (43) = happyShift action_60
action_92 (44) = happyShift action_61
action_92 (45) = happyShift action_62
action_92 (46) = happyShift action_63
action_92 (47) = happyShift action_64
action_92 (48) = happyShift action_65
action_92 _ = happyReduce_41

action_93 (43) = happyShift action_60
action_93 (44) = happyShift action_61
action_93 (45) = happyShift action_62
action_93 (46) = happyShift action_63
action_93 (47) = happyShift action_64
action_93 (48) = happyShift action_65
action_93 _ = happyReduce_40

action_94 (43) = happyShift action_60
action_94 (44) = happyShift action_61
action_94 (45) = happyShift action_62
action_94 (46) = happyShift action_63
action_94 (47) = happyShift action_64
action_94 (48) = happyShift action_65
action_94 _ = happyReduce_39

action_95 (43) = happyShift action_60
action_95 (44) = happyShift action_61
action_95 (45) = happyShift action_62
action_95 (46) = happyShift action_63
action_95 (47) = happyShift action_64
action_95 (48) = happyShift action_65
action_95 _ = happyReduce_38

action_96 _ = happyReduce_19

action_97 _ = happyReduce_37

action_98 _ = happyReduce_28

action_99 (34) = happyShift action_48
action_99 _ = happyReduce_45

action_100 _ = happyReduce_44

action_101 (19) = happyShift action_102
action_101 _ = happyReduce_17

action_102 (15) = happyShift action_13
action_102 (17) = happyShift action_14
action_102 (20) = happyShift action_15
action_102 (22) = happyShift action_16
action_102 (23) = happyShift action_17
action_102 (28) = happyShift action_18
action_102 (10) = happyGoto action_105
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (43) = happyShift action_60
action_103 (44) = happyShift action_61
action_103 (45) = happyShift action_62
action_103 (46) = happyShift action_63
action_103 (47) = happyShift action_64
action_103 (48) = happyShift action_65
action_103 (54) = happyShift action_98
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_1

action_105 _ = happyReduce_18

happyReduce_1 = happyReduce 9 4 happyReduction_1
happyReduction_1 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Prog happy_var_2 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 7 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TkId happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ProgWithoutVar happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (CompoundDeclr happy_var_1 happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 4 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Declr happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn7
		 (happy_var_1 : happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn8
		 (TypeInt
	)

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 _
	 =  HappyAbsSyn8
		 (TypeReal
	)

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn8
		 (TypeBool
	)

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn8
		 (TypeString
	)

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  9 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (CompoundStmt happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  10 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn10
		 (AssignStmt happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn10
		 (AssignStmtBool happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 10 happyReduction_17
happyReduction_17 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (IfThenStmt happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 10 happyReduction_18
happyReduction_18 ((HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (IfThenElseStmt happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 10 happyReduction_19
happyReduction_19 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WhileStmt happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyTerminal (TkId happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ReadStmt happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 10 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WriteStmt happy_var_3
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 4 10 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WriteStmtBool happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_3  10 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyTerminal (TkInt happy_var_1))
	 =  HappyAbsSyn11
		 (IntLit happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 (HappyTerminal (TkReal happy_var_1))
	 =  HappyAbsSyn11
		 (RealLit happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyTerminal (TkString happy_var_1))
	 =  HappyAbsSyn11
		 (StringLit happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Add happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (RealDiv happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Div happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  12 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn12
		 (TrueLit
	)

happyReduce_36 = happySpecReduce_1  12 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn12
		 (FalseLit
	)

happyReduce_37 = happySpecReduce_3  12 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  12 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  12 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Neq happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  12 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  12 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  12 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Le happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  12 happyReduction_43
happyReduction_43 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (Ge happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  12 happyReduction_44
happyReduction_44 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (And happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  12 happyReduction_45
happyReduction_45 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Or happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  12 happyReduction_46
happyReduction_46 (HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (Not happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkProgram -> cont 13;
	TkVar -> cont 14;
	TkBegin -> cont 15;
	TkEnd -> cont 16;
	TkIf -> cont 17;
	TkThen -> cont 18;
	TkElse -> cont 19;
	TkWhile -> cont 20;
	TkDo -> cont 21;
	TkRead -> cont 22;
	TkWrite -> cont 23;
	TkTypeInteger -> cont 24;
	TkTypeBoolean -> cont 25;
	TkTypeReal -> cont 26;
	TkTypeString -> cont 27;
	TkId happy_dollar_dollar -> cont 28;
	TkInt happy_dollar_dollar -> cont 29;
	TkReal happy_dollar_dollar -> cont 30;
	TkString happy_dollar_dollar -> cont 31;
	TkTrue -> cont 32;
	TkFalse -> cont 33;
	TkAnd -> cont 34;
	TkOr -> cont 35;
	TkNot -> cont 36;
	TkEqual -> cont 37;
	TkNequal -> cont 38;
	TkLthan -> cont 39;
	TkGthan -> cont 40;
	TkLequal -> cont 41;
	TkGequal -> cont 42;
	TkPlus -> cont 43;
	TkMinus -> cont 44;
	TkMult -> cont 45;
	TkRealDiv -> cont 46;
	TkDiv -> cont 47;
	TkMod -> cont 48;
	TkAssign -> cont 49;
	TkSemicolon -> cont 50;
	TkPeriod -> cont 51;
	TkComma -> cont 52;
	TkLparen -> cont 53;
	TkRparen -> cont 54;
	TkColon -> cont 55;
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
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Erro de Sintaxe: O ficheiro terminou inesperadamente (EOF)."
parseError (token:_) = error ("Erro de Sintaxe: Token inesperado -> " ++ show token)
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
