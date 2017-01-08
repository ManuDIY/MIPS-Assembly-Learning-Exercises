.globl main
.data 
s_test: .asciiz "Test \""
s_fail: .asciiz "\" failed.\n"
s_expected: .asciiz " Expected "
s_observed: .asciiz " Observed "
s_pass: .asciiz "All tests pass."

r: .ascii "v0"

.text

fail:
move $t8, $a0

li $v0, 4
la $a0, s_test
syscall 

move $a0, $t8
syscall

la $a0, s_fail
syscall

move $a0, $a1
syscall

la $a0, s_expected
syscall

li $v0, 1
move $a0, $a2
syscall

li $v0, 4
la $a0, s_observed
syscall

li $v0, 1
move $a0, $a3
syscall

li $v0, 10 
syscall

main:


#############################################
#
#  indexOf 
#
#############################################

#
#  indexOf finds the value when it occurs one time only
#
li $a0, 2
la $a1, array1
jal indexOf
li $at, 6
beq $at, $v0 pass_zz1zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz2zz
la $a1, reg_name_zz3zz
jal fail
pass_zz1zz:

#
#  indexOf finds the value at the beginning of the array
#
li $a0, 5
la $a1, array1
jal indexOf
li $at, 0
beq $at, $v0 pass_zz4zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz5zz
la $a1, reg_name_zz6zz
jal fail
pass_zz4zz:

#
#  indexOf finds the value at the end of the array
#
li $a0, 1
la $a1, array1
jal indexOf
li $at, 7
beq $at, $v0 pass_zz7zz
move $a3, $v0
li $a2, 7
la $a0, test_name_zz8zz
la $a1, reg_name_zz9zz
jal fail
pass_zz7zz:

#
#  indexOf returns -1 if data not found
#
li $a0, 10
la $a1, array1
jal indexOf
li $at, -1
beq $at, $v0 pass_zz10zz
move $a3, $v0
li $a2, -1
la $a0, test_name_zz11zz
la $a1, reg_name_zz12zz
jal fail
pass_zz10zz:

#
#  indexOf allows any negative number to terminate the array
#
li $a0, 10
la $a1, array2
jal indexOf
li $at, -1
beq $at, $v0 pass_zz13zz
move $a3, $v0
li $a2, -1
la $a0, test_name_zz14zz
la $a1, reg_name_zz15zz
jal fail
pass_zz13zz:

#
#  indexOf finds first occurrence even if value appears multiple times
#
li $a0, 5
la $a1, array3
jal indexOf
li $at, 2
beq $at, $v0 pass_zz16zz
move $a3, $v0
li $a2, 2
la $a0, test_name_zz17zz
la $a1, reg_name_zz18zz
jal fail
pass_zz16zz:

#############################################
#
#  max 
#
#############################################

#
#  max finds the maximum
#
la $a0, array4
li $a1, 10
jal max
li $at, 7
beq $at, $v0 pass_zz19zz
move $a3, $v0
li $a2, 7
la $a0, test_name_zz20zz
la $a1, reg_name_zz21zz
jal fail
pass_zz19zz:

#
#  max doesn't look past the end of the array
#
la $a0, array4
li $a1, 6
jal max
li $at, 5
beq $at, $v0 pass_zz22zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz23zz
la $a1, reg_name_zz24zz
jal fail
pass_zz22zz:

#
#  max finds biggest value at the beginning
#
la $a0, array5
li $a1, 8
jal max
li $at, 9
beq $at, $v0 pass_zz25zz
move $a3, $v0
li $a2, 9
la $a0, test_name_zz26zz
la $a1, reg_name_zz27zz
jal fail
pass_zz25zz:

#
#  max finds biggest value at the end
#
la $a0, array4
li $a1, 7
jal max
li $at, 7
beq $at, $v0 pass_zz28zz
move $a3, $v0
li $a2, 7
la $a0, test_name_zz29zz
la $a1, reg_name_zz30zz
jal fail
pass_zz28zz:

#
#  max handles negative numbers
#
la $a0, array6
li $a1, 4
jal max
li $at, -3
beq $at, $v0 pass_zz31zz
move $a3, $v0
li $a2, -3
la $a0, test_name_zz32zz
la $a1, reg_name_zz33zz
jal fail
pass_zz31zz:

#############################################
#
#  sum13 
#
#############################################

#
#  sum13 sums all numbers if 13 not present
#
la $a0, array7
li $a1, 4
jal sum13
li $at, 6
beq $at, $v0 pass_zz34zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz35zz
la $a1, reg_name_zz36zz
jal fail
pass_zz34zz:

#
#  sum13 sums small arrays
#
la $a0, array8
li $a1, 2
jal sum13
li $at, 2
beq $at, $v0 pass_zz37zz
move $a3, $v0
li $a2, 2
la $a0, test_name_zz38zz
la $a1, reg_name_zz39zz
jal fail
pass_zz37zz:

#
#  sum13 ignores 13 at the end
#
la $a0, array9
li $a1, 5
jal sum13
li $at, 6
beq $at, $v0 pass_zz40zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz41zz
la $a1, reg_name_zz42zz
jal fail
pass_zz40zz:

#
#  sum13 ignores 13 and the following number
#
la $a0, array10
li $a1, 6
jal sum13
li $at, 4
beq $at, $v0 pass_zz43zz
move $a3, $v0
li $a2, 4
la $a0, test_name_zz44zz
la $a1, reg_name_zz45zz
jal fail
pass_zz43zz:

#
#  sum13 ignores 13 at the beginning
#
la $a0, array11
li $a1, 7
jal sum13
li $at, 3
beq $at, $v0 pass_zz46zz
move $a3, $v0
li $a2, 3
la $a0, test_name_zz47zz
la $a1, reg_name_zz48zz
jal fail
pass_zz46zz:

#
#  sum13 returns 0 when given an empty array
#
la $a0, array9
li $a1, 0
jal sum13
li $at, 0
beq $at, $v0 pass_zz49zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz50zz
la $a1, reg_name_zz51zz
jal fail
pass_zz49zz:

#
#  sum13 return 0 when given a single 13
#
la $a0, array12
li $a1, 1
jal sum13
li $at, 0
beq $at, $v0 pass_zz52zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz53zz
la $a1, reg_name_zz54zz
jal fail
pass_zz52zz:

#
#  sum13 returns 0 when given two 13s
#
la $a0, array13
li $a1, 2
jal sum13
li $at, 0
beq $at, $v0 pass_zz55zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz56zz
la $a1, reg_name_zz57zz
jal fail
pass_zz55zz:

#
#  sum13 returns 0 if every non-13 follows 13
#
la $a0, array14
li $a1, 3
jal sum13
li $at, 0
beq $at, $v0 pass_zz58zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz59zz
la $a1, reg_name_zz60zz
jal fail
pass_zz58zz:

#
#  sum13 handles list of size 3
#
la $a0, array15
li $a1, 3
jal sum13
li $at, 14
beq $at, $v0 pass_zz61zz
move $a3, $v0
li $a2, 14
la $a0, test_name_zz62zz
la $a1, reg_name_zz63zz
jal fail
pass_zz61zz:

#
#  sum13 handles list of size 3 with 13
#
la $a0, array16
li $a1, 3
jal sum13
li $at, 5
beq $at, $v0 pass_zz64zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz65zz
la $a1, reg_name_zz66zz
jal fail
pass_zz64zz:

#
#  sum13 handles a single zero
#
la $a0, array17
li $a1, 1
jal sum13
li $at, 0
beq $at, $v0 pass_zz67zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz68zz
la $a1, reg_name_zz69zz
jal fail
pass_zz67zz:

#
#  sum13 handles {13, 0}
#
la $a0, array18
li $a1, 2
jal sum13
li $at, 0
beq $at, $v0 pass_zz70zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz71zz
la $a1, reg_name_zz72zz
jal fail
pass_zz70zz:

#############################################
#
#  sum67 
#
#############################################

#
#  sum67 handles array with no 6s or 7s
#
la $a0, array19
li $a1, 3
jal sum67
li $at, 5
beq $at, $v0 pass_zz73zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz74zz
la $a1, reg_name_zz75zz
jal fail
pass_zz73zz:

#
#  sum67 handles single full run at end
#
la $a0, array20
li $a1, 7
jal sum67
li $at, 5
beq $at, $v0 pass_zz76zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz77zz
la $a1, reg_name_zz78zz
jal fail
pass_zz76zz:

#
#  sum67 handles empty run in middle
#
la $a0, array21
li $a1, 5
jal sum67
li $at, 4
beq $at, $v0 pass_zz79zz
move $a3, $v0
li $a2, 4
la $a0, test_name_zz80zz
la $a1, reg_name_zz81zz
jal fail
pass_zz79zz:

#
#  sum67 handles two full runs
#
la $a0, array22
li $a1, 10
jal sum67
li $at, 2
beq $at, $v0 pass_zz82zz
move $a3, $v0
li $a2, 2
la $a0, test_name_zz83zz
la $a1, reg_name_zz84zz
jal fail
pass_zz82zz:

#
#  sum67 handles 6 in the run
#
la $a0, array23
li $a1, 11
jal sum67
li $at, 2
beq $at, $v0 pass_zz85zz
move $a3, $v0
li $a2, 2
la $a0, test_name_zz86zz
la $a1, reg_name_zz87zz
jal fail
pass_zz85zz:

#
#  sum67 handles 7 before 6
#
la $a0, array24
li $a1, 8
jal sum67
li $at, 18
beq $at, $v0 pass_zz88zz
move $a3, $v0
li $a2, 18
la $a0, test_name_zz89zz
la $a1, reg_name_zz90zz
jal fail
pass_zz88zz:

#
#  sum67 handles 7 before run with 6 in middle
#
la $a0, array25
li $a1, 7
jal sum67
li $at, 9
beq $at, $v0 pass_zz91zz
move $a3, $v0
li $a2, 9
la $a0, test_name_zz92zz
la $a1, reg_name_zz93zz
jal fail
pass_zz91zz:

#
#  sum67 handles two 7s in a row
#
la $a0, array26
li $a1, 4
jal sum67
li $at, 8
beq $at, $v0 pass_zz94zz
move $a3, $v0
li $a2, 8
la $a0, test_name_zz95zz
la $a1, reg_name_zz96zz
jal fail
pass_zz94zz:

#
#  sum67 handles a run at the beginning
#
la $a0, array27
li $a1, 6
jal sum67
li $at, 8
beq $at, $v0 pass_zz97zz
move $a3, $v0
li $a2, 8
la $a0, test_name_zz98zz
la $a1, reg_name_zz99zz
jal fail
pass_zz97zz:

#
#  sum67 handles entire sequence a single run
#
la $a0, array28
li $a1, 5
jal sum67
li $at, 0
beq $at, $v0 pass_zz100zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz101zz
la $a1, reg_name_zz102zz
jal fail
pass_zz100zz:

#
#  sum67 handles empty array
#
la $a0, array28
li $a1, 0
jal sum67
li $at, 0
beq $at, $v0 pass_zz103zz
move $a3, $v0
li $a2, 0
la $a0, test_name_zz104zz
la $a1, reg_name_zz105zz
jal fail
pass_zz103zz:

#
#  sum67 handles empty sequence at beginning
#
la $a0, array29
li $a1, 3
jal sum67
li $at, 11
beq $at, $v0 pass_zz106zz
move $a3, $v0
li $a2, 11
la $a0, test_name_zz107zz
la $a1, reg_name_zz108zz
jal fail
pass_zz106zz:
la $a0, s_pass
li $v0, 4
syscall

li $v0, 10
syscall

.data
reg_name_zz108zz: .asciiz "v0"
array25: .word 2 7 6 2 6 2 7 99
test_name_zz80zz: .asciiz " sum67 handles empty run in middle"
array7: .word 1 2 2 1 447
test_name_zz23zz: .asciiz " max doesn't look past the end of the array"
reg_name_zz51zz: .asciiz "v0"
test_name_zz101zz: .asciiz " sum67 handles entire sequence a single run"
array20: .word 1 2 2 6 99 99 7 1004
array3: .word 3 2 5 5 5 4 5 5 1 6 -1
reg_name_zz15zz: .asciiz "v0"
reg_name_zz72zz: .asciiz "v0"
test_name_zz44zz: .asciiz " sum13 ignores 13 and the following number"
reg_name_zz93zz: .asciiz "v0"
test_name_zz8zz: .asciiz " indexOf finds the value at the end of the array"
test_name_zz65zz: .asciiz " sum13 handles list of size 3 with 13"
array16: .word 5 13 2 3343
reg_name_zz36zz: .asciiz "v0"
array29: .word 6 7 11 18
test_name_zz86zz: .asciiz " sum67 handles 6 in the run"
reg_name_zz57zz: .asciiz "v0"
array11: .word 13 1 2 13 2 1 13 997
test_name_zz29zz: .asciiz " max finds biggest value at the end"
test_name_zz107zz: .asciiz " sum67 handles empty sequence at beginning"
array24: .word 2 7 6 2 6 7 2 7 99
reg_name_zz78zz: .asciiz "v0"
reg_name_zz21zz: .asciiz "v0"
test_name_zz50zz: .asciiz " sum13 returns 0 when given an empty array"
reg_name_zz99zz: .asciiz "v0"
array19: .word 1 2 2 44
array2: .word 2 7 -5
test_name_zz14zz: .asciiz " indexOf allows any negative number to terminate the array"
test_name_zz71zz: .asciiz " sum13 handles {13, 0}"
reg_name_zz42zz: .asciiz "v0"
test_name_zz92zz: .asciiz " sum67 handles 7 before run with 6 in middle"
reg_name_zz6zz: .asciiz "v0"
reg_name_zz63zz: .asciiz "v0"
array15: .word 5 7 2 9894
test_name_zz35zz: .asciiz " sum13 sums all numbers if 13 not present"
array28: .word 6 8 1 6 7 22
reg_name_zz84zz: .asciiz "v0"
test_name_zz56zz: .asciiz " sum13 returns 0 when given two 13s"
array10: .word 1 2 13 2 1 13 211
reg_name_zz27zz: .asciiz "v0"
reg_name_zz105zz: .asciiz "v0"
array23: .word 1 6 2 6 2 7 1 6 99 99 7 3433
test_name_zz77zz: .asciiz " sum67 handles single full run at end"
reg_name_zz48zz: .asciiz "v0"
array6: .word -5 -3 -6 -4
test_name_zz20zz: .asciiz " max finds the maximum"
test_name_zz98zz: .asciiz " sum67 handles a run at the beginning"
test_name_zz41zz: .asciiz " sum13 ignores 13 at the end"
reg_name_zz12zz: .asciiz "v0"
reg_name_zz69zz: .asciiz "v0"
reg_name_zz90zz: .asciiz "v0"
test_name_zz5zz: .asciiz " indexOf finds the value at the beginning of the array"
test_name_zz62zz: .asciiz " sum13 handles list of size 3"
array14: .word 13 14 13
reg_name_zz33zz: .asciiz "v0"
array27: .word 6 7 1 6 7 7 99
test_name_zz83zz: .asciiz " sum67 handles two full runs"
reg_name_zz54zz: .asciiz "v0"
array9: .word 1 2 2 1 13
test_name_zz26zz: .asciiz " max finds biggest value at the beginning"
test_name_zz104zz: .asciiz " sum67 handles empty array"
array22: .word 1 6 2 2 7 1 6 99 99 7 1332
reg_name_zz75zz: .asciiz "v0"
test_name_zz47zz: .asciiz " sum13 ignores 13 at the beginning"
array5: .word 9 8 7 6 5 4 3 2 1
reg_name_zz18zz: .asciiz "v0"
reg_name_zz96zz: .asciiz "v0"
array18: .word 13 0 -3
reg_name_zz39zz: .asciiz "v0"
array1: .word 5 4 7 6 9 8 2 1 -1
test_name_zz11zz: .asciiz " indexOf returns -1 if data not found"
test_name_zz68zz: .asciiz " sum13 handles a single zero"
test_name_zz89zz: .asciiz " sum67 handles 7 before 6"
array13: .word 13 13 83
test_name_zz32zz: .asciiz " max handles negative numbers"
reg_name_zz3zz: .asciiz "v0"
reg_name_zz60zz: .asciiz "v0"
array26: .word 1 6 7 7 9
reg_name_zz81zz: .asciiz "v0"
reg_name_zz24zz: .asciiz "v0"
test_name_zz53zz: .asciiz " sum13 return 0 when given a single 13"
array8: .word 1 1
reg_name_zz102zz: .asciiz "v0"
array21: .word 1 1 6 7 2 99
test_name_zz74zz: .asciiz " sum67 handles array with no 6s or 7s"
reg_name_zz45zz: .asciiz "v0"
array4: .word 4 5 3 1 2 4 7 2 4 3 778
test_name_zz17zz: .asciiz " indexOf finds first occurrence even if value appears multiple times"
test_name_zz95zz: .asciiz " sum67 handles two 7s in a row"
array17: .word 0 99
test_name_zz38zz: .asciiz " sum13 sums small arrays"
reg_name_zz9zz: .asciiz "v0"
reg_name_zz66zz: .asciiz "v0"
reg_name_zz87zz: .asciiz "v0"
array12: .word 13 227
reg_name_zz30zz: .asciiz "v0"
test_name_zz2zz: .asciiz " indexOf finds the value when it occurs one time only"
test_name_zz59zz: .asciiz " sum13 returns 0 if every non-13 follows 13"
