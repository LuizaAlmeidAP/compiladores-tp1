{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,244) ([2048,0,0,0,4,0,0,0,256,0,0,0,0,0,0,64,0,0,0,0,8,0,0,1024,8192,0,0,0,48,0,0,0,512,0,0,3368,1,0,2048,0,0,0,0,0,16,42240,33,0,0,61440,19,32,0,2552,4096,0,0,0,8,0,0,1024,0,0,8192,0,4,0,0,0,64,0,0,0,0,256,0,0,4096,0,2048,0,0,49152,3,0,0,0,0,0,3368,1,0,0,40832,0,1,49152,79,128,0,32,0,0,32,65516,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,39,64,0,5104,8192,0,2,65526,0,64,0,0,20480,538,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,32768,4306,0,0,0,2552,4096,0,64512,4,8,0,638,1024,0,16128,1,2,32768,159,256,0,20416,32768,0,57344,39,64,0,5104,8192,0,63488,9,16,0,1276,2048,0,32256,2,4,0,319,512,0,40832,0,1,49152,79,128,0,55296,33791,0,0,0,0,26944,8,0,0,0,0,16,0,64896,2111,0,49152,8190,0,8,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1920,0,0,49152,3,0,0,504,0,0,64512,0,0,0,126,0,0,16128,0,0,32768,31,0,0,4032,0,0,65424,7,0,49152,1023,0,8,0,0,26944,8,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Declrs","Declr","VarList","Type","Body","Stmt","Exp","program","var","begin","end","if","then","else","while","do","read","write","typeInt","typeBool","typeReal","typeStr","id","int","real","str","true","false","and","or","not","'='","'<>'","'<'","'>'","'<='","'>='","'+'","'-'","'*'","'/'","div","mod","':='","';'","'.'","','","'('","')'","':'","%eof"]
        bit_start = st Prelude.* 55
        bit_end = (st Prelude.+ 1) Prelude.* 55
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..54]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (12) = happyShift action_4
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (27) = happyShift action_6
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (55) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (27) = happyShift action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (49) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (49) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (13) = happyShift action_9
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (13) = happyShift action_9
action_8 (14) = happyShift action_10
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (27) = happyShift action_22
action_9 (5) = happyGoto action_19
action_9 (6) = happyGoto action_20
action_9 (7) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (14) = happyShift action_13
action_10 (16) = happyShift action_14
action_10 (19) = happyShift action_15
action_10 (21) = happyShift action_16
action_10 (22) = happyShift action_17
action_10 (27) = happyShift action_18
action_10 (9) = happyGoto action_11
action_10 (10) = happyGoto action_12
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (15) = happyShift action_42
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (49) = happyShift action_41
action_12 _ = happyReduce_12

action_13 (14) = happyShift action_13
action_13 (16) = happyShift action_14
action_13 (19) = happyShift action_15
action_13 (21) = happyShift action_16
action_13 (22) = happyShift action_17
action_13 (27) = happyShift action_18
action_13 (9) = happyGoto action_40
action_13 (10) = happyGoto action_12
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (27) = happyShift action_31
action_14 (28) = happyShift action_32
action_14 (29) = happyShift action_33
action_14 (30) = happyShift action_34
action_14 (31) = happyShift action_35
action_14 (32) = happyShift action_36
action_14 (35) = happyShift action_37
action_14 (52) = happyShift action_38
action_14 (11) = happyGoto action_39
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (27) = happyShift action_31
action_15 (28) = happyShift action_32
action_15 (29) = happyShift action_33
action_15 (30) = happyShift action_34
action_15 (31) = happyShift action_35
action_15 (32) = happyShift action_36
action_15 (35) = happyShift action_37
action_15 (52) = happyShift action_38
action_15 (11) = happyGoto action_30
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (52) = happyShift action_29
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (52) = happyShift action_28
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (48) = happyShift action_27
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_26
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (27) = happyShift action_22
action_20 (5) = happyGoto action_25
action_20 (6) = happyGoto action_20
action_20 (7) = happyGoto action_21
action_20 _ = happyReduce_3

action_21 (54) = happyShift action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (51) = happyShift action_23
action_22 _ = happyReduce_6

action_23 (27) = happyShift action_22
action_23 (7) = happyGoto action_73
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (23) = happyShift action_69
action_24 (24) = happyShift action_70
action_24 (25) = happyShift action_71
action_24 (26) = happyShift action_72
action_24 (8) = happyGoto action_68
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_4

action_26 (14) = happyShift action_13
action_26 (16) = happyShift action_14
action_26 (19) = happyShift action_15
action_26 (21) = happyShift action_16
action_26 (22) = happyShift action_17
action_26 (27) = happyShift action_18
action_26 (9) = happyGoto action_67
action_26 (10) = happyGoto action_12
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (27) = happyShift action_31
action_27 (28) = happyShift action_32
action_27 (29) = happyShift action_33
action_27 (30) = happyShift action_34
action_27 (31) = happyShift action_35
action_27 (32) = happyShift action_36
action_27 (35) = happyShift action_37
action_27 (52) = happyShift action_38
action_27 (11) = happyGoto action_66
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (27) = happyShift action_31
action_28 (28) = happyShift action_32
action_28 (29) = happyShift action_33
action_28 (30) = happyShift action_34
action_28 (31) = happyShift action_35
action_28 (32) = happyShift action_36
action_28 (35) = happyShift action_37
action_28 (52) = happyShift action_38
action_28 (11) = happyGoto action_65
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (27) = happyShift action_64
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_63
action_30 (33) = happyShift action_47
action_30 (34) = happyShift action_48
action_30 (36) = happyShift action_49
action_30 (37) = happyShift action_50
action_30 (38) = happyShift action_51
action_30 (39) = happyShift action_52
action_30 (40) = happyShift action_53
action_30 (41) = happyShift action_54
action_30 (42) = happyShift action_55
action_30 (43) = happyShift action_56
action_30 (44) = happyShift action_57
action_30 (45) = happyShift action_58
action_30 (46) = happyShift action_59
action_30 (47) = happyShift action_60
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_22

action_32 _ = happyReduce_23

action_33 _ = happyReduce_24

action_34 _ = happyReduce_25

action_35 _ = happyReduce_26

action_36 _ = happyReduce_27

action_37 (27) = happyShift action_31
action_37 (28) = happyShift action_32
action_37 (29) = happyShift action_33
action_37 (30) = happyShift action_34
action_37 (31) = happyShift action_35
action_37 (32) = happyShift action_36
action_37 (35) = happyShift action_37
action_37 (52) = happyShift action_38
action_37 (11) = happyGoto action_62
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (27) = happyShift action_31
action_38 (28) = happyShift action_32
action_38 (29) = happyShift action_33
action_38 (30) = happyShift action_34
action_38 (31) = happyShift action_35
action_38 (32) = happyShift action_36
action_38 (35) = happyShift action_37
action_38 (52) = happyShift action_38
action_38 (11) = happyGoto action_61
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (17) = happyShift action_46
action_39 (33) = happyShift action_47
action_39 (34) = happyShift action_48
action_39 (36) = happyShift action_49
action_39 (37) = happyShift action_50
action_39 (38) = happyShift action_51
action_39 (39) = happyShift action_52
action_39 (40) = happyShift action_53
action_39 (41) = happyShift action_54
action_39 (42) = happyShift action_55
action_39 (43) = happyShift action_56
action_39 (44) = happyShift action_57
action_39 (45) = happyShift action_58
action_39 (46) = happyShift action_59
action_39 (47) = happyShift action_60
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (15) = happyShift action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_13
action_41 (16) = happyShift action_14
action_41 (19) = happyShift action_15
action_41 (21) = happyShift action_16
action_41 (22) = happyShift action_17
action_41 (27) = happyShift action_18
action_41 (9) = happyGoto action_44
action_41 (10) = happyGoto action_12
action_41 _ = happyReduce_13

action_42 (50) = happyShift action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_2

action_44 _ = happyReduce_14

action_45 _ = happyReduce_21

action_46 (14) = happyShift action_13
action_46 (16) = happyShift action_14
action_46 (19) = happyShift action_15
action_46 (21) = happyShift action_16
action_46 (22) = happyShift action_17
action_46 (27) = happyShift action_18
action_46 (10) = happyGoto action_94
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (27) = happyShift action_31
action_47 (28) = happyShift action_32
action_47 (29) = happyShift action_33
action_47 (30) = happyShift action_34
action_47 (31) = happyShift action_35
action_47 (32) = happyShift action_36
action_47 (35) = happyShift action_37
action_47 (52) = happyShift action_38
action_47 (11) = happyGoto action_93
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (27) = happyShift action_31
action_48 (28) = happyShift action_32
action_48 (29) = happyShift action_33
action_48 (30) = happyShift action_34
action_48 (31) = happyShift action_35
action_48 (32) = happyShift action_36
action_48 (35) = happyShift action_37
action_48 (52) = happyShift action_38
action_48 (11) = happyGoto action_92
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (27) = happyShift action_31
action_49 (28) = happyShift action_32
action_49 (29) = happyShift action_33
action_49 (30) = happyShift action_34
action_49 (31) = happyShift action_35
action_49 (32) = happyShift action_36
action_49 (35) = happyShift action_37
action_49 (52) = happyShift action_38
action_49 (11) = happyGoto action_91
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (27) = happyShift action_31
action_50 (28) = happyShift action_32
action_50 (29) = happyShift action_33
action_50 (30) = happyShift action_34
action_50 (31) = happyShift action_35
action_50 (32) = happyShift action_36
action_50 (35) = happyShift action_37
action_50 (52) = happyShift action_38
action_50 (11) = happyGoto action_90
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_31
action_51 (28) = happyShift action_32
action_51 (29) = happyShift action_33
action_51 (30) = happyShift action_34
action_51 (31) = happyShift action_35
action_51 (32) = happyShift action_36
action_51 (35) = happyShift action_37
action_51 (52) = happyShift action_38
action_51 (11) = happyGoto action_89
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (27) = happyShift action_31
action_52 (28) = happyShift action_32
action_52 (29) = happyShift action_33
action_52 (30) = happyShift action_34
action_52 (31) = happyShift action_35
action_52 (32) = happyShift action_36
action_52 (35) = happyShift action_37
action_52 (52) = happyShift action_38
action_52 (11) = happyGoto action_88
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (27) = happyShift action_31
action_53 (28) = happyShift action_32
action_53 (29) = happyShift action_33
action_53 (30) = happyShift action_34
action_53 (31) = happyShift action_35
action_53 (32) = happyShift action_36
action_53 (35) = happyShift action_37
action_53 (52) = happyShift action_38
action_53 (11) = happyGoto action_87
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (27) = happyShift action_31
action_54 (28) = happyShift action_32
action_54 (29) = happyShift action_33
action_54 (30) = happyShift action_34
action_54 (31) = happyShift action_35
action_54 (32) = happyShift action_36
action_54 (35) = happyShift action_37
action_54 (52) = happyShift action_38
action_54 (11) = happyGoto action_86
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (27) = happyShift action_31
action_55 (28) = happyShift action_32
action_55 (29) = happyShift action_33
action_55 (30) = happyShift action_34
action_55 (31) = happyShift action_35
action_55 (32) = happyShift action_36
action_55 (35) = happyShift action_37
action_55 (52) = happyShift action_38
action_55 (11) = happyGoto action_85
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (27) = happyShift action_31
action_56 (28) = happyShift action_32
action_56 (29) = happyShift action_33
action_56 (30) = happyShift action_34
action_56 (31) = happyShift action_35
action_56 (32) = happyShift action_36
action_56 (35) = happyShift action_37
action_56 (52) = happyShift action_38
action_56 (11) = happyGoto action_84
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (27) = happyShift action_31
action_57 (28) = happyShift action_32
action_57 (29) = happyShift action_33
action_57 (30) = happyShift action_34
action_57 (31) = happyShift action_35
action_57 (32) = happyShift action_36
action_57 (35) = happyShift action_37
action_57 (52) = happyShift action_38
action_57 (11) = happyGoto action_83
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (27) = happyShift action_31
action_58 (28) = happyShift action_32
action_58 (29) = happyShift action_33
action_58 (30) = happyShift action_34
action_58 (31) = happyShift action_35
action_58 (32) = happyShift action_36
action_58 (35) = happyShift action_37
action_58 (52) = happyShift action_38
action_58 (11) = happyGoto action_82
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (27) = happyShift action_31
action_59 (28) = happyShift action_32
action_59 (29) = happyShift action_33
action_59 (30) = happyShift action_34
action_59 (31) = happyShift action_35
action_59 (32) = happyShift action_36
action_59 (35) = happyShift action_37
action_59 (52) = happyShift action_38
action_59 (11) = happyGoto action_81
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (27) = happyShift action_31
action_60 (28) = happyShift action_32
action_60 (29) = happyShift action_33
action_60 (30) = happyShift action_34
action_60 (31) = happyShift action_35
action_60 (32) = happyShift action_36
action_60 (35) = happyShift action_37
action_60 (52) = happyShift action_38
action_60 (11) = happyGoto action_80
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (33) = happyShift action_47
action_61 (34) = happyShift action_48
action_61 (36) = happyShift action_49
action_61 (37) = happyShift action_50
action_61 (38) = happyShift action_51
action_61 (39) = happyShift action_52
action_61 (40) = happyShift action_53
action_61 (41) = happyShift action_54
action_61 (42) = happyShift action_55
action_61 (43) = happyShift action_56
action_61 (44) = happyShift action_57
action_61 (45) = happyShift action_58
action_61 (46) = happyShift action_59
action_61 (47) = happyShift action_60
action_61 (53) = happyShift action_79
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_43

action_63 (14) = happyShift action_13
action_63 (16) = happyShift action_14
action_63 (19) = happyShift action_15
action_63 (21) = happyShift action_16
action_63 (22) = happyShift action_17
action_63 (27) = happyShift action_18
action_63 (10) = happyGoto action_78
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (53) = happyShift action_77
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (33) = happyShift action_47
action_65 (34) = happyShift action_48
action_65 (36) = happyShift action_49
action_65 (37) = happyShift action_50
action_65 (38) = happyShift action_51
action_65 (39) = happyShift action_52
action_65 (40) = happyShift action_53
action_65 (41) = happyShift action_54
action_65 (42) = happyShift action_55
action_65 (43) = happyShift action_56
action_65 (44) = happyShift action_57
action_65 (45) = happyShift action_58
action_65 (46) = happyShift action_59
action_65 (47) = happyShift action_60
action_65 (53) = happyShift action_76
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (33) = happyShift action_47
action_66 (34) = happyShift action_48
action_66 (36) = happyShift action_49
action_66 (37) = happyShift action_50
action_66 (38) = happyShift action_51
action_66 (39) = happyShift action_52
action_66 (40) = happyShift action_53
action_66 (41) = happyShift action_54
action_66 (42) = happyShift action_55
action_66 (43) = happyShift action_56
action_66 (44) = happyShift action_57
action_66 (45) = happyShift action_58
action_66 (46) = happyShift action_59
action_66 (47) = happyShift action_60
action_66 _ = happyReduce_15

action_67 (15) = happyShift action_75
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (49) = happyShift action_74
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_8

action_70 _ = happyReduce_10

action_71 _ = happyReduce_9

action_72 _ = happyReduce_11

action_73 _ = happyReduce_7

action_74 _ = happyReduce_5

action_75 (50) = happyShift action_96
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_20

action_77 _ = happyReduce_19

action_78 _ = happyReduce_18

action_79 _ = happyReduce_28

action_80 _ = happyReduce_34

action_81 _ = happyReduce_33

action_82 _ = happyReduce_32

action_83 _ = happyReduce_31

action_84 (44) = happyShift action_57
action_84 (45) = happyShift action_58
action_84 (46) = happyShift action_59
action_84 (47) = happyShift action_60
action_84 _ = happyReduce_30

action_85 (44) = happyShift action_57
action_85 (45) = happyShift action_58
action_85 (46) = happyShift action_59
action_85 (47) = happyShift action_60
action_85 _ = happyReduce_29

action_86 (36) = happyFail []
action_86 (37) = happyFail []
action_86 (38) = happyFail []
action_86 (39) = happyFail []
action_86 (40) = happyFail []
action_86 (41) = happyFail []
action_86 (42) = happyShift action_55
action_86 (43) = happyShift action_56
action_86 (44) = happyShift action_57
action_86 (45) = happyShift action_58
action_86 (46) = happyShift action_59
action_86 (47) = happyShift action_60
action_86 _ = happyReduce_40

action_87 (36) = happyFail []
action_87 (37) = happyFail []
action_87 (38) = happyFail []
action_87 (39) = happyFail []
action_87 (40) = happyFail []
action_87 (41) = happyFail []
action_87 (42) = happyShift action_55
action_87 (43) = happyShift action_56
action_87 (44) = happyShift action_57
action_87 (45) = happyShift action_58
action_87 (46) = happyShift action_59
action_87 (47) = happyShift action_60
action_87 _ = happyReduce_39

action_88 (36) = happyFail []
action_88 (37) = happyFail []
action_88 (38) = happyFail []
action_88 (39) = happyFail []
action_88 (40) = happyFail []
action_88 (41) = happyFail []
action_88 (42) = happyShift action_55
action_88 (43) = happyShift action_56
action_88 (44) = happyShift action_57
action_88 (45) = happyShift action_58
action_88 (46) = happyShift action_59
action_88 (47) = happyShift action_60
action_88 _ = happyReduce_38

action_89 (36) = happyFail []
action_89 (37) = happyFail []
action_89 (38) = happyFail []
action_89 (39) = happyFail []
action_89 (40) = happyFail []
action_89 (41) = happyFail []
action_89 (42) = happyShift action_55
action_89 (43) = happyShift action_56
action_89 (44) = happyShift action_57
action_89 (45) = happyShift action_58
action_89 (46) = happyShift action_59
action_89 (47) = happyShift action_60
action_89 _ = happyReduce_37

action_90 (36) = happyFail []
action_90 (37) = happyFail []
action_90 (38) = happyFail []
action_90 (39) = happyFail []
action_90 (40) = happyFail []
action_90 (41) = happyFail []
action_90 (42) = happyShift action_55
action_90 (43) = happyShift action_56
action_90 (44) = happyShift action_57
action_90 (45) = happyShift action_58
action_90 (46) = happyShift action_59
action_90 (47) = happyShift action_60
action_90 _ = happyReduce_36

action_91 (36) = happyFail []
action_91 (37) = happyFail []
action_91 (38) = happyFail []
action_91 (39) = happyFail []
action_91 (40) = happyFail []
action_91 (41) = happyFail []
action_91 (42) = happyShift action_55
action_91 (43) = happyShift action_56
action_91 (44) = happyShift action_57
action_91 (45) = happyShift action_58
action_91 (46) = happyShift action_59
action_91 (47) = happyShift action_60
action_91 _ = happyReduce_35

action_92 (33) = happyShift action_47
action_92 (36) = happyShift action_49
action_92 (37) = happyShift action_50
action_92 (38) = happyShift action_51
action_92 (39) = happyShift action_52
action_92 (40) = happyShift action_53
action_92 (41) = happyShift action_54
action_92 (42) = happyShift action_55
action_92 (43) = happyShift action_56
action_92 (44) = happyShift action_57
action_92 (45) = happyShift action_58
action_92 (46) = happyShift action_59
action_92 (47) = happyShift action_60
action_92 _ = happyReduce_42

action_93 (36) = happyShift action_49
action_93 (37) = happyShift action_50
action_93 (38) = happyShift action_51
action_93 (39) = happyShift action_52
action_93 (40) = happyShift action_53
action_93 (41) = happyShift action_54
action_93 (42) = happyShift action_55
action_93 (43) = happyShift action_56
action_93 (44) = happyShift action_57
action_93 (45) = happyShift action_58
action_93 (46) = happyShift action_59
action_93 (47) = happyShift action_60
action_93 _ = happyReduce_41

action_94 (18) = happyShift action_95
action_94 _ = happyReduce_16

action_95 (14) = happyShift action_13
action_95 (16) = happyShift action_14
action_95 (19) = happyShift action_15
action_95 (21) = happyShift action_16
action_95 (22) = happyShift action_17
action_95 (27) = happyShift action_18
action_95 (10) = happyGoto action_97
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_1

action_97 _ = happyReduce_17

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

happyReduce_16 = happyReduce 4 10 happyReduction_16
happyReduction_16 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (IfThenStmt happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 10 happyReduction_17
happyReduction_17 ((HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (IfThenElseStmt happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 10 happyReduction_18
happyReduction_18 ((HappyAbsSyn10  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WhileStmt happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 4 10 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyTerminal (TkId happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (ReadStmt happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 10 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (WriteStmt happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyTerminal (TkId happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 (HappyTerminal (TkInt happy_var_1))
	 =  HappyAbsSyn11
		 (IntLit happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 (HappyTerminal (TkReal happy_var_1))
	 =  HappyAbsSyn11
		 (RealLit happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyTerminal (TkString happy_var_1))
	 =  HappyAbsSyn11
		 (StringLit happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn11
		 (TrueLit
	)

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn11
		 (FalseLit
	)

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

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Neq happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Le happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Ge happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (And happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  11 happyReduction_43
happyReduction_43 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Not happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 55 55 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TkProgram -> cont 12;
	TkVar -> cont 13;
	TkBegin -> cont 14;
	TkEnd -> cont 15;
	TkIf -> cont 16;
	TkThen -> cont 17;
	TkElse -> cont 18;
	TkWhile -> cont 19;
	TkDo -> cont 20;
	TkRead -> cont 21;
	TkWrite -> cont 22;
	TkTypeInteger -> cont 23;
	TkTypeBoolean -> cont 24;
	TkTypeReal -> cont 25;
	TkTypeString -> cont 26;
	TkId happy_dollar_dollar -> cont 27;
	TkInt happy_dollar_dollar -> cont 28;
	TkReal happy_dollar_dollar -> cont 29;
	TkString happy_dollar_dollar -> cont 30;
	TkTrue -> cont 31;
	TkFalse -> cont 32;
	TkAnd -> cont 33;
	TkOr -> cont 34;
	TkNot -> cont 35;
	TkEqual -> cont 36;
	TkNequal -> cont 37;
	TkLthan -> cont 38;
	TkGthan -> cont 39;
	TkLequal -> cont 40;
	TkGequal -> cont 41;
	TkPlus -> cont 42;
	TkMinus -> cont 43;
	TkMult -> cont 44;
	TkRealDiv -> cont 45;
	TkDiv -> cont 46;
	TkMod -> cont 47;
	TkAssign -> cont 48;
	TkSemicolon -> cont 49;
	TkPeriod -> cont 50;
	TkComma -> cont 51;
	TkLparen -> cont 52;
	TkRparen -> cont 53;
	TkColon -> cont 54;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 55 tk tks = happyError' (tks, explist)
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
