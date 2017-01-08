#
# This file automatically generated using MIPSUnit::MSpec
#

.globl main

.text
main:

#############################################
#
# makes10 
#
#############################################

#
# makes10 recognizes a == 10
#
li $v0, 332
li $a0, 9
li $a1, 10
jal makes10
li $at, 1
beq $at, $v0, pass__1
move $a3, $v0
li $a2, 1
la $a0, test_name__1__1
la $a1, reg_name__1__1
jal fail
pass__1:

#
# makes10 recognizes b == 10
#
li $v0, 332
li $a0, 10
li $a1, 9
jal makes10
li $at, 1
beq $at, $v0, pass__2
move $a3, $v0
li $a2, 1
la $a0, test_name__2__1
la $a1, reg_name__2__1
jal fail
pass__2:

#
# makes10 recognizes sum == 10
#
li $v0, 332
li $a0, 5
li $a1, 5
jal makes10
li $at, 1
beq $at, $v0, pass__3
move $a3, $v0
li $a2, 1
la $a0, test_name__3__1
la $a1, reg_name__3__1
jal fail
pass__3:

#
# makes10 recognizes no 10
#
li $v0, 332
li $a0, 2
li $a1, 3
jal makes10
li $at, 0
beq $at, $v0, pass__4
move $a3, $v0
li $a2, 0
la $a0, test_name__4__1
la $a1, reg_name__4__1
jal fail
pass__4:

#
# makes10 recognizes 1 + 9 is 10
#
li $v0, 332
li $a0, 1
li $a1, 9
jal makes10
li $at, 1
beq $at, $v0, pass__5
move $a3, $v0
li $a2, 1
la $a0, test_name__5__1
la $a1, reg_name__5__1
jal fail
pass__5:

#
# makes10 recognizes 9 + 1 is 10
#
li $v0, 332
li $a0, 9
li $a1, 1
jal makes10
li $at, 1
beq $at, $v0, pass__6
move $a3, $v0
li $a2, 1
la $a0, test_name__6__1
la $a1, reg_name__6__1
jal fail
pass__6:

#
# makes10 recognizes 2 + 8 is 10
#
li $v0, 332
li $a0, 2
li $a1, 8
jal makes10
li $at, 1
beq $at, $v0, pass__7
move $a3, $v0
li $a2, 1
la $a0, test_name__7__1
la $a1, reg_name__7__1
jal fail
pass__7:

#
# makes10 recognizes 8 + 2 is 10
#
li $v0, 332
li $a0, 8
li $a1, 2
jal makes10
li $at, 1
beq $at, $v0, pass__8
move $a3, $v0
li $a2, 1
la $a0, test_name__8__1
la $a1, reg_name__8__1
jal fail
pass__8:

#
# makes10 recognizes 3 + 7 is 10
#
li $v0, 332
li $a0, 3
li $a1, 7
jal makes10
li $at, 1
beq $at, $v0, pass__9
move $a3, $v0
li $a2, 1
la $a0, test_name__9__1
la $a1, reg_name__9__1
jal fail
pass__9:

#
# makes10 recognizes 7 + 3 is 10
#
li $v0, 332
li $a0, 7
li $a1, 3
jal makes10
li $at, 1
beq $at, $v0, pass__10
move $a3, $v0
li $a2, 1
la $a0, test_name__10__1
la $a1, reg_name__10__1
jal fail
pass__10:

#
# makes10 recognizes 4 + 6 is 10
#
li $v0, 332
li $a0, 4
li $a1, 6
jal makes10
li $at, 1
beq $at, $v0, pass__11
move $a3, $v0
li $a2, 1
la $a0, test_name__11__1
la $a1, reg_name__11__1
jal fail
pass__11:

#
# makes10 recognizes 6 + 4 is 10
#
li $v0, 332
li $a0, 6
li $a1, 4
jal makes10
li $at, 1
beq $at, $v0, pass__12
move $a3, $v0
li $a2, 1
la $a0, test_name__12__1
la $a1, reg_name__12__1
jal fail
pass__12:

#
# makes10 recognizes 5 + 5 is 10
#
li $v0, 332
li $a0, 5
li $a1, 5
jal makes10
li $at, 1
beq $at, $v0, pass__13
move $a3, $v0
li $a2, 1
la $a0, test_name__13__1
la $a1, reg_name__13__1
jal fail
pass__13:

#
# makes10 recognizes 5 + 5 is 10
#
li $v0, 332
li $a0, 5
li $a1, 5
jal makes10
li $at, 1
beq $at, $v0, pass__14
move $a3, $v0
li $a2, 1
la $a0, test_name__14__1
la $a1, reg_name__14__1
jal fail
pass__14:

#
# makes10 recognizes 6 + 4 is 10
#
li $v0, 332
li $a0, 6
li $a1, 4
jal makes10
li $at, 1
beq $at, $v0, pass__15
move $a3, $v0
li $a2, 1
la $a0, test_name__15__1
la $a1, reg_name__15__1
jal fail
pass__15:

#
# makes10 recognizes 4 + 6 is 10
#
li $v0, 332
li $a0, 4
li $a1, 6
jal makes10
li $at, 1
beq $at, $v0, pass__16
move $a3, $v0
li $a2, 1
la $a0, test_name__16__1
la $a1, reg_name__16__1
jal fail
pass__16:

#
# makes10 recognizes 7 + 3 is 10
#
li $v0, 332
li $a0, 7
li $a1, 3
jal makes10
li $at, 1
beq $at, $v0, pass__17
move $a3, $v0
li $a2, 1
la $a0, test_name__17__1
la $a1, reg_name__17__1
jal fail
pass__17:

#
# makes10 recognizes 3 + 7 is 10
#
li $v0, 332
li $a0, 3
li $a1, 7
jal makes10
li $at, 1
beq $at, $v0, pass__18
move $a3, $v0
li $a2, 1
la $a0, test_name__18__1
la $a1, reg_name__18__1
jal fail
pass__18:

#
# makes10 recognizes 8 + 2 is 10
#
li $v0, 332
li $a0, 8
li $a1, 2
jal makes10
li $at, 1
beq $at, $v0, pass__19
move $a3, $v0
li $a2, 1
la $a0, test_name__19__1
la $a1, reg_name__19__1
jal fail
pass__19:

#
# makes10 recognizes 2 + 8 is 10
#
li $v0, 332
li $a0, 2
li $a1, 8
jal makes10
li $at, 1
beq $at, $v0, pass__20
move $a3, $v0
li $a2, 1
la $a0, test_name__20__1
la $a1, reg_name__20__1
jal fail
pass__20:

#
# makes10 recognizes 9 + 1 is 10
#
li $v0, 332
li $a0, 9
li $a1, 1
jal makes10
li $at, 1
beq $at, $v0, pass__21
move $a3, $v0
li $a2, 1
la $a0, test_name__21__1
la $a1, reg_name__21__1
jal fail
pass__21:

#
# makes10 recognizes 1 + 9 is 10
#
li $v0, 332
li $a0, 1
li $a1, 9
jal makes10
li $at, 1
beq $at, $v0, pass__22
move $a3, $v0
li $a2, 1
la $a0, test_name__22__1
la $a1, reg_name__22__1
jal fail
pass__22:

#
# makes10 recognizes 10 + 0 is 10
#
li $v0, 332
li $a0, 10
li $a1, 0
jal makes10
li $at, 1
beq $at, $v0, pass__23
move $a3, $v0
li $a2, 1
la $a0, test_name__23__1
la $a1, reg_name__23__1
jal fail
pass__23:

#
# makes10 recognizes 0 + 10 is 10
#
li $v0, 332
li $a0, 0
li $a1, 10
jal makes10
li $at, 1
beq $at, $v0, pass__24
move $a3, $v0
li $a2, 1
la $a0, test_name__24__1
la $a1, reg_name__24__1
jal fail
pass__24:

#
# makes10 recognizes 11 + -1 is 10
#
li $v0, 332
li $a0, 11
li $a1, -1
jal makes10
li $at, 1
beq $at, $v0, pass__25
move $a3, $v0
li $a2, 1
la $a0, test_name__25__1
la $a1, reg_name__25__1
jal fail
pass__25:

#
# makes10 recognizes -1 + 11 is 10
#
li $v0, 332
li $a0, -1
li $a1, 11
jal makes10
li $at, 1
beq $at, $v0, pass__26
move $a3, $v0
li $a2, 1
la $a0, test_name__26__1
la $a1, reg_name__26__1
jal fail
pass__26:

#
# makes10 recognizes 12 + -2 is 10
#
li $v0, 332
li $a0, 12
li $a1, -2
jal makes10
li $at, 1
beq $at, $v0, pass__27
move $a3, $v0
li $a2, 1
la $a0, test_name__27__1
la $a1, reg_name__27__1
jal fail
pass__27:

#
# makes10 recognizes -2 + 12 is 10
#
li $v0, 332
li $a0, -2
li $a1, 12
jal makes10
li $at, 1
beq $at, $v0, pass__28
move $a3, $v0
li $a2, 1
la $a0, test_name__28__1
la $a1, reg_name__28__1
jal fail
pass__28:

#
# makes10 recognizes that 1 3 is not 10
#
li $v0, 332
li $a0, 1
li $a1, 3
jal makes10
li $at, 0
beq $at, $v0, pass__29
move $a3, $v0
li $a2, 0
la $a0, test_name__29__1
la $a1, reg_name__29__1
jal fail
pass__29:

#
# makes10 recognizes that 2 9 is not 10
#
li $v0, 332
li $a0, 2
li $a1, 9
jal makes10
li $at, 0
beq $at, $v0, pass__30
move $a3, $v0
li $a2, 0
la $a0, test_name__30__1
la $a1, reg_name__30__1
jal fail
pass__30:

#
# makes10 recognizes that 3 6 is not 10
#
li $v0, 332
li $a0, 3
li $a1, 6
jal makes10
li $at, 0
beq $at, $v0, pass__31
move $a3, $v0
li $a2, 0
la $a0, test_name__31__1
la $a1, reg_name__31__1
jal fail
pass__31:

#############################################
#
# intMax 
#
#############################################

#
# intMax handles positive numbers ([2, 5, 6])
#
li $v0, 413
li $a2, 6
li $a0, 2
li $a1, 5
jal intMax
li $at, 6
beq $at, $v0, pass__32
move $a3, $v0
li $a2, 6
la $a0, test_name__32__1
la $a1, reg_name__32__1
jal fail
pass__32:

#
# intMax handles positive numbers ([2, 6, 5])
#
li $v0, 413
li $a2, 5
li $a0, 2
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__33
move $a3, $v0
li $a2, 6
la $a0, test_name__33__1
la $a1, reg_name__33__1
jal fail
pass__33:

#
# intMax handles positive numbers ([5, 2, 6])
#
li $v0, 413
li $a2, 6
li $a0, 5
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__34
move $a3, $v0
li $a2, 6
la $a0, test_name__34__1
la $a1, reg_name__34__1
jal fail
pass__34:

#
# intMax handles positive numbers ([5, 6, 2])
#
li $v0, 413
li $a2, 2
li $a0, 5
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__35
move $a3, $v0
li $a2, 6
la $a0, test_name__35__1
la $a1, reg_name__35__1
jal fail
pass__35:

#
# intMax handles positive numbers ([6, 2, 5])
#
li $v0, 413
li $a2, 5
li $a0, 6
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__36
move $a3, $v0
li $a2, 6
la $a0, test_name__36__1
la $a1, reg_name__36__1
jal fail
pass__36:

#
# intMax handles positive numbers ([6, 5, 2])
#
li $v0, 413
li $a2, 2
li $a0, 6
li $a1, 5
jal intMax
li $at, 6
beq $at, $v0, pass__37
move $a3, $v0
li $a2, 6
la $a0, test_name__37__1
la $a1, reg_name__37__1
jal fail
pass__37:

#
# intMax handles two small numbers ([2, 2, 6])
#
li $v0, 413
li $a2, 6
li $a0, 2
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__38
move $a3, $v0
li $a2, 6
la $a0, test_name__38__1
la $a1, reg_name__38__1
jal fail
pass__38:

#
# intMax handles two small numbers ([2, 6, 2])
#
li $v0, 413
li $a2, 2
li $a0, 2
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__39
move $a3, $v0
li $a2, 6
la $a0, test_name__39__1
la $a1, reg_name__39__1
jal fail
pass__39:

#
# intMax handles two small numbers ([2, 2, 6])
#
li $v0, 413
li $a2, 6
li $a0, 2
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__40
move $a3, $v0
li $a2, 6
la $a0, test_name__40__1
la $a1, reg_name__40__1
jal fail
pass__40:

#
# intMax handles two small numbers ([2, 6, 2])
#
li $v0, 413
li $a2, 2
li $a0, 2
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__41
move $a3, $v0
li $a2, 6
la $a0, test_name__41__1
la $a1, reg_name__41__1
jal fail
pass__41:

#
# intMax handles two small numbers ([6, 2, 2])
#
li $v0, 413
li $a2, 2
li $a0, 6
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__42
move $a3, $v0
li $a2, 6
la $a0, test_name__42__1
la $a1, reg_name__42__1
jal fail
pass__42:

#
# intMax handles two small numbers ([6, 2, 2])
#
li $v0, 413
li $a2, 2
li $a0, 6
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__43
move $a3, $v0
li $a2, 6
la $a0, test_name__43__1
la $a1, reg_name__43__1
jal fail
pass__43:

#
# intMax handles two large numbers ([2, 6, 6])
#
li $v0, 413
li $a2, 6
li $a0, 2
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__44
move $a3, $v0
li $a2, 6
la $a0, test_name__44__1
la $a1, reg_name__44__1
jal fail
pass__44:

#
# intMax handles two large numbers ([2, 6, 6])
#
li $v0, 413
li $a2, 6
li $a0, 2
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__45
move $a3, $v0
li $a2, 6
la $a0, test_name__45__1
la $a1, reg_name__45__1
jal fail
pass__45:

#
# intMax handles two large numbers ([6, 2, 6])
#
li $v0, 413
li $a2, 6
li $a0, 6
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__46
move $a3, $v0
li $a2, 6
la $a0, test_name__46__1
la $a1, reg_name__46__1
jal fail
pass__46:

#
# intMax handles two large numbers ([6, 6, 2])
#
li $v0, 413
li $a2, 2
li $a0, 6
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__47
move $a3, $v0
li $a2, 6
la $a0, test_name__47__1
la $a1, reg_name__47__1
jal fail
pass__47:

#
# intMax handles two large numbers ([6, 2, 6])
#
li $v0, 413
li $a2, 6
li $a0, 6
li $a1, 2
jal intMax
li $at, 6
beq $at, $v0, pass__48
move $a3, $v0
li $a2, 6
la $a0, test_name__48__1
la $a1, reg_name__48__1
jal fail
pass__48:

#
# intMax handles two large numbers ([6, 6, 2])
#
li $v0, 413
li $a2, 2
li $a0, 6
li $a1, 6
jal intMax
li $at, 6
beq $at, $v0, pass__49
move $a3, $v0
li $a2, 6
la $a0, test_name__49__1
la $a1, reg_name__49__1
jal fail
pass__49:

#
# intMax handles negative numbers ([-3, 0, 2])
#
li $v0, 413
li $a2, 2
li $a0, -3
li $a1, 0
jal intMax
li $at, 2
beq $at, $v0, pass__50
move $a3, $v0
li $a2, 2
la $a0, test_name__50__1
la $a1, reg_name__50__1
jal fail
pass__50:

#
# intMax handles negative numbers ([-3, 2, 0])
#
li $v0, 413
li $a2, 0
li $a0, -3
li $a1, 2
jal intMax
li $at, 2
beq $at, $v0, pass__51
move $a3, $v0
li $a2, 2
la $a0, test_name__51__1
la $a1, reg_name__51__1
jal fail
pass__51:

#
# intMax handles negative numbers ([0, -3, 2])
#
li $v0, 413
li $a2, 2
li $a0, 0
li $a1, -3
jal intMax
li $at, 2
beq $at, $v0, pass__52
move $a3, $v0
li $a2, 2
la $a0, test_name__52__1
la $a1, reg_name__52__1
jal fail
pass__52:

#
# intMax handles negative numbers ([0, 2, -3])
#
li $v0, 413
li $a2, -3
li $a0, 0
li $a1, 2
jal intMax
li $at, 2
beq $at, $v0, pass__53
move $a3, $v0
li $a2, 2
la $a0, test_name__53__1
la $a1, reg_name__53__1
jal fail
pass__53:

#
# intMax handles negative numbers ([2, -3, 0])
#
li $v0, 413
li $a2, 0
li $a0, 2
li $a1, -3
jal intMax
li $at, 2
beq $at, $v0, pass__54
move $a3, $v0
li $a2, 2
la $a0, test_name__54__1
la $a1, reg_name__54__1
jal fail
pass__54:

#
# intMax handles negative numbers ([2, 0, -3])
#
li $v0, 413
li $a2, -3
li $a0, 2
li $a1, 0
jal intMax
li $at, 2
beq $at, $v0, pass__55
move $a3, $v0
li $a2, 2
la $a0, test_name__55__1
la $a1, reg_name__55__1
jal fail
pass__55:

#
# intMax handles all numbers ([-3, -5, -7])
#
li $v0, 413
li $a2, -7
li $a0, -3
li $a1, -5
jal intMax
li $at, -3
beq $at, $v0, pass__56
move $a3, $v0
li $a2, -3
la $a0, test_name__56__1
la $a1, reg_name__56__1
jal fail
pass__56:

#
# intMax handles all numbers ([-3, -7, -5])
#
li $v0, 413
li $a2, -5
li $a0, -3
li $a1, -7
jal intMax
li $at, -3
beq $at, $v0, pass__57
move $a3, $v0
li $a2, -3
la $a0, test_name__57__1
la $a1, reg_name__57__1
jal fail
pass__57:

#
# intMax handles all numbers ([-5, -3, -7])
#
li $v0, 413
li $a2, -7
li $a0, -5
li $a1, -3
jal intMax
li $at, -3
beq $at, $v0, pass__58
move $a3, $v0
li $a2, -3
la $a0, test_name__58__1
la $a1, reg_name__58__1
jal fail
pass__58:

#
# intMax handles all numbers ([-5, -7, -3])
#
li $v0, 413
li $a2, -3
li $a0, -5
li $a1, -7
jal intMax
li $at, -3
beq $at, $v0, pass__59
move $a3, $v0
li $a2, -3
la $a0, test_name__59__1
la $a1, reg_name__59__1
jal fail
pass__59:

#
# intMax handles all numbers ([-7, -3, -5])
#
li $v0, 413
li $a2, -5
li $a0, -7
li $a1, -3
jal intMax
li $at, -3
beq $at, $v0, pass__60
move $a3, $v0
li $a2, -3
la $a0, test_name__60__1
la $a1, reg_name__60__1
jal fail
pass__60:

#
# intMax handles all numbers ([-7, -5, -3])
#
li $v0, 413
li $a2, -3
li $a0, -7
li $a1, -5
jal intMax
li $at, -3
beq $at, $v0, pass__61
move $a3, $v0
li $a2, -3
la $a0, test_name__61__1
la $a1, reg_name__61__1
jal fail
pass__61:

#############################################
#
# close10 
#
#############################################

#
# close10 returns the correct answer for [8, 13]
#
li $v0, 334
li $a0, 8
li $a1, 13
jal close10
li $at, 8
beq $at, $v0, pass__62
move $a3, $v0
li $a2, 8
la $a0, test_name__62__1
la $a1, reg_name__62__1
jal fail
pass__62:

#
# close10 returns the correct answer for [13, 8]
#
li $v0, 334
li $a0, 13
li $a1, 8
jal close10
li $at, 8
beq $at, $v0, pass__63
move $a3, $v0
li $a2, 8
la $a0, test_name__63__1
la $a1, reg_name__63__1
jal fail
pass__63:

#
# close10 returns the correct answer for [13, 7]
#
li $v0, 334
li $a0, 13
li $a1, 7
jal close10
li $at, 0
beq $at, $v0, pass__64
move $a3, $v0
li $a2, 0
la $a0, test_name__64__1
la $a1, reg_name__64__1
jal fail
pass__64:

#
# close10 returns the correct answer for [7, 13]
#
li $v0, 334
li $a0, 7
li $a1, 13
jal close10
li $at, 0
beq $at, $v0, pass__65
move $a3, $v0
li $a2, 0
la $a0, test_name__65__1
la $a1, reg_name__65__1
jal fail
pass__65:

#
# close10 returns the correct answer for [9, 13]
#
li $v0, 334
li $a0, 9
li $a1, 13
jal close10
li $at, 9
beq $at, $v0, pass__66
move $a3, $v0
li $a2, 9
la $a0, test_name__66__1
la $a1, reg_name__66__1
jal fail
pass__66:

#
# close10 returns the correct answer for [10, 12]
#
li $v0, 334
li $a0, 10
li $a1, 12
jal close10
li $at, 10
beq $at, $v0, pass__67
move $a3, $v0
li $a2, 10
la $a0, test_name__67__1
la $a1, reg_name__67__1
jal fail
pass__67:

#
# close10 returns the correct answer for [11, 10]
#
li $v0, 334
li $a0, 11
li $a1, 10
jal close10
li $at, 10
beq $at, $v0, pass__68
move $a3, $v0
li $a2, 10
la $a0, test_name__68__1
la $a1, reg_name__68__1
jal fail
pass__68:

#
# close10 returns the correct answer for [5, 21]
#
li $v0, 334
li $a0, 5
li $a1, 21
jal close10
li $at, 5
beq $at, $v0, pass__69
move $a3, $v0
li $a2, 5
la $a0, test_name__69__1
la $a1, reg_name__69__1
jal fail
pass__69:

#
# close10 returns the correct answer for [0, 20]
#
li $v0, 334
li $a0, 0
li $a1, 20
jal close10
li $at, 0
beq $at, $v0, pass__70
move $a3, $v0
li $a2, 0
la $a0, test_name__70__1
la $a1, reg_name__70__1
jal fail
pass__70:

#
# close10 returns the correct answer for [10, 10]
#
li $v0, 334
li $a0, 10
li $a1, 10
jal close10
li $at, 0
beq $at, $v0, pass__71
move $a3, $v0
li $a2, 0
la $a0, test_name__71__1
la $a1, reg_name__71__1
jal fail
pass__71:

#############################################
#
# dateFashion 
#
#############################################

#
# dateFashion returns 0 if you are unstylish (0) and date is ok (3)
#
li $v0, 44
li $a0, 0
li $a1, 3
jal dateFashion
li $at, 0
beq $at, $v0, pass__72
move $a3, $v0
li $a2, 0
la $a0, test_name__72__1
la $a1, reg_name__72__1
jal fail
pass__72:

#
# dateFashion returns 0 if you are unstylish (0) and date is ok (4)
#
li $v0, 44
li $a0, 0
li $a1, 4
jal dateFashion
li $at, 0
beq $at, $v0, pass__73
move $a3, $v0
li $a2, 0
la $a0, test_name__73__1
la $a1, reg_name__73__1
jal fail
pass__73:

#
# dateFashion returns 0 if you are unstylish (0) and date is ok (5)
#
li $v0, 44
li $a0, 0
li $a1, 5
jal dateFashion
li $at, 0
beq $at, $v0, pass__74
move $a3, $v0
li $a2, 0
la $a0, test_name__74__1
la $a1, reg_name__74__1
jal fail
pass__74:

#
# dateFashion returns 0 if you are unstylish (0) and date is ok (6)
#
li $v0, 44
li $a0, 0
li $a1, 6
jal dateFashion
li $at, 0
beq $at, $v0, pass__75
move $a3, $v0
li $a2, 0
la $a0, test_name__75__1
la $a1, reg_name__75__1
jal fail
pass__75:

#
# dateFashion returns 0 if you are unstylish (0) and date is ok (7)
#
li $v0, 44
li $a0, 0
li $a1, 7
jal dateFashion
li $at, 0
beq $at, $v0, pass__76
move $a3, $v0
li $a2, 0
la $a0, test_name__76__1
la $a1, reg_name__76__1
jal fail
pass__76:

#
# dateFashion returns 0 if you are unstylish (1) and date is ok (3)
#
li $v0, 44
li $a0, 1
li $a1, 3
jal dateFashion
li $at, 0
beq $at, $v0, pass__77
move $a3, $v0
li $a2, 0
la $a0, test_name__77__1
la $a1, reg_name__77__1
jal fail
pass__77:

#
# dateFashion returns 0 if you are unstylish (1) and date is ok (4)
#
li $v0, 44
li $a0, 1
li $a1, 4
jal dateFashion
li $at, 0
beq $at, $v0, pass__78
move $a3, $v0
li $a2, 0
la $a0, test_name__78__1
la $a1, reg_name__78__1
jal fail
pass__78:

#
# dateFashion returns 0 if you are unstylish (1) and date is ok (5)
#
li $v0, 44
li $a0, 1
li $a1, 5
jal dateFashion
li $at, 0
beq $at, $v0, pass__79
move $a3, $v0
li $a2, 0
la $a0, test_name__79__1
la $a1, reg_name__79__1
jal fail
pass__79:

#
# dateFashion returns 0 if you are unstylish (1) and date is ok (6)
#
li $v0, 44
li $a0, 1
li $a1, 6
jal dateFashion
li $at, 0
beq $at, $v0, pass__80
move $a3, $v0
li $a2, 0
la $a0, test_name__80__1
la $a1, reg_name__80__1
jal fail
pass__80:

#
# dateFashion returns 0 if you are unstylish (1) and date is ok (7)
#
li $v0, 44
li $a0, 1
li $a1, 7
jal dateFashion
li $at, 0
beq $at, $v0, pass__81
move $a3, $v0
li $a2, 0
la $a0, test_name__81__1
la $a1, reg_name__81__1
jal fail
pass__81:

#
# dateFashion returns 0 if you are unstylish (2) and date is ok (3)
#
li $v0, 44
li $a0, 2
li $a1, 3
jal dateFashion
li $at, 0
beq $at, $v0, pass__82
move $a3, $v0
li $a2, 0
la $a0, test_name__82__1
la $a1, reg_name__82__1
jal fail
pass__82:

#
# dateFashion returns 0 if you are unstylish (2) and date is ok (4)
#
li $v0, 44
li $a0, 2
li $a1, 4
jal dateFashion
li $at, 0
beq $at, $v0, pass__83
move $a3, $v0
li $a2, 0
la $a0, test_name__83__1
la $a1, reg_name__83__1
jal fail
pass__83:

#
# dateFashion returns 0 if you are unstylish (2) and date is ok (5)
#
li $v0, 44
li $a0, 2
li $a1, 5
jal dateFashion
li $at, 0
beq $at, $v0, pass__84
move $a3, $v0
li $a2, 0
la $a0, test_name__84__1
la $a1, reg_name__84__1
jal fail
pass__84:

#
# dateFashion returns 0 if you are unstylish (2) and date is ok (6)
#
li $v0, 44
li $a0, 2
li $a1, 6
jal dateFashion
li $at, 0
beq $at, $v0, pass__85
move $a3, $v0
li $a2, 0
la $a0, test_name__85__1
la $a1, reg_name__85__1
jal fail
pass__85:

#
# dateFashion returns 0 if you are unstylish (2) and date is ok (7)
#
li $v0, 44
li $a0, 2
li $a1, 7
jal dateFashion
li $at, 0
beq $at, $v0, pass__86
move $a3, $v0
li $a2, 0
la $a0, test_name__86__1
la $a1, reg_name__86__1
jal fail
pass__86:

#
# dateFashion returns 0 if date is unstylish (0) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 0
jal dateFashion
li $at, 0
beq $at, $v0, pass__87
move $a3, $v0
li $a2, 0
la $a0, test_name__87__1
la $a1, reg_name__87__1
jal fail
pass__87:

#
# dateFashion returns 0 if date is unstylish (0) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 0
jal dateFashion
li $at, 0
beq $at, $v0, pass__88
move $a3, $v0
li $a2, 0
la $a0, test_name__88__1
la $a1, reg_name__88__1
jal fail
pass__88:

#
# dateFashion returns 0 if date is unstylish (0) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 0
jal dateFashion
li $at, 0
beq $at, $v0, pass__89
move $a3, $v0
li $a2, 0
la $a0, test_name__89__1
la $a1, reg_name__89__1
jal fail
pass__89:

#
# dateFashion returns 0 if date is unstylish (0) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 0
jal dateFashion
li $at, 0
beq $at, $v0, pass__90
move $a3, $v0
li $a2, 0
la $a0, test_name__90__1
la $a1, reg_name__90__1
jal fail
pass__90:

#
# dateFashion returns 0 if date is unstylish (0) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 0
jal dateFashion
li $at, 0
beq $at, $v0, pass__91
move $a3, $v0
li $a2, 0
la $a0, test_name__91__1
la $a1, reg_name__91__1
jal fail
pass__91:

#
# dateFashion returns 0 if date is unstylish (1) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 1
jal dateFashion
li $at, 0
beq $at, $v0, pass__92
move $a3, $v0
li $a2, 0
la $a0, test_name__92__1
la $a1, reg_name__92__1
jal fail
pass__92:

#
# dateFashion returns 0 if date is unstylish (1) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 1
jal dateFashion
li $at, 0
beq $at, $v0, pass__93
move $a3, $v0
li $a2, 0
la $a0, test_name__93__1
la $a1, reg_name__93__1
jal fail
pass__93:

#
# dateFashion returns 0 if date is unstylish (1) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 1
jal dateFashion
li $at, 0
beq $at, $v0, pass__94
move $a3, $v0
li $a2, 0
la $a0, test_name__94__1
la $a1, reg_name__94__1
jal fail
pass__94:

#
# dateFashion returns 0 if date is unstylish (1) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 1
jal dateFashion
li $at, 0
beq $at, $v0, pass__95
move $a3, $v0
li $a2, 0
la $a0, test_name__95__1
la $a1, reg_name__95__1
jal fail
pass__95:

#
# dateFashion returns 0 if date is unstylish (1) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 1
jal dateFashion
li $at, 0
beq $at, $v0, pass__96
move $a3, $v0
li $a2, 0
la $a0, test_name__96__1
la $a1, reg_name__96__1
jal fail
pass__96:

#
# dateFashion returns 0 if date is unstylish (2) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 2
jal dateFashion
li $at, 0
beq $at, $v0, pass__97
move $a3, $v0
li $a2, 0
la $a0, test_name__97__1
la $a1, reg_name__97__1
jal fail
pass__97:

#
# dateFashion returns 0 if date is unstylish (2) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 2
jal dateFashion
li $at, 0
beq $at, $v0, pass__98
move $a3, $v0
li $a2, 0
la $a0, test_name__98__1
la $a1, reg_name__98__1
jal fail
pass__98:

#
# dateFashion returns 0 if date is unstylish (2) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 2
jal dateFashion
li $at, 0
beq $at, $v0, pass__99
move $a3, $v0
li $a2, 0
la $a0, test_name__99__1
la $a1, reg_name__99__1
jal fail
pass__99:

#
# dateFashion returns 0 if date is unstylish (2) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 2
jal dateFashion
li $at, 0
beq $at, $v0, pass__100
move $a3, $v0
li $a2, 0
la $a0, test_name__100__1
la $a1, reg_name__100__1
jal fail
pass__100:

#
# dateFashion returns 0 if date is unstylish (2) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 2
jal dateFashion
li $at, 0
beq $at, $v0, pass__101
move $a3, $v0
li $a2, 0
la $a0, test_name__101__1
la $a1, reg_name__101__1
jal fail
pass__101:

#
# dateFashion returns 1 if both you and your date are ok (3, 3)
#
li $v0, 44
li $a0, 3
li $a1, 3
jal dateFashion
li $at, 1
beq $at, $v0, pass__102
move $a3, $v0
li $a2, 1
la $a0, test_name__102__1
la $a1, reg_name__102__1
jal fail
pass__102:

#
# dateFashion returns 1 if both you and your date are ok (3, 4)
#
li $v0, 44
li $a0, 3
li $a1, 4
jal dateFashion
li $at, 1
beq $at, $v0, pass__103
move $a3, $v0
li $a2, 1
la $a0, test_name__103__1
la $a1, reg_name__103__1
jal fail
pass__103:

#
# dateFashion returns 1 if both you and your date are ok (3, 5)
#
li $v0, 44
li $a0, 3
li $a1, 5
jal dateFashion
li $at, 1
beq $at, $v0, pass__104
move $a3, $v0
li $a2, 1
la $a0, test_name__104__1
la $a1, reg_name__104__1
jal fail
pass__104:

#
# dateFashion returns 1 if both you and your date are ok (3, 6)
#
li $v0, 44
li $a0, 3
li $a1, 6
jal dateFashion
li $at, 1
beq $at, $v0, pass__105
move $a3, $v0
li $a2, 1
la $a0, test_name__105__1
la $a1, reg_name__105__1
jal fail
pass__105:

#
# dateFashion returns 1 if both you and your date are ok (3, 7)
#
li $v0, 44
li $a0, 3
li $a1, 7
jal dateFashion
li $at, 1
beq $at, $v0, pass__106
move $a3, $v0
li $a2, 1
la $a0, test_name__106__1
la $a1, reg_name__106__1
jal fail
pass__106:

#
# dateFashion returns 1 if both you and your date are ok (4, 3)
#
li $v0, 44
li $a0, 4
li $a1, 3
jal dateFashion
li $at, 1
beq $at, $v0, pass__107
move $a3, $v0
li $a2, 1
la $a0, test_name__107__1
la $a1, reg_name__107__1
jal fail
pass__107:

#
# dateFashion returns 1 if both you and your date are ok (4, 4)
#
li $v0, 44
li $a0, 4
li $a1, 4
jal dateFashion
li $at, 1
beq $at, $v0, pass__108
move $a3, $v0
li $a2, 1
la $a0, test_name__108__1
la $a1, reg_name__108__1
jal fail
pass__108:

#
# dateFashion returns 1 if both you and your date are ok (4, 5)
#
li $v0, 44
li $a0, 4
li $a1, 5
jal dateFashion
li $at, 1
beq $at, $v0, pass__109
move $a3, $v0
li $a2, 1
la $a0, test_name__109__1
la $a1, reg_name__109__1
jal fail
pass__109:

#
# dateFashion returns 1 if both you and your date are ok (4, 6)
#
li $v0, 44
li $a0, 4
li $a1, 6
jal dateFashion
li $at, 1
beq $at, $v0, pass__110
move $a3, $v0
li $a2, 1
la $a0, test_name__110__1
la $a1, reg_name__110__1
jal fail
pass__110:

#
# dateFashion returns 1 if both you and your date are ok (4, 7)
#
li $v0, 44
li $a0, 4
li $a1, 7
jal dateFashion
li $at, 1
beq $at, $v0, pass__111
move $a3, $v0
li $a2, 1
la $a0, test_name__111__1
la $a1, reg_name__111__1
jal fail
pass__111:

#
# dateFashion returns 1 if both you and your date are ok (5, 3)
#
li $v0, 44
li $a0, 5
li $a1, 3
jal dateFashion
li $at, 1
beq $at, $v0, pass__112
move $a3, $v0
li $a2, 1
la $a0, test_name__112__1
la $a1, reg_name__112__1
jal fail
pass__112:

#
# dateFashion returns 1 if both you and your date are ok (5, 4)
#
li $v0, 44
li $a0, 5
li $a1, 4
jal dateFashion
li $at, 1
beq $at, $v0, pass__113
move $a3, $v0
li $a2, 1
la $a0, test_name__113__1
la $a1, reg_name__113__1
jal fail
pass__113:

#
# dateFashion returns 1 if both you and your date are ok (5, 5)
#
li $v0, 44
li $a0, 5
li $a1, 5
jal dateFashion
li $at, 1
beq $at, $v0, pass__114
move $a3, $v0
li $a2, 1
la $a0, test_name__114__1
la $a1, reg_name__114__1
jal fail
pass__114:

#
# dateFashion returns 1 if both you and your date are ok (5, 6)
#
li $v0, 44
li $a0, 5
li $a1, 6
jal dateFashion
li $at, 1
beq $at, $v0, pass__115
move $a3, $v0
li $a2, 1
la $a0, test_name__115__1
la $a1, reg_name__115__1
jal fail
pass__115:

#
# dateFashion returns 1 if both you and your date are ok (5, 7)
#
li $v0, 44
li $a0, 5
li $a1, 7
jal dateFashion
li $at, 1
beq $at, $v0, pass__116
move $a3, $v0
li $a2, 1
la $a0, test_name__116__1
la $a1, reg_name__116__1
jal fail
pass__116:

#
# dateFashion returns 1 if both you and your date are ok (6, 3)
#
li $v0, 44
li $a0, 6
li $a1, 3
jal dateFashion
li $at, 1
beq $at, $v0, pass__117
move $a3, $v0
li $a2, 1
la $a0, test_name__117__1
la $a1, reg_name__117__1
jal fail
pass__117:

#
# dateFashion returns 1 if both you and your date are ok (6, 4)
#
li $v0, 44
li $a0, 6
li $a1, 4
jal dateFashion
li $at, 1
beq $at, $v0, pass__118
move $a3, $v0
li $a2, 1
la $a0, test_name__118__1
la $a1, reg_name__118__1
jal fail
pass__118:

#
# dateFashion returns 1 if both you and your date are ok (6, 5)
#
li $v0, 44
li $a0, 6
li $a1, 5
jal dateFashion
li $at, 1
beq $at, $v0, pass__119
move $a3, $v0
li $a2, 1
la $a0, test_name__119__1
la $a1, reg_name__119__1
jal fail
pass__119:

#
# dateFashion returns 1 if both you and your date are ok (6, 6)
#
li $v0, 44
li $a0, 6
li $a1, 6
jal dateFashion
li $at, 1
beq $at, $v0, pass__120
move $a3, $v0
li $a2, 1
la $a0, test_name__120__1
la $a1, reg_name__120__1
jal fail
pass__120:

#
# dateFashion returns 1 if both you and your date are ok (6, 7)
#
li $v0, 44
li $a0, 6
li $a1, 7
jal dateFashion
li $at, 1
beq $at, $v0, pass__121
move $a3, $v0
li $a2, 1
la $a0, test_name__121__1
la $a1, reg_name__121__1
jal fail
pass__121:

#
# dateFashion returns 1 if both you and your date are ok (7, 3)
#
li $v0, 44
li $a0, 7
li $a1, 3
jal dateFashion
li $at, 1
beq $at, $v0, pass__122
move $a3, $v0
li $a2, 1
la $a0, test_name__122__1
la $a1, reg_name__122__1
jal fail
pass__122:

#
# dateFashion returns 1 if both you and your date are ok (7, 4)
#
li $v0, 44
li $a0, 7
li $a1, 4
jal dateFashion
li $at, 1
beq $at, $v0, pass__123
move $a3, $v0
li $a2, 1
la $a0, test_name__123__1
la $a1, reg_name__123__1
jal fail
pass__123:

#
# dateFashion returns 1 if both you and your date are ok (7, 5)
#
li $v0, 44
li $a0, 7
li $a1, 5
jal dateFashion
li $at, 1
beq $at, $v0, pass__124
move $a3, $v0
li $a2, 1
la $a0, test_name__124__1
la $a1, reg_name__124__1
jal fail
pass__124:

#
# dateFashion returns 1 if both you and your date are ok (7, 6)
#
li $v0, 44
li $a0, 7
li $a1, 6
jal dateFashion
li $at, 1
beq $at, $v0, pass__125
move $a3, $v0
li $a2, 1
la $a0, test_name__125__1
la $a1, reg_name__125__1
jal fail
pass__125:

#
# dateFashion returns 1 if both you and your date are ok (7, 7)
#
li $v0, 44
li $a0, 7
li $a1, 7
jal dateFashion
li $at, 1
beq $at, $v0, pass__126
move $a3, $v0
li $a2, 1
la $a0, test_name__126__1
la $a1, reg_name__126__1
jal fail
pass__126:

#
# dateFashion returns 2 if you are stylish (8) and date is ok (3)
#
li $v0, 44
li $a0, 8
li $a1, 3
jal dateFashion
li $at, 2
beq $at, $v0, pass__127
move $a3, $v0
li $a2, 2
la $a0, test_name__127__1
la $a1, reg_name__127__1
jal fail
pass__127:

#
# dateFashion returns 2 if you are stylish (8) and date is ok (4)
#
li $v0, 44
li $a0, 8
li $a1, 4
jal dateFashion
li $at, 2
beq $at, $v0, pass__128
move $a3, $v0
li $a2, 2
la $a0, test_name__128__1
la $a1, reg_name__128__1
jal fail
pass__128:

#
# dateFashion returns 2 if you are stylish (8) and date is ok (5)
#
li $v0, 44
li $a0, 8
li $a1, 5
jal dateFashion
li $at, 2
beq $at, $v0, pass__129
move $a3, $v0
li $a2, 2
la $a0, test_name__129__1
la $a1, reg_name__129__1
jal fail
pass__129:

#
# dateFashion returns 2 if you are stylish (8) and date is ok (6)
#
li $v0, 44
li $a0, 8
li $a1, 6
jal dateFashion
li $at, 2
beq $at, $v0, pass__130
move $a3, $v0
li $a2, 2
la $a0, test_name__130__1
la $a1, reg_name__130__1
jal fail
pass__130:

#
# dateFashion returns 2 if you are stylish (8) and date is ok (7)
#
li $v0, 44
li $a0, 8
li $a1, 7
jal dateFashion
li $at, 2
beq $at, $v0, pass__131
move $a3, $v0
li $a2, 2
la $a0, test_name__131__1
la $a1, reg_name__131__1
jal fail
pass__131:

#
# dateFashion returns 2 if you are stylish (9) and date is ok (3)
#
li $v0, 44
li $a0, 9
li $a1, 3
jal dateFashion
li $at, 2
beq $at, $v0, pass__132
move $a3, $v0
li $a2, 2
la $a0, test_name__132__1
la $a1, reg_name__132__1
jal fail
pass__132:

#
# dateFashion returns 2 if you are stylish (9) and date is ok (4)
#
li $v0, 44
li $a0, 9
li $a1, 4
jal dateFashion
li $at, 2
beq $at, $v0, pass__133
move $a3, $v0
li $a2, 2
la $a0, test_name__133__1
la $a1, reg_name__133__1
jal fail
pass__133:

#
# dateFashion returns 2 if you are stylish (9) and date is ok (5)
#
li $v0, 44
li $a0, 9
li $a1, 5
jal dateFashion
li $at, 2
beq $at, $v0, pass__134
move $a3, $v0
li $a2, 2
la $a0, test_name__134__1
la $a1, reg_name__134__1
jal fail
pass__134:

#
# dateFashion returns 2 if you are stylish (9) and date is ok (6)
#
li $v0, 44
li $a0, 9
li $a1, 6
jal dateFashion
li $at, 2
beq $at, $v0, pass__135
move $a3, $v0
li $a2, 2
la $a0, test_name__135__1
la $a1, reg_name__135__1
jal fail
pass__135:

#
# dateFashion returns 2 if you are stylish (9) and date is ok (7)
#
li $v0, 44
li $a0, 9
li $a1, 7
jal dateFashion
li $at, 2
beq $at, $v0, pass__136
move $a3, $v0
li $a2, 2
la $a0, test_name__136__1
la $a1, reg_name__136__1
jal fail
pass__136:

#
# dateFashion returns 2 if you are stylish (10) and date is ok (3)
#
li $v0, 44
li $a0, 10
li $a1, 3
jal dateFashion
li $at, 2
beq $at, $v0, pass__137
move $a3, $v0
li $a2, 2
la $a0, test_name__137__1
la $a1, reg_name__137__1
jal fail
pass__137:

#
# dateFashion returns 2 if you are stylish (10) and date is ok (4)
#
li $v0, 44
li $a0, 10
li $a1, 4
jal dateFashion
li $at, 2
beq $at, $v0, pass__138
move $a3, $v0
li $a2, 2
la $a0, test_name__138__1
la $a1, reg_name__138__1
jal fail
pass__138:

#
# dateFashion returns 2 if you are stylish (10) and date is ok (5)
#
li $v0, 44
li $a0, 10
li $a1, 5
jal dateFashion
li $at, 2
beq $at, $v0, pass__139
move $a3, $v0
li $a2, 2
la $a0, test_name__139__1
la $a1, reg_name__139__1
jal fail
pass__139:

#
# dateFashion returns 2 if you are stylish (10) and date is ok (6)
#
li $v0, 44
li $a0, 10
li $a1, 6
jal dateFashion
li $at, 2
beq $at, $v0, pass__140
move $a3, $v0
li $a2, 2
la $a0, test_name__140__1
la $a1, reg_name__140__1
jal fail
pass__140:

#
# dateFashion returns 2 if you are stylish (10) and date is ok (7)
#
li $v0, 44
li $a0, 10
li $a1, 7
jal dateFashion
li $at, 2
beq $at, $v0, pass__141
move $a3, $v0
li $a2, 2
la $a0, test_name__141__1
la $a1, reg_name__141__1
jal fail
pass__141:

#
# dateFashion returns 2 if date is stylish (8) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__142
move $a3, $v0
li $a2, 2
la $a0, test_name__142__1
la $a1, reg_name__142__1
jal fail
pass__142:

#
# dateFashion returns 2 if date is stylish (8) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__143
move $a3, $v0
li $a2, 2
la $a0, test_name__143__1
la $a1, reg_name__143__1
jal fail
pass__143:

#
# dateFashion returns 2 if date is stylish (8) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__144
move $a3, $v0
li $a2, 2
la $a0, test_name__144__1
la $a1, reg_name__144__1
jal fail
pass__144:

#
# dateFashion returns 2 if date is stylish (8) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__145
move $a3, $v0
li $a2, 2
la $a0, test_name__145__1
la $a1, reg_name__145__1
jal fail
pass__145:

#
# dateFashion returns 2 if date is stylish (8) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__146
move $a3, $v0
li $a2, 2
la $a0, test_name__146__1
la $a1, reg_name__146__1
jal fail
pass__146:

#
# dateFashion returns 2 if date is stylish (9) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__147
move $a3, $v0
li $a2, 2
la $a0, test_name__147__1
la $a1, reg_name__147__1
jal fail
pass__147:

#
# dateFashion returns 2 if date is stylish (9) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__148
move $a3, $v0
li $a2, 2
la $a0, test_name__148__1
la $a1, reg_name__148__1
jal fail
pass__148:

#
# dateFashion returns 2 if date is stylish (9) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__149
move $a3, $v0
li $a2, 2
la $a0, test_name__149__1
la $a1, reg_name__149__1
jal fail
pass__149:

#
# dateFashion returns 2 if date is stylish (9) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__150
move $a3, $v0
li $a2, 2
la $a0, test_name__150__1
la $a1, reg_name__150__1
jal fail
pass__150:

#
# dateFashion returns 2 if date is stylish (9) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__151
move $a3, $v0
li $a2, 2
la $a0, test_name__151__1
la $a1, reg_name__151__1
jal fail
pass__151:

#
# dateFashion returns 2 if date is stylish (10) and you are ok (3)
#
li $v0, 44
li $a0, 3
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__152
move $a3, $v0
li $a2, 2
la $a0, test_name__152__1
la $a1, reg_name__152__1
jal fail
pass__152:

#
# dateFashion returns 2 if date is stylish (10) and you are ok (4)
#
li $v0, 44
li $a0, 4
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__153
move $a3, $v0
li $a2, 2
la $a0, test_name__153__1
la $a1, reg_name__153__1
jal fail
pass__153:

#
# dateFashion returns 2 if date is stylish (10) and you are ok (5)
#
li $v0, 44
li $a0, 5
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__154
move $a3, $v0
li $a2, 2
la $a0, test_name__154__1
la $a1, reg_name__154__1
jal fail
pass__154:

#
# dateFashion returns 2 if date is stylish (10) and you are ok (6)
#
li $v0, 44
li $a0, 6
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__155
move $a3, $v0
li $a2, 2
la $a0, test_name__155__1
la $a1, reg_name__155__1
jal fail
pass__155:

#
# dateFashion returns 2 if date is stylish (10) and you are ok (7)
#
li $v0, 44
li $a0, 7
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__156
move $a3, $v0
li $a2, 2
la $a0, test_name__156__1
la $a1, reg_name__156__1
jal fail
pass__156:

#
# dateFashion returns 2 if both you and your date are stylish (8, 8)
#
li $v0, 44
li $a0, 8
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__157
move $a3, $v0
li $a2, 2
la $a0, test_name__157__1
la $a1, reg_name__157__1
jal fail
pass__157:

#
# dateFashion returns 2 if both you and your date are stylish (8, 9)
#
li $v0, 44
li $a0, 8
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__158
move $a3, $v0
li $a2, 2
la $a0, test_name__158__1
la $a1, reg_name__158__1
jal fail
pass__158:

#
# dateFashion returns 2 if both you and your date are stylish (8, 10)
#
li $v0, 44
li $a0, 8
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__159
move $a3, $v0
li $a2, 2
la $a0, test_name__159__1
la $a1, reg_name__159__1
jal fail
pass__159:

#
# dateFashion returns 2 if both you and your date are stylish (9, 8)
#
li $v0, 44
li $a0, 9
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__160
move $a3, $v0
li $a2, 2
la $a0, test_name__160__1
la $a1, reg_name__160__1
jal fail
pass__160:

#
# dateFashion returns 2 if both you and your date are stylish (9, 9)
#
li $v0, 44
li $a0, 9
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__161
move $a3, $v0
li $a2, 2
la $a0, test_name__161__1
la $a1, reg_name__161__1
jal fail
pass__161:

#
# dateFashion returns 2 if both you and your date are stylish (9, 10)
#
li $v0, 44
li $a0, 9
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__162
move $a3, $v0
li $a2, 2
la $a0, test_name__162__1
la $a1, reg_name__162__1
jal fail
pass__162:

#
# dateFashion returns 2 if both you and your date are stylish (10, 8)
#
li $v0, 44
li $a0, 10
li $a1, 8
jal dateFashion
li $at, 2
beq $at, $v0, pass__163
move $a3, $v0
li $a2, 2
la $a0, test_name__163__1
la $a1, reg_name__163__1
jal fail
pass__163:

#
# dateFashion returns 2 if both you and your date are stylish (10, 9)
#
li $v0, 44
li $a0, 10
li $a1, 9
jal dateFashion
li $at, 2
beq $at, $v0, pass__164
move $a3, $v0
li $a2, 2
la $a0, test_name__164__1
la $a1, reg_name__164__1
jal fail
pass__164:

#
# dateFashion returns 2 if both you and your date are stylish (10, 10)
#
li $v0, 44
li $a0, 10
li $a1, 10
jal dateFashion
li $at, 2
beq $at, $v0, pass__165
move $a3, $v0
li $a2, 2
la $a0, test_name__165__1
la $a1, reg_name__165__1
jal fail
pass__165:

#
# end of tests
#

.data
s_pass: .asciiz "All tests pass."

.text
la $a0, s_pass
li $v0, 4
syscall

li $v0, 10
syscall
################################################################################
#
# fail (test_name, register_label, expected_value, observed_value)
#
# Called when a test fails.
# prints a fail message and exits
# "Test  failed.  Register  expected to be ; but was ."
#
################################################################################

.data 

s_test: .asciiz "Test \""
s_fail: .asciiz "\" failed. "
s_expected: .asciiz " expected to be "
s_observed: .asciiz "; but was "
s_period: .asciiz "."

r: .ascii "v0"

.text	
fail:				

# Save name parameter in $t8
move $t8, $a0	

# Print "Test "
li $v0, 4
la $a0, s_test
syscall 

# Print the name of the test
move $a0, $t8
syscall

# Print " failed. "
la $a0, s_fail
syscall

# print name of register
move $a0, $a1
syscall

# Print " expected to be "
la $a0, s_expected
syscall

# print expected value
li $v0, 1
move $a0, $a2
syscall

# print "; but was "
li $v0, 4
la $a0, s_observed
syscall

# print observed value
li $v0, 1
move $a0, $a3
syscall

# print "."
li $v0, 4
la $a0, s_period
syscall
	
# exit
li $v0, 10 
syscall

.data
# Data Labels:
test_name__1__1: .asciiz "makes10 recognizes a == 10"
reg_name__1__1: .asciiz "Register v0"
test_name__2__1: .asciiz "makes10 recognizes b == 10"
reg_name__2__1: .asciiz "Register v0"
test_name__3__1: .asciiz "makes10 recognizes sum == 10"
reg_name__3__1: .asciiz "Register v0"
test_name__4__1: .asciiz "makes10 recognizes no 10"
reg_name__4__1: .asciiz "Register v0"
test_name__5__1: .asciiz "makes10 recognizes 1 + 9 is 10"
reg_name__5__1: .asciiz "Register v0"
test_name__6__1: .asciiz "makes10 recognizes 9 + 1 is 10"
reg_name__6__1: .asciiz "Register v0"
test_name__7__1: .asciiz "makes10 recognizes 2 + 8 is 10"
reg_name__7__1: .asciiz "Register v0"
test_name__8__1: .asciiz "makes10 recognizes 8 + 2 is 10"
reg_name__8__1: .asciiz "Register v0"
test_name__9__1: .asciiz "makes10 recognizes 3 + 7 is 10"
reg_name__9__1: .asciiz "Register v0"
test_name__10__1: .asciiz "makes10 recognizes 7 + 3 is 10"
reg_name__10__1: .asciiz "Register v0"
test_name__11__1: .asciiz "makes10 recognizes 4 + 6 is 10"
reg_name__11__1: .asciiz "Register v0"
test_name__12__1: .asciiz "makes10 recognizes 6 + 4 is 10"
reg_name__12__1: .asciiz "Register v0"
test_name__13__1: .asciiz "makes10 recognizes 5 + 5 is 10"
reg_name__13__1: .asciiz "Register v0"
test_name__14__1: .asciiz "makes10 recognizes 5 + 5 is 10"
reg_name__14__1: .asciiz "Register v0"
test_name__15__1: .asciiz "makes10 recognizes 6 + 4 is 10"
reg_name__15__1: .asciiz "Register v0"
test_name__16__1: .asciiz "makes10 recognizes 4 + 6 is 10"
reg_name__16__1: .asciiz "Register v0"
test_name__17__1: .asciiz "makes10 recognizes 7 + 3 is 10"
reg_name__17__1: .asciiz "Register v0"
test_name__18__1: .asciiz "makes10 recognizes 3 + 7 is 10"
reg_name__18__1: .asciiz "Register v0"
test_name__19__1: .asciiz "makes10 recognizes 8 + 2 is 10"
reg_name__19__1: .asciiz "Register v0"
test_name__20__1: .asciiz "makes10 recognizes 2 + 8 is 10"
reg_name__20__1: .asciiz "Register v0"
test_name__21__1: .asciiz "makes10 recognizes 9 + 1 is 10"
reg_name__21__1: .asciiz "Register v0"
test_name__22__1: .asciiz "makes10 recognizes 1 + 9 is 10"
reg_name__22__1: .asciiz "Register v0"
test_name__23__1: .asciiz "makes10 recognizes 10 + 0 is 10"
reg_name__23__1: .asciiz "Register v0"
test_name__24__1: .asciiz "makes10 recognizes 0 + 10 is 10"
reg_name__24__1: .asciiz "Register v0"
test_name__25__1: .asciiz "makes10 recognizes 11 + -1 is 10"
reg_name__25__1: .asciiz "Register v0"
test_name__26__1: .asciiz "makes10 recognizes -1 + 11 is 10"
reg_name__26__1: .asciiz "Register v0"
test_name__27__1: .asciiz "makes10 recognizes 12 + -2 is 10"
reg_name__27__1: .asciiz "Register v0"
test_name__28__1: .asciiz "makes10 recognizes -2 + 12 is 10"
reg_name__28__1: .asciiz "Register v0"
test_name__29__1: .asciiz "makes10 recognizes that 1 3 is not 10"
reg_name__29__1: .asciiz "Register v0"
test_name__30__1: .asciiz "makes10 recognizes that 2 9 is not 10"
reg_name__30__1: .asciiz "Register v0"
test_name__31__1: .asciiz "makes10 recognizes that 3 6 is not 10"
reg_name__31__1: .asciiz "Register v0"
test_name__32__1: .asciiz "intMax handles positive numbers ([2, 5, 6])"
reg_name__32__1: .asciiz "Register v0"
test_name__33__1: .asciiz "intMax handles positive numbers ([2, 6, 5])"
reg_name__33__1: .asciiz "Register v0"
test_name__34__1: .asciiz "intMax handles positive numbers ([5, 2, 6])"
reg_name__34__1: .asciiz "Register v0"
test_name__35__1: .asciiz "intMax handles positive numbers ([5, 6, 2])"
reg_name__35__1: .asciiz "Register v0"
test_name__36__1: .asciiz "intMax handles positive numbers ([6, 2, 5])"
reg_name__36__1: .asciiz "Register v0"
test_name__37__1: .asciiz "intMax handles positive numbers ([6, 5, 2])"
reg_name__37__1: .asciiz "Register v0"
test_name__38__1: .asciiz "intMax handles two small numbers ([2, 2, 6])"
reg_name__38__1: .asciiz "Register v0"
test_name__39__1: .asciiz "intMax handles two small numbers ([2, 6, 2])"
reg_name__39__1: .asciiz "Register v0"
test_name__40__1: .asciiz "intMax handles two small numbers ([2, 2, 6])"
reg_name__40__1: .asciiz "Register v0"
test_name__41__1: .asciiz "intMax handles two small numbers ([2, 6, 2])"
reg_name__41__1: .asciiz "Register v0"
test_name__42__1: .asciiz "intMax handles two small numbers ([6, 2, 2])"
reg_name__42__1: .asciiz "Register v0"
test_name__43__1: .asciiz "intMax handles two small numbers ([6, 2, 2])"
reg_name__43__1: .asciiz "Register v0"
test_name__44__1: .asciiz "intMax handles two large numbers ([2, 6, 6])"
reg_name__44__1: .asciiz "Register v0"
test_name__45__1: .asciiz "intMax handles two large numbers ([2, 6, 6])"
reg_name__45__1: .asciiz "Register v0"
test_name__46__1: .asciiz "intMax handles two large numbers ([6, 2, 6])"
reg_name__46__1: .asciiz "Register v0"
test_name__47__1: .asciiz "intMax handles two large numbers ([6, 6, 2])"
reg_name__47__1: .asciiz "Register v0"
test_name__48__1: .asciiz "intMax handles two large numbers ([6, 2, 6])"
reg_name__48__1: .asciiz "Register v0"
test_name__49__1: .asciiz "intMax handles two large numbers ([6, 6, 2])"
reg_name__49__1: .asciiz "Register v0"
test_name__50__1: .asciiz "intMax handles negative numbers ([-3, 0, 2])"
reg_name__50__1: .asciiz "Register v0"
test_name__51__1: .asciiz "intMax handles negative numbers ([-3, 2, 0])"
reg_name__51__1: .asciiz "Register v0"
test_name__52__1: .asciiz "intMax handles negative numbers ([0, -3, 2])"
reg_name__52__1: .asciiz "Register v0"
test_name__53__1: .asciiz "intMax handles negative numbers ([0, 2, -3])"
reg_name__53__1: .asciiz "Register v0"
test_name__54__1: .asciiz "intMax handles negative numbers ([2, -3, 0])"
reg_name__54__1: .asciiz "Register v0"
test_name__55__1: .asciiz "intMax handles negative numbers ([2, 0, -3])"
reg_name__55__1: .asciiz "Register v0"
test_name__56__1: .asciiz "intMax handles all numbers ([-3, -5, -7])"
reg_name__56__1: .asciiz "Register v0"
test_name__57__1: .asciiz "intMax handles all numbers ([-3, -7, -5])"
reg_name__57__1: .asciiz "Register v0"
test_name__58__1: .asciiz "intMax handles all numbers ([-5, -3, -7])"
reg_name__58__1: .asciiz "Register v0"
test_name__59__1: .asciiz "intMax handles all numbers ([-5, -7, -3])"
reg_name__59__1: .asciiz "Register v0"
test_name__60__1: .asciiz "intMax handles all numbers ([-7, -3, -5])"
reg_name__60__1: .asciiz "Register v0"
test_name__61__1: .asciiz "intMax handles all numbers ([-7, -5, -3])"
reg_name__61__1: .asciiz "Register v0"
test_name__62__1: .asciiz "close10 returns the correct answer for [8, 13]"
reg_name__62__1: .asciiz "Register v0"
test_name__63__1: .asciiz "close10 returns the correct answer for [13, 8]"
reg_name__63__1: .asciiz "Register v0"
test_name__64__1: .asciiz "close10 returns the correct answer for [13, 7]"
reg_name__64__1: .asciiz "Register v0"
test_name__65__1: .asciiz "close10 returns the correct answer for [7, 13]"
reg_name__65__1: .asciiz "Register v0"
test_name__66__1: .asciiz "close10 returns the correct answer for [9, 13]"
reg_name__66__1: .asciiz "Register v0"
test_name__67__1: .asciiz "close10 returns the correct answer for [10, 12]"
reg_name__67__1: .asciiz "Register v0"
test_name__68__1: .asciiz "close10 returns the correct answer for [11, 10]"
reg_name__68__1: .asciiz "Register v0"
test_name__69__1: .asciiz "close10 returns the correct answer for [5, 21]"
reg_name__69__1: .asciiz "Register v0"
test_name__70__1: .asciiz "close10 returns the correct answer for [0, 20]"
reg_name__70__1: .asciiz "Register v0"
test_name__71__1: .asciiz "close10 returns the correct answer for [10, 10]"
reg_name__71__1: .asciiz "Register v0"
test_name__72__1: .asciiz "dateFashion returns 0 if you are unstylish (0) and date is ok (3)"
reg_name__72__1: .asciiz "Register v0"
test_name__73__1: .asciiz "dateFashion returns 0 if you are unstylish (0) and date is ok (4)"
reg_name__73__1: .asciiz "Register v0"
test_name__74__1: .asciiz "dateFashion returns 0 if you are unstylish (0) and date is ok (5)"
reg_name__74__1: .asciiz "Register v0"
test_name__75__1: .asciiz "dateFashion returns 0 if you are unstylish (0) and date is ok (6)"
reg_name__75__1: .asciiz "Register v0"
test_name__76__1: .asciiz "dateFashion returns 0 if you are unstylish (0) and date is ok (7)"
reg_name__76__1: .asciiz "Register v0"
test_name__77__1: .asciiz "dateFashion returns 0 if you are unstylish (1) and date is ok (3)"
reg_name__77__1: .asciiz "Register v0"
test_name__78__1: .asciiz "dateFashion returns 0 if you are unstylish (1) and date is ok (4)"
reg_name__78__1: .asciiz "Register v0"
test_name__79__1: .asciiz "dateFashion returns 0 if you are unstylish (1) and date is ok (5)"
reg_name__79__1: .asciiz "Register v0"
test_name__80__1: .asciiz "dateFashion returns 0 if you are unstylish (1) and date is ok (6)"
reg_name__80__1: .asciiz "Register v0"
test_name__81__1: .asciiz "dateFashion returns 0 if you are unstylish (1) and date is ok (7)"
reg_name__81__1: .asciiz "Register v0"
test_name__82__1: .asciiz "dateFashion returns 0 if you are unstylish (2) and date is ok (3)"
reg_name__82__1: .asciiz "Register v0"
test_name__83__1: .asciiz "dateFashion returns 0 if you are unstylish (2) and date is ok (4)"
reg_name__83__1: .asciiz "Register v0"
test_name__84__1: .asciiz "dateFashion returns 0 if you are unstylish (2) and date is ok (5)"
reg_name__84__1: .asciiz "Register v0"
test_name__85__1: .asciiz "dateFashion returns 0 if you are unstylish (2) and date is ok (6)"
reg_name__85__1: .asciiz "Register v0"
test_name__86__1: .asciiz "dateFashion returns 0 if you are unstylish (2) and date is ok (7)"
reg_name__86__1: .asciiz "Register v0"
test_name__87__1: .asciiz "dateFashion returns 0 if date is unstylish (0) and you are ok (3)"
reg_name__87__1: .asciiz "Register v0"
test_name__88__1: .asciiz "dateFashion returns 0 if date is unstylish (0) and you are ok (4)"
reg_name__88__1: .asciiz "Register v0"
test_name__89__1: .asciiz "dateFashion returns 0 if date is unstylish (0) and you are ok (5)"
reg_name__89__1: .asciiz "Register v0"
test_name__90__1: .asciiz "dateFashion returns 0 if date is unstylish (0) and you are ok (6)"
reg_name__90__1: .asciiz "Register v0"
test_name__91__1: .asciiz "dateFashion returns 0 if date is unstylish (0) and you are ok (7)"
reg_name__91__1: .asciiz "Register v0"
test_name__92__1: .asciiz "dateFashion returns 0 if date is unstylish (1) and you are ok (3)"
reg_name__92__1: .asciiz "Register v0"
test_name__93__1: .asciiz "dateFashion returns 0 if date is unstylish (1) and you are ok (4)"
reg_name__93__1: .asciiz "Register v0"
test_name__94__1: .asciiz "dateFashion returns 0 if date is unstylish (1) and you are ok (5)"
reg_name__94__1: .asciiz "Register v0"
test_name__95__1: .asciiz "dateFashion returns 0 if date is unstylish (1) and you are ok (6)"
reg_name__95__1: .asciiz "Register v0"
test_name__96__1: .asciiz "dateFashion returns 0 if date is unstylish (1) and you are ok (7)"
reg_name__96__1: .asciiz "Register v0"
test_name__97__1: .asciiz "dateFashion returns 0 if date is unstylish (2) and you are ok (3)"
reg_name__97__1: .asciiz "Register v0"
test_name__98__1: .asciiz "dateFashion returns 0 if date is unstylish (2) and you are ok (4)"
reg_name__98__1: .asciiz "Register v0"
test_name__99__1: .asciiz "dateFashion returns 0 if date is unstylish (2) and you are ok (5)"
reg_name__99__1: .asciiz "Register v0"
test_name__100__1: .asciiz "dateFashion returns 0 if date is unstylish (2) and you are ok (6)"
reg_name__100__1: .asciiz "Register v0"
test_name__101__1: .asciiz "dateFashion returns 0 if date is unstylish (2) and you are ok (7)"
reg_name__101__1: .asciiz "Register v0"
test_name__102__1: .asciiz "dateFashion returns 1 if both you and your date are ok (3, 3)"
reg_name__102__1: .asciiz "Register v0"
test_name__103__1: .asciiz "dateFashion returns 1 if both you and your date are ok (3, 4)"
reg_name__103__1: .asciiz "Register v0"
test_name__104__1: .asciiz "dateFashion returns 1 if both you and your date are ok (3, 5)"
reg_name__104__1: .asciiz "Register v0"
test_name__105__1: .asciiz "dateFashion returns 1 if both you and your date are ok (3, 6)"
reg_name__105__1: .asciiz "Register v0"
test_name__106__1: .asciiz "dateFashion returns 1 if both you and your date are ok (3, 7)"
reg_name__106__1: .asciiz "Register v0"
test_name__107__1: .asciiz "dateFashion returns 1 if both you and your date are ok (4, 3)"
reg_name__107__1: .asciiz "Register v0"
test_name__108__1: .asciiz "dateFashion returns 1 if both you and your date are ok (4, 4)"
reg_name__108__1: .asciiz "Register v0"
test_name__109__1: .asciiz "dateFashion returns 1 if both you and your date are ok (4, 5)"
reg_name__109__1: .asciiz "Register v0"
test_name__110__1: .asciiz "dateFashion returns 1 if both you and your date are ok (4, 6)"
reg_name__110__1: .asciiz "Register v0"
test_name__111__1: .asciiz "dateFashion returns 1 if both you and your date are ok (4, 7)"
reg_name__111__1: .asciiz "Register v0"
test_name__112__1: .asciiz "dateFashion returns 1 if both you and your date are ok (5, 3)"
reg_name__112__1: .asciiz "Register v0"
test_name__113__1: .asciiz "dateFashion returns 1 if both you and your date are ok (5, 4)"
reg_name__113__1: .asciiz "Register v0"
test_name__114__1: .asciiz "dateFashion returns 1 if both you and your date are ok (5, 5)"
reg_name__114__1: .asciiz "Register v0"
test_name__115__1: .asciiz "dateFashion returns 1 if both you and your date are ok (5, 6)"
reg_name__115__1: .asciiz "Register v0"
test_name__116__1: .asciiz "dateFashion returns 1 if both you and your date are ok (5, 7)"
reg_name__116__1: .asciiz "Register v0"
test_name__117__1: .asciiz "dateFashion returns 1 if both you and your date are ok (6, 3)"
reg_name__117__1: .asciiz "Register v0"
test_name__118__1: .asciiz "dateFashion returns 1 if both you and your date are ok (6, 4)"
reg_name__118__1: .asciiz "Register v0"
test_name__119__1: .asciiz "dateFashion returns 1 if both you and your date are ok (6, 5)"
reg_name__119__1: .asciiz "Register v0"
test_name__120__1: .asciiz "dateFashion returns 1 if both you and your date are ok (6, 6)"
reg_name__120__1: .asciiz "Register v0"
test_name__121__1: .asciiz "dateFashion returns 1 if both you and your date are ok (6, 7)"
reg_name__121__1: .asciiz "Register v0"
test_name__122__1: .asciiz "dateFashion returns 1 if both you and your date are ok (7, 3)"
reg_name__122__1: .asciiz "Register v0"
test_name__123__1: .asciiz "dateFashion returns 1 if both you and your date are ok (7, 4)"
reg_name__123__1: .asciiz "Register v0"
test_name__124__1: .asciiz "dateFashion returns 1 if both you and your date are ok (7, 5)"
reg_name__124__1: .asciiz "Register v0"
test_name__125__1: .asciiz "dateFashion returns 1 if both you and your date are ok (7, 6)"
reg_name__125__1: .asciiz "Register v0"
test_name__126__1: .asciiz "dateFashion returns 1 if both you and your date are ok (7, 7)"
reg_name__126__1: .asciiz "Register v0"
test_name__127__1: .asciiz "dateFashion returns 2 if you are stylish (8) and date is ok (3)"
reg_name__127__1: .asciiz "Register v0"
test_name__128__1: .asciiz "dateFashion returns 2 if you are stylish (8) and date is ok (4)"
reg_name__128__1: .asciiz "Register v0"
test_name__129__1: .asciiz "dateFashion returns 2 if you are stylish (8) and date is ok (5)"
reg_name__129__1: .asciiz "Register v0"
test_name__130__1: .asciiz "dateFashion returns 2 if you are stylish (8) and date is ok (6)"
reg_name__130__1: .asciiz "Register v0"
test_name__131__1: .asciiz "dateFashion returns 2 if you are stylish (8) and date is ok (7)"
reg_name__131__1: .asciiz "Register v0"
test_name__132__1: .asciiz "dateFashion returns 2 if you are stylish (9) and date is ok (3)"
reg_name__132__1: .asciiz "Register v0"
test_name__133__1: .asciiz "dateFashion returns 2 if you are stylish (9) and date is ok (4)"
reg_name__133__1: .asciiz "Register v0"
test_name__134__1: .asciiz "dateFashion returns 2 if you are stylish (9) and date is ok (5)"
reg_name__134__1: .asciiz "Register v0"
test_name__135__1: .asciiz "dateFashion returns 2 if you are stylish (9) and date is ok (6)"
reg_name__135__1: .asciiz "Register v0"
test_name__136__1: .asciiz "dateFashion returns 2 if you are stylish (9) and date is ok (7)"
reg_name__136__1: .asciiz "Register v0"
test_name__137__1: .asciiz "dateFashion returns 2 if you are stylish (10) and date is ok (3)"
reg_name__137__1: .asciiz "Register v0"
test_name__138__1: .asciiz "dateFashion returns 2 if you are stylish (10) and date is ok (4)"
reg_name__138__1: .asciiz "Register v0"
test_name__139__1: .asciiz "dateFashion returns 2 if you are stylish (10) and date is ok (5)"
reg_name__139__1: .asciiz "Register v0"
test_name__140__1: .asciiz "dateFashion returns 2 if you are stylish (10) and date is ok (6)"
reg_name__140__1: .asciiz "Register v0"
test_name__141__1: .asciiz "dateFashion returns 2 if you are stylish (10) and date is ok (7)"
reg_name__141__1: .asciiz "Register v0"
test_name__142__1: .asciiz "dateFashion returns 2 if date is stylish (8) and you are ok (3)"
reg_name__142__1: .asciiz "Register v0"
test_name__143__1: .asciiz "dateFashion returns 2 if date is stylish (8) and you are ok (4)"
reg_name__143__1: .asciiz "Register v0"
test_name__144__1: .asciiz "dateFashion returns 2 if date is stylish (8) and you are ok (5)"
reg_name__144__1: .asciiz "Register v0"
test_name__145__1: .asciiz "dateFashion returns 2 if date is stylish (8) and you are ok (6)"
reg_name__145__1: .asciiz "Register v0"
test_name__146__1: .asciiz "dateFashion returns 2 if date is stylish (8) and you are ok (7)"
reg_name__146__1: .asciiz "Register v0"
test_name__147__1: .asciiz "dateFashion returns 2 if date is stylish (9) and you are ok (3)"
reg_name__147__1: .asciiz "Register v0"
test_name__148__1: .asciiz "dateFashion returns 2 if date is stylish (9) and you are ok (4)"
reg_name__148__1: .asciiz "Register v0"
test_name__149__1: .asciiz "dateFashion returns 2 if date is stylish (9) and you are ok (5)"
reg_name__149__1: .asciiz "Register v0"
test_name__150__1: .asciiz "dateFashion returns 2 if date is stylish (9) and you are ok (6)"
reg_name__150__1: .asciiz "Register v0"
test_name__151__1: .asciiz "dateFashion returns 2 if date is stylish (9) and you are ok (7)"
reg_name__151__1: .asciiz "Register v0"
test_name__152__1: .asciiz "dateFashion returns 2 if date is stylish (10) and you are ok (3)"
reg_name__152__1: .asciiz "Register v0"
test_name__153__1: .asciiz "dateFashion returns 2 if date is stylish (10) and you are ok (4)"
reg_name__153__1: .asciiz "Register v0"
test_name__154__1: .asciiz "dateFashion returns 2 if date is stylish (10) and you are ok (5)"
reg_name__154__1: .asciiz "Register v0"
test_name__155__1: .asciiz "dateFashion returns 2 if date is stylish (10) and you are ok (6)"
reg_name__155__1: .asciiz "Register v0"
test_name__156__1: .asciiz "dateFashion returns 2 if date is stylish (10) and you are ok (7)"
reg_name__156__1: .asciiz "Register v0"
test_name__157__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (8, 8)"
reg_name__157__1: .asciiz "Register v0"
test_name__158__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (8, 9)"
reg_name__158__1: .asciiz "Register v0"
test_name__159__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (8, 10)"
reg_name__159__1: .asciiz "Register v0"
test_name__160__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (9, 8)"
reg_name__160__1: .asciiz "Register v0"
test_name__161__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (9, 9)"
reg_name__161__1: .asciiz "Register v0"
test_name__162__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (9, 10)"
reg_name__162__1: .asciiz "Register v0"
test_name__163__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (10, 8)"
reg_name__163__1: .asciiz "Register v0"
test_name__164__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (10, 9)"
reg_name__164__1: .asciiz "Register v0"
test_name__165__1: .asciiz "dateFashion returns 2 if both you and your date are stylish (10, 10)"
reg_name__165__1: .asciiz "Register v0"
