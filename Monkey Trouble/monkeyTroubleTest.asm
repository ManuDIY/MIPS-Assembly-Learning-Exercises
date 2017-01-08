.globl main
#
# Version 1.2 --- Wednesday, 12 September
#
.data 
fail_msg1: .asciiz  "Test "
fail_msg2: .asciiz " failed."
success_msg: .asciiz "Success.  All tests pass."

posNegData: .word 
	 8,  1, -1, 0, 1
	 9, -1,  1, 0, 1 
	10, -4, -5, 1, 1
	11, -4, -5, 0, 0
	12, -4,  5, 0, 1
	13, -4,  5, 1, 0
	14,  1,  1, 0, 0
	15, -1, -1, 0, 0
	16,  1, -1, 1, 0
	17, -1,  1, 1, 0
	18,  1,  1, 1, 0
	19, -1, -1, 1, 1
	20,  5, -5, 0, 1
	21, -6,  6, 0, 1
	22, -5, -6, 0, 0
	23, -2, -1, 0, 0
	24,  1,  2, 0, 0
	25, -5,  6, 1, 0
	26, -5, -5, 1, 1
	0xffffffff
	
	
.text 
main:
#######################
#
# Monkey Trouble!
#
#######################

#
# test 0 uses inputs 0,0
#
li $s0, 0
addi $a0, $0, 0
addi $a1, $0, 0
jal monkeyTrouble
bne $v0, 1, fail

#
# test test 1 uses inputs 0, 1
#
li $s0, 1
addi $a0, $0, 0
addi $a1, $0, 1
jal monkeyTrouble
bne $v0, 0, fail

#
# test test 2 uses inputs 1, 0
#
li $s0, 2
addi $a0, $0, 1
addi $a1, $0, 0
jal monkeyTrouble
bne $v0, 0, fail

#
# test test 3 uses inputs 1, 1
#
li $s0, 3
addi $a0, $0, 1
addi $a1, $0, 1
jal monkeyTrouble
bne $v0, 1, fail

#######################
#
# sleepIn
#
#######################

#
# test 4 uses inputs 0,0
#
li $s0, 4
addi $a0, $0, 0
addi $a1, $0, 0
jal sleepIn
bne $v0, 1, fail

#
# test test 5 uses inputs 0, 1
#
li $s0, 5
addi $a0, $0, 0
addi $a1, $0, 1
jal sleepIn
bne $v0, 1, fail

#
# test test 6 uses inputs 1, 0
#
li $s0, 6
addi $a0, $0, 1
addi $a1, $0, 0
jal sleepIn
bne $v0, 0, fail

#
# test test 7 uses inputs 1, 1
#
li $s0, 7
addi $a0, $0, 1
addi $a1, $0, 1
jal sleepIn
bne $v0, 1, fail


#######################
#
# posNeg
#
#######################

la $s1, posNegData
loop:
lw $s0, 0($s1)
beq $s0, 0xffffffff, end
lw $a0, 4($s1)
lw $a1, 8($s1)
lw $a2, 12($s1)
lw $s2, 16($s1)
jal posNeg
bne $v0, $s2, fail
addi $s1, $s1, 20
j loop



#
# print success and quit
#
end:
la $a0, success_msg
li $v0, 4
syscall
li $v0, 10
syscall


fail:
la $a0, fail_msg1
li $v0, 4
syscall

move $a0, $s0
li $v0, 1
syscall

la $a0, fail_msg2
li $v0, 4
syscall

li $v0, 10
syscall
