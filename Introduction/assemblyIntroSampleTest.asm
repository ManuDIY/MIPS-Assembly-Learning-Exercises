.globl main
	.data 
fail_msg1: .asciiz  "Test "
fail_msg2: .asciiz " failed."
success_msg: .asciiz "Success.  All tests pass."

.text
main:	

#
# Test 0:  1 * 2 is 2
#
li $s0, 0
li $a0, 1
jal double
bne $v0, 2, fail

#
# Test 1:  2 * 2 is 4
#
li $s0, 1
li $a0, 2
jal double
bne $v0, 4, fail

#
# Test 2:  0 * 3 is 0
#
li $s0, 2
li $a0, 0
jal triple
bne $v0, 0, fail

#
# Test 3:  3 * 3  is 9
#
li $s0, 3
li $a0, 3
jal triple
bne $v0, 9, fail



#
# print success and quit
#
la $a0, success_msg
li $v0, 4
syscall
li $v0, 10
syscall
 
#
# Fail proceedure
#
  
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
 