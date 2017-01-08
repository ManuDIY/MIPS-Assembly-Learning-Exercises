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
#  nCk 
#
#############################################

#
#  nCk correctly calculates 0 choose 0
#
li $a0, 0
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz1zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz2zz
la $a1, reg_name_zz3zz
jal fail
pass_zz1zz:

#
#  nCk correctly calculates 1 choose 0
#
li $a0, 1
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz4zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz5zz
la $a1, reg_name_zz6zz
jal fail
pass_zz4zz:

#
#  nCk correctly calculates 1 choose 1
#
li $a0, 1
li $a1, 1
jal nCk
li $at, 1
beq $at, $v0 pass_zz7zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz8zz
la $a1, reg_name_zz9zz
jal fail
pass_zz7zz:

#
#  nCk correctly calculates 2 choose 0
#
li $a0, 2
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz10zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz11zz
la $a1, reg_name_zz12zz
jal fail
pass_zz10zz:

#
#  nCk correctly calculates 2 choose 1
#
li $a0, 2
li $a1, 1
jal nCk
li $at, 2
beq $at, $v0 pass_zz13zz
move $a3, $v0
li $a2, 2
la $a0, test_name_zz14zz
la $a1, reg_name_zz15zz
jal fail
pass_zz13zz:

#
#  nCk correctly calculates 2 choose 2
#
li $a0, 2
li $a1, 2
jal nCk
li $at, 1
beq $at, $v0 pass_zz16zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz17zz
la $a1, reg_name_zz18zz
jal fail
pass_zz16zz:

#
#  nCk correctly calculates 3 choose 0
#
li $a0, 3
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz19zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz20zz
la $a1, reg_name_zz21zz
jal fail
pass_zz19zz:

#
#  nCk correctly calculates 3 choose 1
#
li $a0, 3
li $a1, 1
jal nCk
li $at, 3
beq $at, $v0 pass_zz22zz
move $a3, $v0
li $a2, 3
la $a0, test_name_zz23zz
la $a1, reg_name_zz24zz
jal fail
pass_zz22zz:

#
#  nCk correctly calculates 3 choose 2
#
li $a0, 3
li $a1, 2
jal nCk
li $at, 3
beq $at, $v0 pass_zz25zz
move $a3, $v0
li $a2, 3
la $a0, test_name_zz26zz
la $a1, reg_name_zz27zz
jal fail
pass_zz25zz:

#
#  nCk correctly calculates 3 choose 3
#
li $a0, 3
li $a1, 3
jal nCk
li $at, 1
beq $at, $v0 pass_zz28zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz29zz
la $a1, reg_name_zz30zz
jal fail
pass_zz28zz:

#
#  nCk correctly calculates 4 choose 0
#
li $a0, 4
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz31zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz32zz
la $a1, reg_name_zz33zz
jal fail
pass_zz31zz:

#
#  nCk correctly calculates 4 choose 1
#
li $a0, 4
li $a1, 1
jal nCk
li $at, 4
beq $at, $v0 pass_zz34zz
move $a3, $v0
li $a2, 4
la $a0, test_name_zz35zz
la $a1, reg_name_zz36zz
jal fail
pass_zz34zz:

#
#  nCk correctly calculates 4 choose 2
#
li $a0, 4
li $a1, 2
jal nCk
li $at, 6
beq $at, $v0 pass_zz37zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz38zz
la $a1, reg_name_zz39zz
jal fail
pass_zz37zz:

#
#  nCk correctly calculates 4 choose 3
#
li $a0, 4
li $a1, 3
jal nCk
li $at, 4
beq $at, $v0 pass_zz40zz
move $a3, $v0
li $a2, 4
la $a0, test_name_zz41zz
la $a1, reg_name_zz42zz
jal fail
pass_zz40zz:

#
#  nCk correctly calculates 4 choose 4
#
li $a0, 4
li $a1, 4
jal nCk
li $at, 1
beq $at, $v0 pass_zz43zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz44zz
la $a1, reg_name_zz45zz
jal fail
pass_zz43zz:

#
#  nCk correctly calculates 5 choose 0
#
li $a0, 5
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz46zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz47zz
la $a1, reg_name_zz48zz
jal fail
pass_zz46zz:

#
#  nCk correctly calculates 5 choose 1
#
li $a0, 5
li $a1, 1
jal nCk
li $at, 5
beq $at, $v0 pass_zz49zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz50zz
la $a1, reg_name_zz51zz
jal fail
pass_zz49zz:

#
#  nCk correctly calculates 5 choose 2
#
li $a0, 5
li $a1, 2
jal nCk
li $at, 10
beq $at, $v0 pass_zz52zz
move $a3, $v0
li $a2, 10
la $a0, test_name_zz53zz
la $a1, reg_name_zz54zz
jal fail
pass_zz52zz:

#
#  nCk correctly calculates 5 choose 3
#
li $a0, 5
li $a1, 3
jal nCk
li $at, 10
beq $at, $v0 pass_zz55zz
move $a3, $v0
li $a2, 10
la $a0, test_name_zz56zz
la $a1, reg_name_zz57zz
jal fail
pass_zz55zz:

#
#  nCk correctly calculates 5 choose 4
#
li $a0, 5
li $a1, 4
jal nCk
li $at, 5
beq $at, $v0 pass_zz58zz
move $a3, $v0
li $a2, 5
la $a0, test_name_zz59zz
la $a1, reg_name_zz60zz
jal fail
pass_zz58zz:

#
#  nCk correctly calculates 5 choose 5
#
li $a0, 5
li $a1, 5
jal nCk
li $at, 1
beq $at, $v0 pass_zz61zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz62zz
la $a1, reg_name_zz63zz
jal fail
pass_zz61zz:

#
#  nCk correctly calculates 6 choose 0
#
li $a0, 6
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz64zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz65zz
la $a1, reg_name_zz66zz
jal fail
pass_zz64zz:

#
#  nCk correctly calculates 6 choose 1
#
li $a0, 6
li $a1, 1
jal nCk
li $at, 6
beq $at, $v0 pass_zz67zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz68zz
la $a1, reg_name_zz69zz
jal fail
pass_zz67zz:

#
#  nCk correctly calculates 6 choose 2
#
li $a0, 6
li $a1, 2
jal nCk
li $at, 15
beq $at, $v0 pass_zz70zz
move $a3, $v0
li $a2, 15
la $a0, test_name_zz71zz
la $a1, reg_name_zz72zz
jal fail
pass_zz70zz:

#
#  nCk correctly calculates 6 choose 3
#
li $a0, 6
li $a1, 3
jal nCk
li $at, 20
beq $at, $v0 pass_zz73zz
move $a3, $v0
li $a2, 20
la $a0, test_name_zz74zz
la $a1, reg_name_zz75zz
jal fail
pass_zz73zz:

#
#  nCk correctly calculates 6 choose 4
#
li $a0, 6
li $a1, 4
jal nCk
li $at, 15
beq $at, $v0 pass_zz76zz
move $a3, $v0
li $a2, 15
la $a0, test_name_zz77zz
la $a1, reg_name_zz78zz
jal fail
pass_zz76zz:

#
#  nCk correctly calculates 6 choose 5
#
li $a0, 6
li $a1, 5
jal nCk
li $at, 6
beq $at, $v0 pass_zz79zz
move $a3, $v0
li $a2, 6
la $a0, test_name_zz80zz
la $a1, reg_name_zz81zz
jal fail
pass_zz79zz:

#
#  nCk correctly calculates 6 choose 6
#
li $a0, 6
li $a1, 6
jal nCk
li $at, 1
beq $at, $v0 pass_zz82zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz83zz
la $a1, reg_name_zz84zz
jal fail
pass_zz82zz:

#
#  nCk correctly calculates 7 choose 0
#
li $a0, 7
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz85zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz86zz
la $a1, reg_name_zz87zz
jal fail
pass_zz85zz:

#
#  nCk correctly calculates 7 choose 1
#
li $a0, 7
li $a1, 1
jal nCk
li $at, 7
beq $at, $v0 pass_zz88zz
move $a3, $v0
li $a2, 7
la $a0, test_name_zz89zz
la $a1, reg_name_zz90zz
jal fail
pass_zz88zz:

#
#  nCk correctly calculates 7 choose 2
#
li $a0, 7
li $a1, 2
jal nCk
li $at, 21
beq $at, $v0 pass_zz91zz
move $a3, $v0
li $a2, 21
la $a0, test_name_zz92zz
la $a1, reg_name_zz93zz
jal fail
pass_zz91zz:

#
#  nCk correctly calculates 7 choose 3
#
li $a0, 7
li $a1, 3
jal nCk
li $at, 35
beq $at, $v0 pass_zz94zz
move $a3, $v0
li $a2, 35
la $a0, test_name_zz95zz
la $a1, reg_name_zz96zz
jal fail
pass_zz94zz:

#
#  nCk correctly calculates 7 choose 4
#
li $a0, 7
li $a1, 4
jal nCk
li $at, 35
beq $at, $v0 pass_zz97zz
move $a3, $v0
li $a2, 35
la $a0, test_name_zz98zz
la $a1, reg_name_zz99zz
jal fail
pass_zz97zz:

#
#  nCk correctly calculates 7 choose 5
#
li $a0, 7
li $a1, 5
jal nCk
li $at, 21
beq $at, $v0 pass_zz100zz
move $a3, $v0
li $a2, 21
la $a0, test_name_zz101zz
la $a1, reg_name_zz102zz
jal fail
pass_zz100zz:

#
#  nCk correctly calculates 7 choose 6
#
li $a0, 7
li $a1, 6
jal nCk
li $at, 7
beq $at, $v0 pass_zz103zz
move $a3, $v0
li $a2, 7
la $a0, test_name_zz104zz
la $a1, reg_name_zz105zz
jal fail
pass_zz103zz:

#
#  nCk correctly calculates 7 choose 7
#
li $a0, 7
li $a1, 7
jal nCk
li $at, 1
beq $at, $v0 pass_zz106zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz107zz
la $a1, reg_name_zz108zz
jal fail
pass_zz106zz:

#
#  nCk correctly calculates 8 choose 0
#
li $a0, 8
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz109zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz110zz
la $a1, reg_name_zz111zz
jal fail
pass_zz109zz:

#
#  nCk correctly calculates 8 choose 1
#
li $a0, 8
li $a1, 1
jal nCk
li $at, 8
beq $at, $v0 pass_zz112zz
move $a3, $v0
li $a2, 8
la $a0, test_name_zz113zz
la $a1, reg_name_zz114zz
jal fail
pass_zz112zz:

#
#  nCk correctly calculates 8 choose 2
#
li $a0, 8
li $a1, 2
jal nCk
li $at, 28
beq $at, $v0 pass_zz115zz
move $a3, $v0
li $a2, 28
la $a0, test_name_zz116zz
la $a1, reg_name_zz117zz
jal fail
pass_zz115zz:

#
#  nCk correctly calculates 8 choose 3
#
li $a0, 8
li $a1, 3
jal nCk
li $at, 56
beq $at, $v0 pass_zz118zz
move $a3, $v0
li $a2, 56
la $a0, test_name_zz119zz
la $a1, reg_name_zz120zz
jal fail
pass_zz118zz:

#
#  nCk correctly calculates 8 choose 4
#
li $a0, 8
li $a1, 4
jal nCk
li $at, 70
beq $at, $v0 pass_zz121zz
move $a3, $v0
li $a2, 70
la $a0, test_name_zz122zz
la $a1, reg_name_zz123zz
jal fail
pass_zz121zz:

#
#  nCk correctly calculates 8 choose 5
#
li $a0, 8
li $a1, 5
jal nCk
li $at, 56
beq $at, $v0 pass_zz124zz
move $a3, $v0
li $a2, 56
la $a0, test_name_zz125zz
la $a1, reg_name_zz126zz
jal fail
pass_zz124zz:

#
#  nCk correctly calculates 8 choose 6
#
li $a0, 8
li $a1, 6
jal nCk
li $at, 28
beq $at, $v0 pass_zz127zz
move $a3, $v0
li $a2, 28
la $a0, test_name_zz128zz
la $a1, reg_name_zz129zz
jal fail
pass_zz127zz:

#
#  nCk correctly calculates 8 choose 7
#
li $a0, 8
li $a1, 7
jal nCk
li $at, 8
beq $at, $v0 pass_zz130zz
move $a3, $v0
li $a2, 8
la $a0, test_name_zz131zz
la $a1, reg_name_zz132zz
jal fail
pass_zz130zz:

#
#  nCk correctly calculates 8 choose 8
#
li $a0, 8
li $a1, 8
jal nCk
li $at, 1
beq $at, $v0 pass_zz133zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz134zz
la $a1, reg_name_zz135zz
jal fail
pass_zz133zz:

#
#  nCk correctly calculates 9 choose 0
#
li $a0, 9
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz136zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz137zz
la $a1, reg_name_zz138zz
jal fail
pass_zz136zz:

#
#  nCk correctly calculates 9 choose 1
#
li $a0, 9
li $a1, 1
jal nCk
li $at, 9
beq $at, $v0 pass_zz139zz
move $a3, $v0
li $a2, 9
la $a0, test_name_zz140zz
la $a1, reg_name_zz141zz
jal fail
pass_zz139zz:

#
#  nCk correctly calculates 9 choose 2
#
li $a0, 9
li $a1, 2
jal nCk
li $at, 36
beq $at, $v0 pass_zz142zz
move $a3, $v0
li $a2, 36
la $a0, test_name_zz143zz
la $a1, reg_name_zz144zz
jal fail
pass_zz142zz:

#
#  nCk correctly calculates 9 choose 3
#
li $a0, 9
li $a1, 3
jal nCk
li $at, 84
beq $at, $v0 pass_zz145zz
move $a3, $v0
li $a2, 84
la $a0, test_name_zz146zz
la $a1, reg_name_zz147zz
jal fail
pass_zz145zz:

#
#  nCk correctly calculates 9 choose 4
#
li $a0, 9
li $a1, 4
jal nCk
li $at, 126
beq $at, $v0 pass_zz148zz
move $a3, $v0
li $a2, 126
la $a0, test_name_zz149zz
la $a1, reg_name_zz150zz
jal fail
pass_zz148zz:

#
#  nCk correctly calculates 9 choose 5
#
li $a0, 9
li $a1, 5
jal nCk
li $at, 126
beq $at, $v0 pass_zz151zz
move $a3, $v0
li $a2, 126
la $a0, test_name_zz152zz
la $a1, reg_name_zz153zz
jal fail
pass_zz151zz:

#
#  nCk correctly calculates 9 choose 6
#
li $a0, 9
li $a1, 6
jal nCk
li $at, 84
beq $at, $v0 pass_zz154zz
move $a3, $v0
li $a2, 84
la $a0, test_name_zz155zz
la $a1, reg_name_zz156zz
jal fail
pass_zz154zz:

#
#  nCk correctly calculates 9 choose 7
#
li $a0, 9
li $a1, 7
jal nCk
li $at, 36
beq $at, $v0 pass_zz157zz
move $a3, $v0
li $a2, 36
la $a0, test_name_zz158zz
la $a1, reg_name_zz159zz
jal fail
pass_zz157zz:

#
#  nCk correctly calculates 9 choose 8
#
li $a0, 9
li $a1, 8
jal nCk
li $at, 9
beq $at, $v0 pass_zz160zz
move $a3, $v0
li $a2, 9
la $a0, test_name_zz161zz
la $a1, reg_name_zz162zz
jal fail
pass_zz160zz:

#
#  nCk correctly calculates 9 choose 9
#
li $a0, 9
li $a1, 9
jal nCk
li $at, 1
beq $at, $v0 pass_zz163zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz164zz
la $a1, reg_name_zz165zz
jal fail
pass_zz163zz:

#
#  nCk correctly calculates 10 choose 0
#
li $a0, 10
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz166zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz167zz
la $a1, reg_name_zz168zz
jal fail
pass_zz166zz:

#
#  nCk correctly calculates 10 choose 1
#
li $a0, 10
li $a1, 1
jal nCk
li $at, 10
beq $at, $v0 pass_zz169zz
move $a3, $v0
li $a2, 10
la $a0, test_name_zz170zz
la $a1, reg_name_zz171zz
jal fail
pass_zz169zz:

#
#  nCk correctly calculates 10 choose 2
#
li $a0, 10
li $a1, 2
jal nCk
li $at, 45
beq $at, $v0 pass_zz172zz
move $a3, $v0
li $a2, 45
la $a0, test_name_zz173zz
la $a1, reg_name_zz174zz
jal fail
pass_zz172zz:

#
#  nCk correctly calculates 10 choose 3
#
li $a0, 10
li $a1, 3
jal nCk
li $at, 120
beq $at, $v0 pass_zz175zz
move $a3, $v0
li $a2, 120
la $a0, test_name_zz176zz
la $a1, reg_name_zz177zz
jal fail
pass_zz175zz:

#
#  nCk correctly calculates 10 choose 4
#
li $a0, 10
li $a1, 4
jal nCk
li $at, 210
beq $at, $v0 pass_zz178zz
move $a3, $v0
li $a2, 210
la $a0, test_name_zz179zz
la $a1, reg_name_zz180zz
jal fail
pass_zz178zz:

#
#  nCk correctly calculates 10 choose 5
#
li $a0, 10
li $a1, 5
jal nCk
li $at, 252
beq $at, $v0 pass_zz181zz
move $a3, $v0
li $a2, 252
la $a0, test_name_zz182zz
la $a1, reg_name_zz183zz
jal fail
pass_zz181zz:

#
#  nCk correctly calculates 10 choose 6
#
li $a0, 10
li $a1, 6
jal nCk
li $at, 210
beq $at, $v0 pass_zz184zz
move $a3, $v0
li $a2, 210
la $a0, test_name_zz185zz
la $a1, reg_name_zz186zz
jal fail
pass_zz184zz:

#
#  nCk correctly calculates 10 choose 7
#
li $a0, 10
li $a1, 7
jal nCk
li $at, 120
beq $at, $v0 pass_zz187zz
move $a3, $v0
li $a2, 120
la $a0, test_name_zz188zz
la $a1, reg_name_zz189zz
jal fail
pass_zz187zz:

#
#  nCk correctly calculates 10 choose 8
#
li $a0, 10
li $a1, 8
jal nCk
li $at, 45
beq $at, $v0 pass_zz190zz
move $a3, $v0
li $a2, 45
la $a0, test_name_zz191zz
la $a1, reg_name_zz192zz
jal fail
pass_zz190zz:

#
#  nCk correctly calculates 10 choose 9
#
li $a0, 10
li $a1, 9
jal nCk
li $at, 10
beq $at, $v0 pass_zz193zz
move $a3, $v0
li $a2, 10
la $a0, test_name_zz194zz
la $a1, reg_name_zz195zz
jal fail
pass_zz193zz:

#
#  nCk correctly calculates 10 choose 10
#
li $a0, 10
li $a1, 10
jal nCk
li $at, 1
beq $at, $v0 pass_zz196zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz197zz
la $a1, reg_name_zz198zz
jal fail
pass_zz196zz:

#
#  nCk correctly calculates 11 choose 0
#
li $a0, 11
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz199zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz200zz
la $a1, reg_name_zz201zz
jal fail
pass_zz199zz:

#
#  nCk correctly calculates 11 choose 1
#
li $a0, 11
li $a1, 1
jal nCk
li $at, 11
beq $at, $v0 pass_zz202zz
move $a3, $v0
li $a2, 11
la $a0, test_name_zz203zz
la $a1, reg_name_zz204zz
jal fail
pass_zz202zz:

#
#  nCk correctly calculates 11 choose 2
#
li $a0, 11
li $a1, 2
jal nCk
li $at, 55
beq $at, $v0 pass_zz205zz
move $a3, $v0
li $a2, 55
la $a0, test_name_zz206zz
la $a1, reg_name_zz207zz
jal fail
pass_zz205zz:

#
#  nCk correctly calculates 11 choose 3
#
li $a0, 11
li $a1, 3
jal nCk
li $at, 165
beq $at, $v0 pass_zz208zz
move $a3, $v0
li $a2, 165
la $a0, test_name_zz209zz
la $a1, reg_name_zz210zz
jal fail
pass_zz208zz:

#
#  nCk correctly calculates 11 choose 4
#
li $a0, 11
li $a1, 4
jal nCk
li $at, 330
beq $at, $v0 pass_zz211zz
move $a3, $v0
li $a2, 330
la $a0, test_name_zz212zz
la $a1, reg_name_zz213zz
jal fail
pass_zz211zz:

#
#  nCk correctly calculates 11 choose 5
#
li $a0, 11
li $a1, 5
jal nCk
li $at, 462
beq $at, $v0 pass_zz214zz
move $a3, $v0
li $a2, 462
la $a0, test_name_zz215zz
la $a1, reg_name_zz216zz
jal fail
pass_zz214zz:

#
#  nCk correctly calculates 11 choose 6
#
li $a0, 11
li $a1, 6
jal nCk
li $at, 462
beq $at, $v0 pass_zz217zz
move $a3, $v0
li $a2, 462
la $a0, test_name_zz218zz
la $a1, reg_name_zz219zz
jal fail
pass_zz217zz:

#
#  nCk correctly calculates 11 choose 7
#
li $a0, 11
li $a1, 7
jal nCk
li $at, 330
beq $at, $v0 pass_zz220zz
move $a3, $v0
li $a2, 330
la $a0, test_name_zz221zz
la $a1, reg_name_zz222zz
jal fail
pass_zz220zz:

#
#  nCk correctly calculates 11 choose 8
#
li $a0, 11
li $a1, 8
jal nCk
li $at, 165
beq $at, $v0 pass_zz223zz
move $a3, $v0
li $a2, 165
la $a0, test_name_zz224zz
la $a1, reg_name_zz225zz
jal fail
pass_zz223zz:

#
#  nCk correctly calculates 11 choose 9
#
li $a0, 11
li $a1, 9
jal nCk
li $at, 55
beq $at, $v0 pass_zz226zz
move $a3, $v0
li $a2, 55
la $a0, test_name_zz227zz
la $a1, reg_name_zz228zz
jal fail
pass_zz226zz:

#
#  nCk correctly calculates 11 choose 10
#
li $a0, 11
li $a1, 10
jal nCk
li $at, 11
beq $at, $v0 pass_zz229zz
move $a3, $v0
li $a2, 11
la $a0, test_name_zz230zz
la $a1, reg_name_zz231zz
jal fail
pass_zz229zz:

#
#  nCk correctly calculates 11 choose 11
#
li $a0, 11
li $a1, 11
jal nCk
li $at, 1
beq $at, $v0 pass_zz232zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz233zz
la $a1, reg_name_zz234zz
jal fail
pass_zz232zz:

#
#  nCk correctly calculates 12 choose 0
#
li $a0, 12
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz235zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz236zz
la $a1, reg_name_zz237zz
jal fail
pass_zz235zz:

#
#  nCk correctly calculates 12 choose 1
#
li $a0, 12
li $a1, 1
jal nCk
li $at, 12
beq $at, $v0 pass_zz238zz
move $a3, $v0
li $a2, 12
la $a0, test_name_zz239zz
la $a1, reg_name_zz240zz
jal fail
pass_zz238zz:

#
#  nCk correctly calculates 12 choose 2
#
li $a0, 12
li $a1, 2
jal nCk
li $at, 66
beq $at, $v0 pass_zz241zz
move $a3, $v0
li $a2, 66
la $a0, test_name_zz242zz
la $a1, reg_name_zz243zz
jal fail
pass_zz241zz:

#
#  nCk correctly calculates 12 choose 3
#
li $a0, 12
li $a1, 3
jal nCk
li $at, 220
beq $at, $v0 pass_zz244zz
move $a3, $v0
li $a2, 220
la $a0, test_name_zz245zz
la $a1, reg_name_zz246zz
jal fail
pass_zz244zz:

#
#  nCk correctly calculates 12 choose 4
#
li $a0, 12
li $a1, 4
jal nCk
li $at, 495
beq $at, $v0 pass_zz247zz
move $a3, $v0
li $a2, 495
la $a0, test_name_zz248zz
la $a1, reg_name_zz249zz
jal fail
pass_zz247zz:

#
#  nCk correctly calculates 12 choose 5
#
li $a0, 12
li $a1, 5
jal nCk
li $at, 792
beq $at, $v0 pass_zz250zz
move $a3, $v0
li $a2, 792
la $a0, test_name_zz251zz
la $a1, reg_name_zz252zz
jal fail
pass_zz250zz:

#
#  nCk correctly calculates 12 choose 6
#
li $a0, 12
li $a1, 6
jal nCk
li $at, 924
beq $at, $v0 pass_zz253zz
move $a3, $v0
li $a2, 924
la $a0, test_name_zz254zz
la $a1, reg_name_zz255zz
jal fail
pass_zz253zz:

#
#  nCk correctly calculates 12 choose 7
#
li $a0, 12
li $a1, 7
jal nCk
li $at, 792
beq $at, $v0 pass_zz256zz
move $a3, $v0
li $a2, 792
la $a0, test_name_zz257zz
la $a1, reg_name_zz258zz
jal fail
pass_zz256zz:

#
#  nCk correctly calculates 12 choose 8
#
li $a0, 12
li $a1, 8
jal nCk
li $at, 495
beq $at, $v0 pass_zz259zz
move $a3, $v0
li $a2, 495
la $a0, test_name_zz260zz
la $a1, reg_name_zz261zz
jal fail
pass_zz259zz:

#
#  nCk correctly calculates 12 choose 9
#
li $a0, 12
li $a1, 9
jal nCk
li $at, 220
beq $at, $v0 pass_zz262zz
move $a3, $v0
li $a2, 220
la $a0, test_name_zz263zz
la $a1, reg_name_zz264zz
jal fail
pass_zz262zz:

#
#  nCk correctly calculates 12 choose 10
#
li $a0, 12
li $a1, 10
jal nCk
li $at, 66
beq $at, $v0 pass_zz265zz
move $a3, $v0
li $a2, 66
la $a0, test_name_zz266zz
la $a1, reg_name_zz267zz
jal fail
pass_zz265zz:

#
#  nCk correctly calculates 12 choose 11
#
li $a0, 12
li $a1, 11
jal nCk
li $at, 12
beq $at, $v0 pass_zz268zz
move $a3, $v0
li $a2, 12
la $a0, test_name_zz269zz
la $a1, reg_name_zz270zz
jal fail
pass_zz268zz:

#
#  nCk correctly calculates 12 choose 12
#
li $a0, 12
li $a1, 12
jal nCk
li $at, 1
beq $at, $v0 pass_zz271zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz272zz
la $a1, reg_name_zz273zz
jal fail
pass_zz271zz:

#
#  nCk correctly calculates 13 choose 0
#
li $a0, 13
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz274zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz275zz
la $a1, reg_name_zz276zz
jal fail
pass_zz274zz:

#
#  nCk correctly calculates 13 choose 1
#
li $a0, 13
li $a1, 1
jal nCk
li $at, 13
beq $at, $v0 pass_zz277zz
move $a3, $v0
li $a2, 13
la $a0, test_name_zz278zz
la $a1, reg_name_zz279zz
jal fail
pass_zz277zz:

#
#  nCk correctly calculates 13 choose 2
#
li $a0, 13
li $a1, 2
jal nCk
li $at, 78
beq $at, $v0 pass_zz280zz
move $a3, $v0
li $a2, 78
la $a0, test_name_zz281zz
la $a1, reg_name_zz282zz
jal fail
pass_zz280zz:

#
#  nCk correctly calculates 13 choose 3
#
li $a0, 13
li $a1, 3
jal nCk
li $at, 286
beq $at, $v0 pass_zz283zz
move $a3, $v0
li $a2, 286
la $a0, test_name_zz284zz
la $a1, reg_name_zz285zz
jal fail
pass_zz283zz:

#
#  nCk correctly calculates 13 choose 4
#
li $a0, 13
li $a1, 4
jal nCk
li $at, 715
beq $at, $v0 pass_zz286zz
move $a3, $v0
li $a2, 715
la $a0, test_name_zz287zz
la $a1, reg_name_zz288zz
jal fail
pass_zz286zz:

#
#  nCk correctly calculates 13 choose 5
#
li $a0, 13
li $a1, 5
jal nCk
li $at, 1287
beq $at, $v0 pass_zz289zz
move $a3, $v0
li $a2, 1287
la $a0, test_name_zz290zz
la $a1, reg_name_zz291zz
jal fail
pass_zz289zz:

#
#  nCk correctly calculates 13 choose 6
#
li $a0, 13
li $a1, 6
jal nCk
li $at, 1716
beq $at, $v0 pass_zz292zz
move $a3, $v0
li $a2, 1716
la $a0, test_name_zz293zz
la $a1, reg_name_zz294zz
jal fail
pass_zz292zz:

#
#  nCk correctly calculates 13 choose 7
#
li $a0, 13
li $a1, 7
jal nCk
li $at, 1716
beq $at, $v0 pass_zz295zz
move $a3, $v0
li $a2, 1716
la $a0, test_name_zz296zz
la $a1, reg_name_zz297zz
jal fail
pass_zz295zz:

#
#  nCk correctly calculates 13 choose 8
#
li $a0, 13
li $a1, 8
jal nCk
li $at, 1287
beq $at, $v0 pass_zz298zz
move $a3, $v0
li $a2, 1287
la $a0, test_name_zz299zz
la $a1, reg_name_zz300zz
jal fail
pass_zz298zz:

#
#  nCk correctly calculates 13 choose 9
#
li $a0, 13
li $a1, 9
jal nCk
li $at, 715
beq $at, $v0 pass_zz301zz
move $a3, $v0
li $a2, 715
la $a0, test_name_zz302zz
la $a1, reg_name_zz303zz
jal fail
pass_zz301zz:

#
#  nCk correctly calculates 13 choose 10
#
li $a0, 13
li $a1, 10
jal nCk
li $at, 286
beq $at, $v0 pass_zz304zz
move $a3, $v0
li $a2, 286
la $a0, test_name_zz305zz
la $a1, reg_name_zz306zz
jal fail
pass_zz304zz:

#
#  nCk correctly calculates 13 choose 11
#
li $a0, 13
li $a1, 11
jal nCk
li $at, 78
beq $at, $v0 pass_zz307zz
move $a3, $v0
li $a2, 78
la $a0, test_name_zz308zz
la $a1, reg_name_zz309zz
jal fail
pass_zz307zz:

#
#  nCk correctly calculates 13 choose 12
#
li $a0, 13
li $a1, 12
jal nCk
li $at, 13
beq $at, $v0 pass_zz310zz
move $a3, $v0
li $a2, 13
la $a0, test_name_zz311zz
la $a1, reg_name_zz312zz
jal fail
pass_zz310zz:

#
#  nCk correctly calculates 13 choose 13
#
li $a0, 13
li $a1, 13
jal nCk
li $at, 1
beq $at, $v0 pass_zz313zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz314zz
la $a1, reg_name_zz315zz
jal fail
pass_zz313zz:

#
#  nCk correctly calculates 14 choose 0
#
li $a0, 14
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz316zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz317zz
la $a1, reg_name_zz318zz
jal fail
pass_zz316zz:

#
#  nCk correctly calculates 14 choose 1
#
li $a0, 14
li $a1, 1
jal nCk
li $at, 14
beq $at, $v0 pass_zz319zz
move $a3, $v0
li $a2, 14
la $a0, test_name_zz320zz
la $a1, reg_name_zz321zz
jal fail
pass_zz319zz:

#
#  nCk correctly calculates 14 choose 2
#
li $a0, 14
li $a1, 2
jal nCk
li $at, 91
beq $at, $v0 pass_zz322zz
move $a3, $v0
li $a2, 91
la $a0, test_name_zz323zz
la $a1, reg_name_zz324zz
jal fail
pass_zz322zz:

#
#  nCk correctly calculates 14 choose 3
#
li $a0, 14
li $a1, 3
jal nCk
li $at, 364
beq $at, $v0 pass_zz325zz
move $a3, $v0
li $a2, 364
la $a0, test_name_zz326zz
la $a1, reg_name_zz327zz
jal fail
pass_zz325zz:

#
#  nCk correctly calculates 14 choose 4
#
li $a0, 14
li $a1, 4
jal nCk
li $at, 1001
beq $at, $v0 pass_zz328zz
move $a3, $v0
li $a2, 1001
la $a0, test_name_zz329zz
la $a1, reg_name_zz330zz
jal fail
pass_zz328zz:

#
#  nCk correctly calculates 14 choose 5
#
li $a0, 14
li $a1, 5
jal nCk
li $at, 2002
beq $at, $v0 pass_zz331zz
move $a3, $v0
li $a2, 2002
la $a0, test_name_zz332zz
la $a1, reg_name_zz333zz
jal fail
pass_zz331zz:

#
#  nCk correctly calculates 14 choose 6
#
li $a0, 14
li $a1, 6
jal nCk
li $at, 3003
beq $at, $v0 pass_zz334zz
move $a3, $v0
li $a2, 3003
la $a0, test_name_zz335zz
la $a1, reg_name_zz336zz
jal fail
pass_zz334zz:

#
#  nCk correctly calculates 14 choose 7
#
li $a0, 14
li $a1, 7
jal nCk
li $at, 3432
beq $at, $v0 pass_zz337zz
move $a3, $v0
li $a2, 3432
la $a0, test_name_zz338zz
la $a1, reg_name_zz339zz
jal fail
pass_zz337zz:

#
#  nCk correctly calculates 14 choose 8
#
li $a0, 14
li $a1, 8
jal nCk
li $at, 3003
beq $at, $v0 pass_zz340zz
move $a3, $v0
li $a2, 3003
la $a0, test_name_zz341zz
la $a1, reg_name_zz342zz
jal fail
pass_zz340zz:

#
#  nCk correctly calculates 14 choose 9
#
li $a0, 14
li $a1, 9
jal nCk
li $at, 2002
beq $at, $v0 pass_zz343zz
move $a3, $v0
li $a2, 2002
la $a0, test_name_zz344zz
la $a1, reg_name_zz345zz
jal fail
pass_zz343zz:

#
#  nCk correctly calculates 14 choose 10
#
li $a0, 14
li $a1, 10
jal nCk
li $at, 1001
beq $at, $v0 pass_zz346zz
move $a3, $v0
li $a2, 1001
la $a0, test_name_zz347zz
la $a1, reg_name_zz348zz
jal fail
pass_zz346zz:

#
#  nCk correctly calculates 14 choose 11
#
li $a0, 14
li $a1, 11
jal nCk
li $at, 364
beq $at, $v0 pass_zz349zz
move $a3, $v0
li $a2, 364
la $a0, test_name_zz350zz
la $a1, reg_name_zz351zz
jal fail
pass_zz349zz:

#
#  nCk correctly calculates 14 choose 12
#
li $a0, 14
li $a1, 12
jal nCk
li $at, 91
beq $at, $v0 pass_zz352zz
move $a3, $v0
li $a2, 91
la $a0, test_name_zz353zz
la $a1, reg_name_zz354zz
jal fail
pass_zz352zz:

#
#  nCk correctly calculates 14 choose 13
#
li $a0, 14
li $a1, 13
jal nCk
li $at, 14
beq $at, $v0 pass_zz355zz
move $a3, $v0
li $a2, 14
la $a0, test_name_zz356zz
la $a1, reg_name_zz357zz
jal fail
pass_zz355zz:

#
#  nCk correctly calculates 14 choose 14
#
li $a0, 14
li $a1, 14
jal nCk
li $at, 1
beq $at, $v0 pass_zz358zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz359zz
la $a1, reg_name_zz360zz
jal fail
pass_zz358zz:

#
#  nCk correctly calculates 15 choose 0
#
li $a0, 15
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz361zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz362zz
la $a1, reg_name_zz363zz
jal fail
pass_zz361zz:

#
#  nCk correctly calculates 15 choose 1
#
li $a0, 15
li $a1, 1
jal nCk
li $at, 15
beq $at, $v0 pass_zz364zz
move $a3, $v0
li $a2, 15
la $a0, test_name_zz365zz
la $a1, reg_name_zz366zz
jal fail
pass_zz364zz:

#
#  nCk correctly calculates 15 choose 2
#
li $a0, 15
li $a1, 2
jal nCk
li $at, 105
beq $at, $v0 pass_zz367zz
move $a3, $v0
li $a2, 105
la $a0, test_name_zz368zz
la $a1, reg_name_zz369zz
jal fail
pass_zz367zz:

#
#  nCk correctly calculates 15 choose 3
#
li $a0, 15
li $a1, 3
jal nCk
li $at, 455
beq $at, $v0 pass_zz370zz
move $a3, $v0
li $a2, 455
la $a0, test_name_zz371zz
la $a1, reg_name_zz372zz
jal fail
pass_zz370zz:

#
#  nCk correctly calculates 15 choose 4
#
li $a0, 15
li $a1, 4
jal nCk
li $at, 1365
beq $at, $v0 pass_zz373zz
move $a3, $v0
li $a2, 1365
la $a0, test_name_zz374zz
la $a1, reg_name_zz375zz
jal fail
pass_zz373zz:

#
#  nCk correctly calculates 15 choose 5
#
li $a0, 15
li $a1, 5
jal nCk
li $at, 3003
beq $at, $v0 pass_zz376zz
move $a3, $v0
li $a2, 3003
la $a0, test_name_zz377zz
la $a1, reg_name_zz378zz
jal fail
pass_zz376zz:

#
#  nCk correctly calculates 15 choose 6
#
li $a0, 15
li $a1, 6
jal nCk
li $at, 5005
beq $at, $v0 pass_zz379zz
move $a3, $v0
li $a2, 5005
la $a0, test_name_zz380zz
la $a1, reg_name_zz381zz
jal fail
pass_zz379zz:

#
#  nCk correctly calculates 15 choose 7
#
li $a0, 15
li $a1, 7
jal nCk
li $at, 6435
beq $at, $v0 pass_zz382zz
move $a3, $v0
li $a2, 6435
la $a0, test_name_zz383zz
la $a1, reg_name_zz384zz
jal fail
pass_zz382zz:

#
#  nCk correctly calculates 15 choose 8
#
li $a0, 15
li $a1, 8
jal nCk
li $at, 6435
beq $at, $v0 pass_zz385zz
move $a3, $v0
li $a2, 6435
la $a0, test_name_zz386zz
la $a1, reg_name_zz387zz
jal fail
pass_zz385zz:

#
#  nCk correctly calculates 15 choose 9
#
li $a0, 15
li $a1, 9
jal nCk
li $at, 5005
beq $at, $v0 pass_zz388zz
move $a3, $v0
li $a2, 5005
la $a0, test_name_zz389zz
la $a1, reg_name_zz390zz
jal fail
pass_zz388zz:

#
#  nCk correctly calculates 15 choose 10
#
li $a0, 15
li $a1, 10
jal nCk
li $at, 3003
beq $at, $v0 pass_zz391zz
move $a3, $v0
li $a2, 3003
la $a0, test_name_zz392zz
la $a1, reg_name_zz393zz
jal fail
pass_zz391zz:

#
#  nCk correctly calculates 15 choose 11
#
li $a0, 15
li $a1, 11
jal nCk
li $at, 1365
beq $at, $v0 pass_zz394zz
move $a3, $v0
li $a2, 1365
la $a0, test_name_zz395zz
la $a1, reg_name_zz396zz
jal fail
pass_zz394zz:

#
#  nCk correctly calculates 15 choose 12
#
li $a0, 15
li $a1, 12
jal nCk
li $at, 455
beq $at, $v0 pass_zz397zz
move $a3, $v0
li $a2, 455
la $a0, test_name_zz398zz
la $a1, reg_name_zz399zz
jal fail
pass_zz397zz:

#
#  nCk correctly calculates 15 choose 13
#
li $a0, 15
li $a1, 13
jal nCk
li $at, 105
beq $at, $v0 pass_zz400zz
move $a3, $v0
li $a2, 105
la $a0, test_name_zz401zz
la $a1, reg_name_zz402zz
jal fail
pass_zz400zz:

#
#  nCk correctly calculates 15 choose 14
#
li $a0, 15
li $a1, 14
jal nCk
li $at, 15
beq $at, $v0 pass_zz403zz
move $a3, $v0
li $a2, 15
la $a0, test_name_zz404zz
la $a1, reg_name_zz405zz
jal fail
pass_zz403zz:

#
#  nCk correctly calculates 15 choose 15
#
li $a0, 15
li $a1, 15
jal nCk
li $at, 1
beq $at, $v0 pass_zz406zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz407zz
la $a1, reg_name_zz408zz
jal fail
pass_zz406zz:

#
#  nCk correctly calculates 16 choose 0
#
li $a0, 16
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz409zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz410zz
la $a1, reg_name_zz411zz
jal fail
pass_zz409zz:

#
#  nCk correctly calculates 16 choose 1
#
li $a0, 16
li $a1, 1
jal nCk
li $at, 16
beq $at, $v0 pass_zz412zz
move $a3, $v0
li $a2, 16
la $a0, test_name_zz413zz
la $a1, reg_name_zz414zz
jal fail
pass_zz412zz:

#
#  nCk correctly calculates 16 choose 2
#
li $a0, 16
li $a1, 2
jal nCk
li $at, 120
beq $at, $v0 pass_zz415zz
move $a3, $v0
li $a2, 120
la $a0, test_name_zz416zz
la $a1, reg_name_zz417zz
jal fail
pass_zz415zz:

#
#  nCk correctly calculates 16 choose 3
#
li $a0, 16
li $a1, 3
jal nCk
li $at, 560
beq $at, $v0 pass_zz418zz
move $a3, $v0
li $a2, 560
la $a0, test_name_zz419zz
la $a1, reg_name_zz420zz
jal fail
pass_zz418zz:

#
#  nCk correctly calculates 16 choose 4
#
li $a0, 16
li $a1, 4
jal nCk
li $at, 1820
beq $at, $v0 pass_zz421zz
move $a3, $v0
li $a2, 1820
la $a0, test_name_zz422zz
la $a1, reg_name_zz423zz
jal fail
pass_zz421zz:

#
#  nCk correctly calculates 16 choose 5
#
li $a0, 16
li $a1, 5
jal nCk
li $at, 4368
beq $at, $v0 pass_zz424zz
move $a3, $v0
li $a2, 4368
la $a0, test_name_zz425zz
la $a1, reg_name_zz426zz
jal fail
pass_zz424zz:

#
#  nCk correctly calculates 16 choose 6
#
li $a0, 16
li $a1, 6
jal nCk
li $at, 8008
beq $at, $v0 pass_zz427zz
move $a3, $v0
li $a2, 8008
la $a0, test_name_zz428zz
la $a1, reg_name_zz429zz
jal fail
pass_zz427zz:

#
#  nCk correctly calculates 16 choose 7
#
li $a0, 16
li $a1, 7
jal nCk
li $at, 11440
beq $at, $v0 pass_zz430zz
move $a3, $v0
li $a2, 11440
la $a0, test_name_zz431zz
la $a1, reg_name_zz432zz
jal fail
pass_zz430zz:

#
#  nCk correctly calculates 16 choose 8
#
li $a0, 16
li $a1, 8
jal nCk
li $at, 12870
beq $at, $v0 pass_zz433zz
move $a3, $v0
li $a2, 12870
la $a0, test_name_zz434zz
la $a1, reg_name_zz435zz
jal fail
pass_zz433zz:

#
#  nCk correctly calculates 16 choose 9
#
li $a0, 16
li $a1, 9
jal nCk
li $at, 11440
beq $at, $v0 pass_zz436zz
move $a3, $v0
li $a2, 11440
la $a0, test_name_zz437zz
la $a1, reg_name_zz438zz
jal fail
pass_zz436zz:

#
#  nCk correctly calculates 16 choose 10
#
li $a0, 16
li $a1, 10
jal nCk
li $at, 8008
beq $at, $v0 pass_zz439zz
move $a3, $v0
li $a2, 8008
la $a0, test_name_zz440zz
la $a1, reg_name_zz441zz
jal fail
pass_zz439zz:

#
#  nCk correctly calculates 16 choose 11
#
li $a0, 16
li $a1, 11
jal nCk
li $at, 4368
beq $at, $v0 pass_zz442zz
move $a3, $v0
li $a2, 4368
la $a0, test_name_zz443zz
la $a1, reg_name_zz444zz
jal fail
pass_zz442zz:

#
#  nCk correctly calculates 16 choose 12
#
li $a0, 16
li $a1, 12
jal nCk
li $at, 1820
beq $at, $v0 pass_zz445zz
move $a3, $v0
li $a2, 1820
la $a0, test_name_zz446zz
la $a1, reg_name_zz447zz
jal fail
pass_zz445zz:

#
#  nCk correctly calculates 16 choose 13
#
li $a0, 16
li $a1, 13
jal nCk
li $at, 560
beq $at, $v0 pass_zz448zz
move $a3, $v0
li $a2, 560
la $a0, test_name_zz449zz
la $a1, reg_name_zz450zz
jal fail
pass_zz448zz:

#
#  nCk correctly calculates 16 choose 14
#
li $a0, 16
li $a1, 14
jal nCk
li $at, 120
beq $at, $v0 pass_zz451zz
move $a3, $v0
li $a2, 120
la $a0, test_name_zz452zz
la $a1, reg_name_zz453zz
jal fail
pass_zz451zz:

#
#  nCk correctly calculates 16 choose 15
#
li $a0, 16
li $a1, 15
jal nCk
li $at, 16
beq $at, $v0 pass_zz454zz
move $a3, $v0
li $a2, 16
la $a0, test_name_zz455zz
la $a1, reg_name_zz456zz
jal fail
pass_zz454zz:

#
#  nCk correctly calculates 16 choose 16
#
li $a0, 16
li $a1, 16
jal nCk
li $at, 1
beq $at, $v0 pass_zz457zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz458zz
la $a1, reg_name_zz459zz
jal fail
pass_zz457zz:

#
#  nCk correctly calculates 17 choose 0
#
li $a0, 17
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz460zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz461zz
la $a1, reg_name_zz462zz
jal fail
pass_zz460zz:

#
#  nCk correctly calculates 17 choose 1
#
li $a0, 17
li $a1, 1
jal nCk
li $at, 17
beq $at, $v0 pass_zz463zz
move $a3, $v0
li $a2, 17
la $a0, test_name_zz464zz
la $a1, reg_name_zz465zz
jal fail
pass_zz463zz:

#
#  nCk correctly calculates 17 choose 2
#
li $a0, 17
li $a1, 2
jal nCk
li $at, 136
beq $at, $v0 pass_zz466zz
move $a3, $v0
li $a2, 136
la $a0, test_name_zz467zz
la $a1, reg_name_zz468zz
jal fail
pass_zz466zz:

#
#  nCk correctly calculates 17 choose 3
#
li $a0, 17
li $a1, 3
jal nCk
li $at, 680
beq $at, $v0 pass_zz469zz
move $a3, $v0
li $a2, 680
la $a0, test_name_zz470zz
la $a1, reg_name_zz471zz
jal fail
pass_zz469zz:

#
#  nCk correctly calculates 17 choose 4
#
li $a0, 17
li $a1, 4
jal nCk
li $at, 2380
beq $at, $v0 pass_zz472zz
move $a3, $v0
li $a2, 2380
la $a0, test_name_zz473zz
la $a1, reg_name_zz474zz
jal fail
pass_zz472zz:

#
#  nCk correctly calculates 17 choose 5
#
li $a0, 17
li $a1, 5
jal nCk
li $at, 6188
beq $at, $v0 pass_zz475zz
move $a3, $v0
li $a2, 6188
la $a0, test_name_zz476zz
la $a1, reg_name_zz477zz
jal fail
pass_zz475zz:

#
#  nCk correctly calculates 17 choose 6
#
li $a0, 17
li $a1, 6
jal nCk
li $at, 12376
beq $at, $v0 pass_zz478zz
move $a3, $v0
li $a2, 12376
la $a0, test_name_zz479zz
la $a1, reg_name_zz480zz
jal fail
pass_zz478zz:

#
#  nCk correctly calculates 17 choose 7
#
li $a0, 17
li $a1, 7
jal nCk
li $at, 19448
beq $at, $v0 pass_zz481zz
move $a3, $v0
li $a2, 19448
la $a0, test_name_zz482zz
la $a1, reg_name_zz483zz
jal fail
pass_zz481zz:

#
#  nCk correctly calculates 17 choose 8
#
li $a0, 17
li $a1, 8
jal nCk
li $at, 24310
beq $at, $v0 pass_zz484zz
move $a3, $v0
li $a2, 24310
la $a0, test_name_zz485zz
la $a1, reg_name_zz486zz
jal fail
pass_zz484zz:

#
#  nCk correctly calculates 17 choose 9
#
li $a0, 17
li $a1, 9
jal nCk
li $at, 24310
beq $at, $v0 pass_zz487zz
move $a3, $v0
li $a2, 24310
la $a0, test_name_zz488zz
la $a1, reg_name_zz489zz
jal fail
pass_zz487zz:

#
#  nCk correctly calculates 17 choose 10
#
li $a0, 17
li $a1, 10
jal nCk
li $at, 19448
beq $at, $v0 pass_zz490zz
move $a3, $v0
li $a2, 19448
la $a0, test_name_zz491zz
la $a1, reg_name_zz492zz
jal fail
pass_zz490zz:

#
#  nCk correctly calculates 17 choose 11
#
li $a0, 17
li $a1, 11
jal nCk
li $at, 12376
beq $at, $v0 pass_zz493zz
move $a3, $v0
li $a2, 12376
la $a0, test_name_zz494zz
la $a1, reg_name_zz495zz
jal fail
pass_zz493zz:

#
#  nCk correctly calculates 17 choose 12
#
li $a0, 17
li $a1, 12
jal nCk
li $at, 6188
beq $at, $v0 pass_zz496zz
move $a3, $v0
li $a2, 6188
la $a0, test_name_zz497zz
la $a1, reg_name_zz498zz
jal fail
pass_zz496zz:

#
#  nCk correctly calculates 17 choose 13
#
li $a0, 17
li $a1, 13
jal nCk
li $at, 2380
beq $at, $v0 pass_zz499zz
move $a3, $v0
li $a2, 2380
la $a0, test_name_zz500zz
la $a1, reg_name_zz501zz
jal fail
pass_zz499zz:

#
#  nCk correctly calculates 17 choose 14
#
li $a0, 17
li $a1, 14
jal nCk
li $at, 680
beq $at, $v0 pass_zz502zz
move $a3, $v0
li $a2, 680
la $a0, test_name_zz503zz
la $a1, reg_name_zz504zz
jal fail
pass_zz502zz:

#
#  nCk correctly calculates 17 choose 15
#
li $a0, 17
li $a1, 15
jal nCk
li $at, 136
beq $at, $v0 pass_zz505zz
move $a3, $v0
li $a2, 136
la $a0, test_name_zz506zz
la $a1, reg_name_zz507zz
jal fail
pass_zz505zz:

#
#  nCk correctly calculates 17 choose 16
#
li $a0, 17
li $a1, 16
jal nCk
li $at, 17
beq $at, $v0 pass_zz508zz
move $a3, $v0
li $a2, 17
la $a0, test_name_zz509zz
la $a1, reg_name_zz510zz
jal fail
pass_zz508zz:

#
#  nCk correctly calculates 17 choose 17
#
li $a0, 17
li $a1, 17
jal nCk
li $at, 1
beq $at, $v0 pass_zz511zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz512zz
la $a1, reg_name_zz513zz
jal fail
pass_zz511zz:

#
#  nCk correctly calculates 18 choose 0
#
li $a0, 18
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz514zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz515zz
la $a1, reg_name_zz516zz
jal fail
pass_zz514zz:

#
#  nCk correctly calculates 18 choose 1
#
li $a0, 18
li $a1, 1
jal nCk
li $at, 18
beq $at, $v0 pass_zz517zz
move $a3, $v0
li $a2, 18
la $a0, test_name_zz518zz
la $a1, reg_name_zz519zz
jal fail
pass_zz517zz:

#
#  nCk correctly calculates 18 choose 2
#
li $a0, 18
li $a1, 2
jal nCk
li $at, 153
beq $at, $v0 pass_zz520zz
move $a3, $v0
li $a2, 153
la $a0, test_name_zz521zz
la $a1, reg_name_zz522zz
jal fail
pass_zz520zz:

#
#  nCk correctly calculates 18 choose 3
#
li $a0, 18
li $a1, 3
jal nCk
li $at, 816
beq $at, $v0 pass_zz523zz
move $a3, $v0
li $a2, 816
la $a0, test_name_zz524zz
la $a1, reg_name_zz525zz
jal fail
pass_zz523zz:

#
#  nCk correctly calculates 18 choose 4
#
li $a0, 18
li $a1, 4
jal nCk
li $at, 3060
beq $at, $v0 pass_zz526zz
move $a3, $v0
li $a2, 3060
la $a0, test_name_zz527zz
la $a1, reg_name_zz528zz
jal fail
pass_zz526zz:

#
#  nCk correctly calculates 18 choose 5
#
li $a0, 18
li $a1, 5
jal nCk
li $at, 8568
beq $at, $v0 pass_zz529zz
move $a3, $v0
li $a2, 8568
la $a0, test_name_zz530zz
la $a1, reg_name_zz531zz
jal fail
pass_zz529zz:

#
#  nCk correctly calculates 18 choose 6
#
li $a0, 18
li $a1, 6
jal nCk
li $at, 18564
beq $at, $v0 pass_zz532zz
move $a3, $v0
li $a2, 18564
la $a0, test_name_zz533zz
la $a1, reg_name_zz534zz
jal fail
pass_zz532zz:

#
#  nCk correctly calculates 18 choose 7
#
li $a0, 18
li $a1, 7
jal nCk
li $at, 31824
beq $at, $v0 pass_zz535zz
move $a3, $v0
li $a2, 31824
la $a0, test_name_zz536zz
la $a1, reg_name_zz537zz
jal fail
pass_zz535zz:

#
#  nCk correctly calculates 18 choose 8
#
li $a0, 18
li $a1, 8
jal nCk
li $at, 43758
beq $at, $v0 pass_zz538zz
move $a3, $v0
li $a2, 43758
la $a0, test_name_zz539zz
la $a1, reg_name_zz540zz
jal fail
pass_zz538zz:

#
#  nCk correctly calculates 18 choose 9
#
li $a0, 18
li $a1, 9
jal nCk
li $at, 48620
beq $at, $v0 pass_zz541zz
move $a3, $v0
li $a2, 48620
la $a0, test_name_zz542zz
la $a1, reg_name_zz543zz
jal fail
pass_zz541zz:

#
#  nCk correctly calculates 18 choose 10
#
li $a0, 18
li $a1, 10
jal nCk
li $at, 43758
beq $at, $v0 pass_zz544zz
move $a3, $v0
li $a2, 43758
la $a0, test_name_zz545zz
la $a1, reg_name_zz546zz
jal fail
pass_zz544zz:

#
#  nCk correctly calculates 18 choose 11
#
li $a0, 18
li $a1, 11
jal nCk
li $at, 31824
beq $at, $v0 pass_zz547zz
move $a3, $v0
li $a2, 31824
la $a0, test_name_zz548zz
la $a1, reg_name_zz549zz
jal fail
pass_zz547zz:

#
#  nCk correctly calculates 18 choose 12
#
li $a0, 18
li $a1, 12
jal nCk
li $at, 18564
beq $at, $v0 pass_zz550zz
move $a3, $v0
li $a2, 18564
la $a0, test_name_zz551zz
la $a1, reg_name_zz552zz
jal fail
pass_zz550zz:

#
#  nCk correctly calculates 18 choose 13
#
li $a0, 18
li $a1, 13
jal nCk
li $at, 8568
beq $at, $v0 pass_zz553zz
move $a3, $v0
li $a2, 8568
la $a0, test_name_zz554zz
la $a1, reg_name_zz555zz
jal fail
pass_zz553zz:

#
#  nCk correctly calculates 18 choose 14
#
li $a0, 18
li $a1, 14
jal nCk
li $at, 3060
beq $at, $v0 pass_zz556zz
move $a3, $v0
li $a2, 3060
la $a0, test_name_zz557zz
la $a1, reg_name_zz558zz
jal fail
pass_zz556zz:

#
#  nCk correctly calculates 18 choose 15
#
li $a0, 18
li $a1, 15
jal nCk
li $at, 816
beq $at, $v0 pass_zz559zz
move $a3, $v0
li $a2, 816
la $a0, test_name_zz560zz
la $a1, reg_name_zz561zz
jal fail
pass_zz559zz:

#
#  nCk correctly calculates 18 choose 16
#
li $a0, 18
li $a1, 16
jal nCk
li $at, 153
beq $at, $v0 pass_zz562zz
move $a3, $v0
li $a2, 153
la $a0, test_name_zz563zz
la $a1, reg_name_zz564zz
jal fail
pass_zz562zz:

#
#  nCk correctly calculates 18 choose 17
#
li $a0, 18
li $a1, 17
jal nCk
li $at, 18
beq $at, $v0 pass_zz565zz
move $a3, $v0
li $a2, 18
la $a0, test_name_zz566zz
la $a1, reg_name_zz567zz
jal fail
pass_zz565zz:

#
#  nCk correctly calculates 18 choose 18
#
li $a0, 18
li $a1, 18
jal nCk
li $at, 1
beq $at, $v0 pass_zz568zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz569zz
la $a1, reg_name_zz570zz
jal fail
pass_zz568zz:

#
#  nCk correctly calculates 19 choose 0
#
li $a0, 19
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz571zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz572zz
la $a1, reg_name_zz573zz
jal fail
pass_zz571zz:

#
#  nCk correctly calculates 19 choose 1
#
li $a0, 19
li $a1, 1
jal nCk
li $at, 19
beq $at, $v0 pass_zz574zz
move $a3, $v0
li $a2, 19
la $a0, test_name_zz575zz
la $a1, reg_name_zz576zz
jal fail
pass_zz574zz:

#
#  nCk correctly calculates 19 choose 2
#
li $a0, 19
li $a1, 2
jal nCk
li $at, 171
beq $at, $v0 pass_zz577zz
move $a3, $v0
li $a2, 171
la $a0, test_name_zz578zz
la $a1, reg_name_zz579zz
jal fail
pass_zz577zz:

#
#  nCk correctly calculates 19 choose 3
#
li $a0, 19
li $a1, 3
jal nCk
li $at, 969
beq $at, $v0 pass_zz580zz
move $a3, $v0
li $a2, 969
la $a0, test_name_zz581zz
la $a1, reg_name_zz582zz
jal fail
pass_zz580zz:

#
#  nCk correctly calculates 19 choose 4
#
li $a0, 19
li $a1, 4
jal nCk
li $at, 3876
beq $at, $v0 pass_zz583zz
move $a3, $v0
li $a2, 3876
la $a0, test_name_zz584zz
la $a1, reg_name_zz585zz
jal fail
pass_zz583zz:

#
#  nCk correctly calculates 19 choose 5
#
li $a0, 19
li $a1, 5
jal nCk
li $at, 11628
beq $at, $v0 pass_zz586zz
move $a3, $v0
li $a2, 11628
la $a0, test_name_zz587zz
la $a1, reg_name_zz588zz
jal fail
pass_zz586zz:

#
#  nCk correctly calculates 19 choose 6
#
li $a0, 19
li $a1, 6
jal nCk
li $at, 27132
beq $at, $v0 pass_zz589zz
move $a3, $v0
li $a2, 27132
la $a0, test_name_zz590zz
la $a1, reg_name_zz591zz
jal fail
pass_zz589zz:

#
#  nCk correctly calculates 19 choose 7
#
li $a0, 19
li $a1, 7
jal nCk
li $at, 50388
beq $at, $v0 pass_zz592zz
move $a3, $v0
li $a2, 50388
la $a0, test_name_zz593zz
la $a1, reg_name_zz594zz
jal fail
pass_zz592zz:

#
#  nCk correctly calculates 19 choose 8
#
li $a0, 19
li $a1, 8
jal nCk
li $at, 75582
beq $at, $v0 pass_zz595zz
move $a3, $v0
li $a2, 75582
la $a0, test_name_zz596zz
la $a1, reg_name_zz597zz
jal fail
pass_zz595zz:

#
#  nCk correctly calculates 19 choose 9
#
li $a0, 19
li $a1, 9
jal nCk
li $at, 92378
beq $at, $v0 pass_zz598zz
move $a3, $v0
li $a2, 92378
la $a0, test_name_zz599zz
la $a1, reg_name_zz600zz
jal fail
pass_zz598zz:

#
#  nCk correctly calculates 19 choose 10
#
li $a0, 19
li $a1, 10
jal nCk
li $at, 92378
beq $at, $v0 pass_zz601zz
move $a3, $v0
li $a2, 92378
la $a0, test_name_zz602zz
la $a1, reg_name_zz603zz
jal fail
pass_zz601zz:

#
#  nCk correctly calculates 19 choose 11
#
li $a0, 19
li $a1, 11
jal nCk
li $at, 75582
beq $at, $v0 pass_zz604zz
move $a3, $v0
li $a2, 75582
la $a0, test_name_zz605zz
la $a1, reg_name_zz606zz
jal fail
pass_zz604zz:

#
#  nCk correctly calculates 19 choose 12
#
li $a0, 19
li $a1, 12
jal nCk
li $at, 50388
beq $at, $v0 pass_zz607zz
move $a3, $v0
li $a2, 50388
la $a0, test_name_zz608zz
la $a1, reg_name_zz609zz
jal fail
pass_zz607zz:

#
#  nCk correctly calculates 19 choose 13
#
li $a0, 19
li $a1, 13
jal nCk
li $at, 27132
beq $at, $v0 pass_zz610zz
move $a3, $v0
li $a2, 27132
la $a0, test_name_zz611zz
la $a1, reg_name_zz612zz
jal fail
pass_zz610zz:

#
#  nCk correctly calculates 19 choose 14
#
li $a0, 19
li $a1, 14
jal nCk
li $at, 11628
beq $at, $v0 pass_zz613zz
move $a3, $v0
li $a2, 11628
la $a0, test_name_zz614zz
la $a1, reg_name_zz615zz
jal fail
pass_zz613zz:

#
#  nCk correctly calculates 19 choose 15
#
li $a0, 19
li $a1, 15
jal nCk
li $at, 3876
beq $at, $v0 pass_zz616zz
move $a3, $v0
li $a2, 3876
la $a0, test_name_zz617zz
la $a1, reg_name_zz618zz
jal fail
pass_zz616zz:

#
#  nCk correctly calculates 19 choose 16
#
li $a0, 19
li $a1, 16
jal nCk
li $at, 969
beq $at, $v0 pass_zz619zz
move $a3, $v0
li $a2, 969
la $a0, test_name_zz620zz
la $a1, reg_name_zz621zz
jal fail
pass_zz619zz:

#
#  nCk correctly calculates 19 choose 17
#
li $a0, 19
li $a1, 17
jal nCk
li $at, 171
beq $at, $v0 pass_zz622zz
move $a3, $v0
li $a2, 171
la $a0, test_name_zz623zz
la $a1, reg_name_zz624zz
jal fail
pass_zz622zz:

#
#  nCk correctly calculates 19 choose 18
#
li $a0, 19
li $a1, 18
jal nCk
li $at, 19
beq $at, $v0 pass_zz625zz
move $a3, $v0
li $a2, 19
la $a0, test_name_zz626zz
la $a1, reg_name_zz627zz
jal fail
pass_zz625zz:

#
#  nCk correctly calculates 19 choose 19
#
li $a0, 19
li $a1, 19
jal nCk
li $at, 1
beq $at, $v0 pass_zz628zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz629zz
la $a1, reg_name_zz630zz
jal fail
pass_zz628zz:

#
#  nCk correctly calculates 20 choose 0
#
li $a0, 20
li $a1, 0
jal nCk
li $at, 1
beq $at, $v0 pass_zz631zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz632zz
la $a1, reg_name_zz633zz
jal fail
pass_zz631zz:

#
#  nCk correctly calculates 20 choose 1
#
li $a0, 20
li $a1, 1
jal nCk
li $at, 20
beq $at, $v0 pass_zz634zz
move $a3, $v0
li $a2, 20
la $a0, test_name_zz635zz
la $a1, reg_name_zz636zz
jal fail
pass_zz634zz:

#
#  nCk correctly calculates 20 choose 2
#
li $a0, 20
li $a1, 2
jal nCk
li $at, 190
beq $at, $v0 pass_zz637zz
move $a3, $v0
li $a2, 190
la $a0, test_name_zz638zz
la $a1, reg_name_zz639zz
jal fail
pass_zz637zz:

#
#  nCk correctly calculates 20 choose 3
#
li $a0, 20
li $a1, 3
jal nCk
li $at, 1140
beq $at, $v0 pass_zz640zz
move $a3, $v0
li $a2, 1140
la $a0, test_name_zz641zz
la $a1, reg_name_zz642zz
jal fail
pass_zz640zz:

#
#  nCk correctly calculates 20 choose 4
#
li $a0, 20
li $a1, 4
jal nCk
li $at, 4845
beq $at, $v0 pass_zz643zz
move $a3, $v0
li $a2, 4845
la $a0, test_name_zz644zz
la $a1, reg_name_zz645zz
jal fail
pass_zz643zz:

#
#  nCk correctly calculates 20 choose 5
#
li $a0, 20
li $a1, 5
jal nCk
li $at, 15504
beq $at, $v0 pass_zz646zz
move $a3, $v0
li $a2, 15504
la $a0, test_name_zz647zz
la $a1, reg_name_zz648zz
jal fail
pass_zz646zz:

#
#  nCk correctly calculates 20 choose 6
#
li $a0, 20
li $a1, 6
jal nCk
li $at, 38760
beq $at, $v0 pass_zz649zz
move $a3, $v0
li $a2, 38760
la $a0, test_name_zz650zz
la $a1, reg_name_zz651zz
jal fail
pass_zz649zz:

#
#  nCk correctly calculates 20 choose 7
#
li $a0, 20
li $a1, 7
jal nCk
li $at, 77520
beq $at, $v0 pass_zz652zz
move $a3, $v0
li $a2, 77520
la $a0, test_name_zz653zz
la $a1, reg_name_zz654zz
jal fail
pass_zz652zz:

#
#  nCk correctly calculates 20 choose 8
#
li $a0, 20
li $a1, 8
jal nCk
li $at, 125970
beq $at, $v0 pass_zz655zz
move $a3, $v0
li $a2, 125970
la $a0, test_name_zz656zz
la $a1, reg_name_zz657zz
jal fail
pass_zz655zz:

#
#  nCk correctly calculates 20 choose 9
#
li $a0, 20
li $a1, 9
jal nCk
li $at, 167960
beq $at, $v0 pass_zz658zz
move $a3, $v0
li $a2, 167960
la $a0, test_name_zz659zz
la $a1, reg_name_zz660zz
jal fail
pass_zz658zz:

#
#  nCk correctly calculates 20 choose 10
#
li $a0, 20
li $a1, 10
jal nCk
li $at, 184756
beq $at, $v0 pass_zz661zz
move $a3, $v0
li $a2, 184756
la $a0, test_name_zz662zz
la $a1, reg_name_zz663zz
jal fail
pass_zz661zz:

#
#  nCk correctly calculates 20 choose 11
#
li $a0, 20
li $a1, 11
jal nCk
li $at, 167960
beq $at, $v0 pass_zz664zz
move $a3, $v0
li $a2, 167960
la $a0, test_name_zz665zz
la $a1, reg_name_zz666zz
jal fail
pass_zz664zz:

#
#  nCk correctly calculates 20 choose 12
#
li $a0, 20
li $a1, 12
jal nCk
li $at, 125970
beq $at, $v0 pass_zz667zz
move $a3, $v0
li $a2, 125970
la $a0, test_name_zz668zz
la $a1, reg_name_zz669zz
jal fail
pass_zz667zz:

#
#  nCk correctly calculates 20 choose 13
#
li $a0, 20
li $a1, 13
jal nCk
li $at, 77520
beq $at, $v0 pass_zz670zz
move $a3, $v0
li $a2, 77520
la $a0, test_name_zz671zz
la $a1, reg_name_zz672zz
jal fail
pass_zz670zz:

#
#  nCk correctly calculates 20 choose 14
#
li $a0, 20
li $a1, 14
jal nCk
li $at, 38760
beq $at, $v0 pass_zz673zz
move $a3, $v0
li $a2, 38760
la $a0, test_name_zz674zz
la $a1, reg_name_zz675zz
jal fail
pass_zz673zz:

#
#  nCk correctly calculates 20 choose 15
#
li $a0, 20
li $a1, 15
jal nCk
li $at, 15504
beq $at, $v0 pass_zz676zz
move $a3, $v0
li $a2, 15504
la $a0, test_name_zz677zz
la $a1, reg_name_zz678zz
jal fail
pass_zz676zz:

#
#  nCk correctly calculates 20 choose 16
#
li $a0, 20
li $a1, 16
jal nCk
li $at, 4845
beq $at, $v0 pass_zz679zz
move $a3, $v0
li $a2, 4845
la $a0, test_name_zz680zz
la $a1, reg_name_zz681zz
jal fail
pass_zz679zz:

#
#  nCk correctly calculates 20 choose 17
#
li $a0, 20
li $a1, 17
jal nCk
li $at, 1140
beq $at, $v0 pass_zz682zz
move $a3, $v0
li $a2, 1140
la $a0, test_name_zz683zz
la $a1, reg_name_zz684zz
jal fail
pass_zz682zz:

#
#  nCk correctly calculates 20 choose 18
#
li $a0, 20
li $a1, 18
jal nCk
li $at, 190
beq $at, $v0 pass_zz685zz
move $a3, $v0
li $a2, 190
la $a0, test_name_zz686zz
la $a1, reg_name_zz687zz
jal fail
pass_zz685zz:

#
#  nCk correctly calculates 20 choose 19
#
li $a0, 20
li $a1, 19
jal nCk
li $at, 20
beq $at, $v0 pass_zz688zz
move $a3, $v0
li $a2, 20
la $a0, test_name_zz689zz
la $a1, reg_name_zz690zz
jal fail
pass_zz688zz:

#
#  nCk correctly calculates 20 choose 20
#
li $a0, 20
li $a1, 20
jal nCk
li $at, 1
beq $at, $v0 pass_zz691zz
move $a3, $v0
li $a2, 1
la $a0, test_name_zz692zz
la $a1, reg_name_zz693zz
jal fail
pass_zz691zz:
la $a0, s_pass
li $v0, 4
syscall

li $v0, 10
syscall

.data
reg_name_zz654zz: .asciiz "v0"
test_name_zz65zz: .asciiz " nCk correctly calculates 6 choose 0"
test_name_zz458zz: .asciiz " nCk correctly calculates 16 choose 16"
reg_name_zz261zz: .asciiz "v0"
test_name_zz110zz: .asciiz " nCk correctly calculates 8 choose 0"
test_name_zz503zz: .asciiz " nCk correctly calculates 17 choose 14"
reg_name_zz306zz: .asciiz "v0"
test_name_zz155zz: .asciiz " nCk correctly calculates 9 choose 6"
test_name_zz548zz: .asciiz " nCk correctly calculates 18 choose 11"
reg_name_zz351zz: .asciiz "v0"
test_name_zz200zz: .asciiz " nCk correctly calculates 11 choose 0"
reg_name_zz3zz: .asciiz "v0"
test_name_zz593zz: .asciiz " nCk correctly calculates 19 choose 7"
reg_name_zz396zz: .asciiz "v0"
test_name_zz638zz: .asciiz " nCk correctly calculates 20 choose 2"
test_name_zz245zz: .asciiz " nCk correctly calculates 12 choose 3"
reg_name_zz48zz: .asciiz "v0"
reg_name_zz441zz: .asciiz "v0"
test_name_zz683zz: .asciiz " nCk correctly calculates 20 choose 17"
test_name_zz290zz: .asciiz " nCk correctly calculates 13 choose 5"
reg_name_zz93zz: .asciiz "v0"
reg_name_zz486zz: .asciiz "v0"
test_name_zz335zz: .asciiz " nCk correctly calculates 14 choose 6"
reg_name_zz138zz: .asciiz "v0"
reg_name_zz531zz: .asciiz "v0"
test_name_zz380zz: .asciiz " nCk correctly calculates 15 choose 6"
reg_name_zz183zz: .asciiz "v0"
reg_name_zz576zz: .asciiz "v0"
reg_name_zz621zz: .asciiz "v0"
test_name_zz425zz: .asciiz " nCk correctly calculates 16 choose 5"
reg_name_zz228zz: .asciiz "v0"
test_name_zz32zz: .asciiz " nCk correctly calculates 4 choose 0"
reg_name_zz666zz: .asciiz "v0"
test_name_zz470zz: .asciiz " nCk correctly calculates 17 choose 3"
reg_name_zz273zz: .asciiz "v0"
test_name_zz77zz: .asciiz " nCk correctly calculates 6 choose 4"
test_name_zz515zz: .asciiz " nCk correctly calculates 18 choose 0"
reg_name_zz318zz: .asciiz "v0"
test_name_zz122zz: .asciiz " nCk correctly calculates 8 choose 4"
test_name_zz560zz: .asciiz " nCk correctly calculates 18 choose 15"
reg_name_zz363zz: .asciiz "v0"
test_name_zz167zz: .asciiz " nCk correctly calculates 10 choose 0"
test_name_zz605zz: .asciiz " nCk correctly calculates 19 choose 11"
reg_name_zz408zz: .asciiz "v0"
test_name_zz212zz: .asciiz " nCk correctly calculates 11 choose 4"
reg_name_zz15zz: .asciiz "v0"
test_name_zz650zz: .asciiz " nCk correctly calculates 20 choose 6"
reg_name_zz453zz: .asciiz "v0"
test_name_zz257zz: .asciiz " nCk correctly calculates 12 choose 7"
reg_name_zz60zz: .asciiz "v0"
reg_name_zz498zz: .asciiz "v0"
test_name_zz302zz: .asciiz " nCk correctly calculates 13 choose 9"
reg_name_zz105zz: .asciiz "v0"
reg_name_zz543zz: .asciiz "v0"
test_name_zz347zz: .asciiz " nCk correctly calculates 14 choose 10"
reg_name_zz150zz: .asciiz "v0"
reg_name_zz588zz: .asciiz "v0"
test_name_zz392zz: .asciiz " nCk correctly calculates 15 choose 10"
reg_name_zz195zz: .asciiz "v0"
reg_name_zz633zz: .asciiz "v0"
test_name_zz44zz: .asciiz " nCk correctly calculates 4 choose 4"
test_name_zz437zz: .asciiz " nCk correctly calculates 16 choose 9"
reg_name_zz240zz: .asciiz "v0"
reg_name_zz678zz: .asciiz "v0"
test_name_zz89zz: .asciiz " nCk correctly calculates 7 choose 1"
test_name_zz482zz: .asciiz " nCk correctly calculates 17 choose 7"
reg_name_zz285zz: .asciiz "v0"
test_name_zz134zz: .asciiz " nCk correctly calculates 8 choose 8"
test_name_zz527zz: .asciiz " nCk correctly calculates 18 choose 4"
reg_name_zz330zz: .asciiz "v0"
test_name_zz179zz: .asciiz " nCk correctly calculates 10 choose 4"
test_name_zz572zz: .asciiz " nCk correctly calculates 19 choose 0"
reg_name_zz375zz: .asciiz "v0"
test_name_zz617zz: .asciiz " nCk correctly calculates 19 choose 15"
test_name_zz224zz: .asciiz " nCk correctly calculates 11 choose 8"
reg_name_zz27zz: .asciiz "v0"
reg_name_zz420zz: .asciiz "v0"
test_name_zz662zz: .asciiz " nCk correctly calculates 20 choose 10"
test_name_zz269zz: .asciiz " nCk correctly calculates 12 choose 11"
reg_name_zz72zz: .asciiz "v0"
reg_name_zz465zz: .asciiz "v0"
test_name_zz314zz: .asciiz " nCk correctly calculates 13 choose 13"
reg_name_zz117zz: .asciiz "v0"
reg_name_zz510zz: .asciiz "v0"
test_name_zz359zz: .asciiz " nCk correctly calculates 14 choose 14"
reg_name_zz162zz: .asciiz "v0"
reg_name_zz555zz: .asciiz "v0"
test_name_zz404zz: .asciiz " nCk correctly calculates 15 choose 14"
reg_name_zz207zz: .asciiz "v0"
test_name_zz11zz: .asciiz " nCk correctly calculates 2 choose 0"
reg_name_zz600zz: .asciiz "v0"
reg_name_zz645zz: .asciiz "v0"
test_name_zz449zz: .asciiz " nCk correctly calculates 16 choose 13"
reg_name_zz252zz: .asciiz "v0"
test_name_zz56zz: .asciiz " nCk correctly calculates 5 choose 3"
reg_name_zz690zz: .asciiz "v0"
reg_name_zz297zz: .asciiz "v0"
test_name_zz101zz: .asciiz " nCk correctly calculates 7 choose 5"
test_name_zz494zz: .asciiz " nCk correctly calculates 17 choose 11"
reg_name_zz342zz: .asciiz "v0"
test_name_zz146zz: .asciiz " nCk correctly calculates 9 choose 3"
test_name_zz539zz: .asciiz " nCk correctly calculates 18 choose 8"
reg_name_zz387zz: .asciiz "v0"
test_name_zz191zz: .asciiz " nCk correctly calculates 10 choose 8"
test_name_zz584zz: .asciiz " nCk correctly calculates 19 choose 4"
test_name_zz629zz: .asciiz " nCk correctly calculates 19 choose 19"
reg_name_zz432zz: .asciiz "v0"
test_name_zz236zz: .asciiz " nCk correctly calculates 12 choose 0"
reg_name_zz39zz: .asciiz "v0"
test_name_zz674zz: .asciiz " nCk correctly calculates 20 choose 14"
reg_name_zz477zz: .asciiz "v0"
test_name_zz281zz: .asciiz " nCk correctly calculates 13 choose 2"
reg_name_zz84zz: .asciiz "v0"
reg_name_zz522zz: .asciiz "v0"
test_name_zz326zz: .asciiz " nCk correctly calculates 14 choose 3"
reg_name_zz129zz: .asciiz "v0"
reg_name_zz567zz: .asciiz "v0"
test_name_zz371zz: .asciiz " nCk correctly calculates 15 choose 3"
reg_name_zz174zz: .asciiz "v0"
reg_name_zz612zz: .asciiz "v0"
test_name_zz23zz: .asciiz " nCk correctly calculates 3 choose 1"
test_name_zz416zz: .asciiz " nCk correctly calculates 16 choose 2"
reg_name_zz219zz: .asciiz "v0"
reg_name_zz657zz: .asciiz "v0"
test_name_zz68zz: .asciiz " nCk correctly calculates 6 choose 1"
test_name_zz461zz: .asciiz " nCk correctly calculates 17 choose 0"
reg_name_zz264zz: .asciiz "v0"
test_name_zz113zz: .asciiz " nCk correctly calculates 8 choose 1"
test_name_zz506zz: .asciiz " nCk correctly calculates 17 choose 15"
reg_name_zz309zz: .asciiz "v0"
test_name_zz158zz: .asciiz " nCk correctly calculates 9 choose 7"
test_name_zz551zz: .asciiz " nCk correctly calculates 18 choose 12"
reg_name_zz354zz: .asciiz "v0"
test_name_zz203zz: .asciiz " nCk correctly calculates 11 choose 1"
reg_name_zz6zz: .asciiz "v0"
test_name_zz596zz: .asciiz " nCk correctly calculates 19 choose 8"
reg_name_zz399zz: .asciiz "v0"
test_name_zz641zz: .asciiz " nCk correctly calculates 20 choose 3"
test_name_zz248zz: .asciiz " nCk correctly calculates 12 choose 4"
reg_name_zz51zz: .asciiz "v0"
reg_name_zz444zz: .asciiz "v0"
test_name_zz686zz: .asciiz " nCk correctly calculates 20 choose 18"
reg_name_zz96zz: .asciiz "v0"
reg_name_zz489zz: .asciiz "v0"
test_name_zz293zz: .asciiz " nCk correctly calculates 13 choose 6"
reg_name_zz141zz: .asciiz "v0"
reg_name_zz534zz: .asciiz "v0"
test_name_zz338zz: .asciiz " nCk correctly calculates 14 choose 7"
reg_name_zz186zz: .asciiz "v0"
reg_name_zz579zz: .asciiz "v0"
test_name_zz383zz: .asciiz " nCk correctly calculates 15 choose 7"
reg_name_zz624zz: .asciiz "v0"
reg_name_zz231zz: .asciiz "v0"
test_name_zz35zz: .asciiz " nCk correctly calculates 4 choose 1"
test_name_zz428zz: .asciiz " nCk correctly calculates 16 choose 6"
reg_name_zz669zz: .asciiz "v0"
reg_name_zz276zz: .asciiz "v0"
test_name_zz80zz: .asciiz " nCk correctly calculates 6 choose 5"
test_name_zz473zz: .asciiz " nCk correctly calculates 17 choose 4"
reg_name_zz321zz: .asciiz "v0"
test_name_zz125zz: .asciiz " nCk correctly calculates 8 choose 5"
test_name_zz518zz: .asciiz " nCk correctly calculates 18 choose 1"
reg_name_zz366zz: .asciiz "v0"
test_name_zz170zz: .asciiz " nCk correctly calculates 10 choose 1"
test_name_zz563zz: .asciiz " nCk correctly calculates 18 choose 16"
test_name_zz608zz: .asciiz " nCk correctly calculates 19 choose 12"
reg_name_zz411zz: .asciiz "v0"
test_name_zz215zz: .asciiz " nCk correctly calculates 11 choose 5"
reg_name_zz18zz: .asciiz "v0"
test_name_zz653zz: .asciiz " nCk correctly calculates 20 choose 7"
reg_name_zz456zz: .asciiz "v0"
test_name_zz260zz: .asciiz " nCk correctly calculates 12 choose 8"
reg_name_zz63zz: .asciiz "v0"
reg_name_zz501zz: .asciiz "v0"
test_name_zz305zz: .asciiz " nCk correctly calculates 13 choose 10"
reg_name_zz108zz: .asciiz "v0"
reg_name_zz546zz: .asciiz "v0"
test_name_zz350zz: .asciiz " nCk correctly calculates 14 choose 11"
reg_name_zz153zz: .asciiz "v0"
test_name_zz2zz: .asciiz " nCk correctly calculates 0 choose 0"
reg_name_zz591zz: .asciiz "v0"
test_name_zz395zz: .asciiz " nCk correctly calculates 15 choose 11"
reg_name_zz198zz: .asciiz "v0"
reg_name_zz636zz: .asciiz "v0"
test_name_zz47zz: .asciiz " nCk correctly calculates 5 choose 0"
test_name_zz440zz: .asciiz " nCk correctly calculates 16 choose 10"
reg_name_zz243zz: .asciiz "v0"
reg_name_zz681zz: .asciiz "v0"
test_name_zz485zz: .asciiz " nCk correctly calculates 17 choose 8"
reg_name_zz288zz: .asciiz "v0"
test_name_zz92zz: .asciiz " nCk correctly calculates 7 choose 2"
test_name_zz530zz: .asciiz " nCk correctly calculates 18 choose 5"
reg_name_zz333zz: .asciiz "v0"
test_name_zz137zz: .asciiz " nCk correctly calculates 9 choose 0"
test_name_zz575zz: .asciiz " nCk correctly calculates 19 choose 1"
reg_name_zz378zz: .asciiz "v0"
test_name_zz182zz: .asciiz " nCk correctly calculates 10 choose 5"
test_name_zz620zz: .asciiz " nCk correctly calculates 19 choose 16"
reg_name_zz30zz: .asciiz "v0"
reg_name_zz423zz: .asciiz "v0"
test_name_zz227zz: .asciiz " nCk correctly calculates 11 choose 9"
test_name_zz665zz: .asciiz " nCk correctly calculates 20 choose 11"
reg_name_zz75zz: .asciiz "v0"
reg_name_zz468zz: .asciiz "v0"
test_name_zz272zz: .asciiz " nCk correctly calculates 12 choose 12"
reg_name_zz120zz: .asciiz "v0"
reg_name_zz513zz: .asciiz "v0"
test_name_zz317zz: .asciiz " nCk correctly calculates 14 choose 0"
reg_name_zz165zz: .asciiz "v0"
reg_name_zz558zz: .asciiz "v0"
test_name_zz362zz: .asciiz " nCk correctly calculates 15 choose 0"
reg_name_zz210zz: .asciiz "v0"
test_name_zz14zz: .asciiz " nCk correctly calculates 2 choose 1"
reg_name_zz603zz: .asciiz "v0"
test_name_zz407zz: .asciiz " nCk correctly calculates 15 choose 15"
reg_name_zz648zz: .asciiz "v0"
reg_name_zz255zz: .asciiz "v0"
test_name_zz59zz: .asciiz " nCk correctly calculates 5 choose 4"
test_name_zz452zz: .asciiz " nCk correctly calculates 16 choose 14"
reg_name_zz693zz: .asciiz "v0"
reg_name_zz300zz: .asciiz "v0"
test_name_zz104zz: .asciiz " nCk correctly calculates 7 choose 6"
test_name_zz497zz: .asciiz " nCk correctly calculates 17 choose 12"
reg_name_zz345zz: .asciiz "v0"
test_name_zz149zz: .asciiz " nCk correctly calculates 9 choose 4"
test_name_zz542zz: .asciiz " nCk correctly calculates 18 choose 9"
reg_name_zz390zz: .asciiz "v0"
test_name_zz194zz: .asciiz " nCk correctly calculates 10 choose 9"
test_name_zz587zz: .asciiz " nCk correctly calculates 19 choose 5"
test_name_zz632zz: .asciiz " nCk correctly calculates 20 choose 0"
reg_name_zz435zz: .asciiz "v0"
test_name_zz239zz: .asciiz " nCk correctly calculates 12 choose 1"
reg_name_zz42zz: .asciiz "v0"
test_name_zz677zz: .asciiz " nCk correctly calculates 20 choose 15"
reg_name_zz480zz: .asciiz "v0"
test_name_zz284zz: .asciiz " nCk correctly calculates 13 choose 3"
reg_name_zz87zz: .asciiz "v0"
reg_name_zz525zz: .asciiz "v0"
test_name_zz329zz: .asciiz " nCk correctly calculates 14 choose 4"
reg_name_zz132zz: .asciiz "v0"
reg_name_zz570zz: .asciiz "v0"
test_name_zz374zz: .asciiz " nCk correctly calculates 15 choose 4"
reg_name_zz177zz: .asciiz "v0"
reg_name_zz615zz: .asciiz "v0"
test_name_zz419zz: .asciiz " nCk correctly calculates 16 choose 3"
reg_name_zz222zz: .asciiz "v0"
test_name_zz26zz: .asciiz " nCk correctly calculates 3 choose 2"
reg_name_zz660zz: .asciiz "v0"
test_name_zz464zz: .asciiz " nCk correctly calculates 17 choose 1"
reg_name_zz267zz: .asciiz "v0"
test_name_zz71zz: .asciiz " nCk correctly calculates 6 choose 2"
test_name_zz509zz: .asciiz " nCk correctly calculates 17 choose 16"
reg_name_zz312zz: .asciiz "v0"
test_name_zz116zz: .asciiz " nCk correctly calculates 8 choose 2"
test_name_zz554zz: .asciiz " nCk correctly calculates 18 choose 13"
reg_name_zz357zz: .asciiz "v0"
test_name_zz161zz: .asciiz " nCk correctly calculates 9 choose 8"
reg_name_zz9zz: .asciiz "v0"
test_name_zz599zz: .asciiz " nCk correctly calculates 19 choose 9"
reg_name_zz402zz: .asciiz "v0"
test_name_zz206zz: .asciiz " nCk correctly calculates 11 choose 2"
test_name_zz644zz: .asciiz " nCk correctly calculates 20 choose 4"
reg_name_zz54zz: .asciiz "v0"
reg_name_zz447zz: .asciiz "v0"
test_name_zz251zz: .asciiz " nCk correctly calculates 12 choose 5"
test_name_zz689zz: .asciiz " nCk correctly calculates 20 choose 19"
reg_name_zz99zz: .asciiz "v0"
reg_name_zz492zz: .asciiz "v0"
test_name_zz296zz: .asciiz " nCk correctly calculates 13 choose 7"
reg_name_zz144zz: .asciiz "v0"
reg_name_zz537zz: .asciiz "v0"
test_name_zz341zz: .asciiz " nCk correctly calculates 14 choose 8"
reg_name_zz189zz: .asciiz "v0"
reg_name_zz582zz: .asciiz "v0"
test_name_zz386zz: .asciiz " nCk correctly calculates 15 choose 8"
reg_name_zz627zz: .asciiz "v0"
reg_name_zz234zz: .asciiz "v0"
test_name_zz38zz: .asciiz " nCk correctly calculates 4 choose 2"
test_name_zz431zz: .asciiz " nCk correctly calculates 16 choose 7"
reg_name_zz672zz: .asciiz "v0"
reg_name_zz279zz: .asciiz "v0"
test_name_zz83zz: .asciiz " nCk correctly calculates 6 choose 6"
test_name_zz476zz: .asciiz " nCk correctly calculates 17 choose 5"
reg_name_zz324zz: .asciiz "v0"
test_name_zz128zz: .asciiz " nCk correctly calculates 8 choose 6"
test_name_zz521zz: .asciiz " nCk correctly calculates 18 choose 2"
reg_name_zz369zz: .asciiz "v0"
test_name_zz173zz: .asciiz " nCk correctly calculates 10 choose 2"
test_name_zz566zz: .asciiz " nCk correctly calculates 18 choose 17"
test_name_zz611zz: .asciiz " nCk correctly calculates 19 choose 13"
reg_name_zz414zz: .asciiz "v0"
test_name_zz218zz: .asciiz " nCk correctly calculates 11 choose 6"
reg_name_zz21zz: .asciiz "v0"
test_name_zz656zz: .asciiz " nCk correctly calculates 20 choose 8"
reg_name_zz459zz: .asciiz "v0"
test_name_zz263zz: .asciiz " nCk correctly calculates 12 choose 9"
reg_name_zz66zz: .asciiz "v0"
reg_name_zz504zz: .asciiz "v0"
test_name_zz308zz: .asciiz " nCk correctly calculates 13 choose 11"
reg_name_zz111zz: .asciiz "v0"
reg_name_zz549zz: .asciiz "v0"
test_name_zz353zz: .asciiz " nCk correctly calculates 14 choose 12"
reg_name_zz156zz: .asciiz "v0"
test_name_zz398zz: .asciiz " nCk correctly calculates 15 choose 12"
reg_name_zz201zz: .asciiz "v0"
test_name_zz5zz: .asciiz " nCk correctly calculates 1 choose 0"
reg_name_zz594zz: .asciiz "v0"
reg_name_zz639zz: .asciiz "v0"
test_name_zz443zz: .asciiz " nCk correctly calculates 16 choose 11"
reg_name_zz246zz: .asciiz "v0"
test_name_zz50zz: .asciiz " nCk correctly calculates 5 choose 1"
reg_name_zz684zz: .asciiz "v0"
test_name_zz488zz: .asciiz " nCk correctly calculates 17 choose 9"
reg_name_zz291zz: .asciiz "v0"
test_name_zz95zz: .asciiz " nCk correctly calculates 7 choose 3"
test_name_zz533zz: .asciiz " nCk correctly calculates 18 choose 6"
reg_name_zz336zz: .asciiz "v0"
test_name_zz140zz: .asciiz " nCk correctly calculates 9 choose 1"
test_name_zz578zz: .asciiz " nCk correctly calculates 19 choose 2"
reg_name_zz381zz: .asciiz "v0"
test_name_zz185zz: .asciiz " nCk correctly calculates 10 choose 6"
test_name_zz623zz: .asciiz " nCk correctly calculates 19 choose 17"
reg_name_zz33zz: .asciiz "v0"
reg_name_zz426zz: .asciiz "v0"
test_name_zz230zz: .asciiz " nCk correctly calculates 11 choose 10"
test_name_zz668zz: .asciiz " nCk correctly calculates 20 choose 12"
reg_name_zz78zz: .asciiz "v0"
reg_name_zz471zz: .asciiz "v0"
test_name_zz275zz: .asciiz " nCk correctly calculates 13 choose 0"
reg_name_zz123zz: .asciiz "v0"
reg_name_zz516zz: .asciiz "v0"
test_name_zz320zz: .asciiz " nCk correctly calculates 14 choose 1"
reg_name_zz168zz: .asciiz "v0"
reg_name_zz561zz: .asciiz "v0"
test_name_zz365zz: .asciiz " nCk correctly calculates 15 choose 1"
reg_name_zz606zz: .asciiz "v0"
reg_name_zz213zz: .asciiz "v0"
test_name_zz17zz: .asciiz " nCk correctly calculates 2 choose 2"
test_name_zz410zz: .asciiz " nCk correctly calculates 16 choose 0"
reg_name_zz651zz: .asciiz "v0"
reg_name_zz258zz: .asciiz "v0"
test_name_zz62zz: .asciiz " nCk correctly calculates 5 choose 5"
test_name_zz455zz: .asciiz " nCk correctly calculates 16 choose 15"
reg_name_zz303zz: .asciiz "v0"
test_name_zz107zz: .asciiz " nCk correctly calculates 7 choose 7"
test_name_zz500zz: .asciiz " nCk correctly calculates 17 choose 13"
reg_name_zz348zz: .asciiz "v0"
test_name_zz152zz: .asciiz " nCk correctly calculates 9 choose 5"
test_name_zz545zz: .asciiz " nCk correctly calculates 18 choose 10"
test_name_zz197zz: .asciiz " nCk correctly calculates 10 choose 10"
test_name_zz590zz: .asciiz " nCk correctly calculates 19 choose 6"
reg_name_zz393zz: .asciiz "v0"
test_name_zz635zz: .asciiz " nCk correctly calculates 20 choose 1"
test_name_zz242zz: .asciiz " nCk correctly calculates 12 choose 2"
reg_name_zz45zz: .asciiz "v0"
reg_name_zz438zz: .asciiz "v0"
test_name_zz680zz: .asciiz " nCk correctly calculates 20 choose 16"
test_name_zz287zz: .asciiz " nCk correctly calculates 13 choose 4"
reg_name_zz90zz: .asciiz "v0"
reg_name_zz483zz: .asciiz "v0"
test_name_zz332zz: .asciiz " nCk correctly calculates 14 choose 5"
reg_name_zz135zz: .asciiz "v0"
reg_name_zz528zz: .asciiz "v0"
test_name_zz377zz: .asciiz " nCk correctly calculates 15 choose 5"
reg_name_zz180zz: .asciiz "v0"
reg_name_zz573zz: .asciiz "v0"
reg_name_zz618zz: .asciiz "v0"
test_name_zz422zz: .asciiz " nCk correctly calculates 16 choose 4"
reg_name_zz225zz: .asciiz "v0"
test_name_zz29zz: .asciiz " nCk correctly calculates 3 choose 3"
reg_name_zz663zz: .asciiz "v0"
test_name_zz467zz: .asciiz " nCk correctly calculates 17 choose 2"
reg_name_zz270zz: .asciiz "v0"
test_name_zz74zz: .asciiz " nCk correctly calculates 6 choose 3"
test_name_zz512zz: .asciiz " nCk correctly calculates 17 choose 17"
reg_name_zz315zz: .asciiz "v0"
test_name_zz119zz: .asciiz " nCk correctly calculates 8 choose 3"
test_name_zz557zz: .asciiz " nCk correctly calculates 18 choose 14"
reg_name_zz360zz: .asciiz "v0"
test_name_zz164zz: .asciiz " nCk correctly calculates 9 choose 9"
reg_name_zz12zz: .asciiz "v0"
test_name_zz602zz: .asciiz " nCk correctly calculates 19 choose 10"
reg_name_zz405zz: .asciiz "v0"
test_name_zz209zz: .asciiz " nCk correctly calculates 11 choose 3"
test_name_zz647zz: .asciiz " nCk correctly calculates 20 choose 5"
reg_name_zz57zz: .asciiz "v0"
reg_name_zz450zz: .asciiz "v0"
test_name_zz254zz: .asciiz " nCk correctly calculates 12 choose 6"
test_name_zz692zz: .asciiz " nCk correctly calculates 20 choose 20"
reg_name_zz102zz: .asciiz "v0"
reg_name_zz495zz: .asciiz "v0"
test_name_zz299zz: .asciiz " nCk correctly calculates 13 choose 8"
reg_name_zz147zz: .asciiz "v0"
reg_name_zz540zz: .asciiz "v0"
test_name_zz344zz: .asciiz " nCk correctly calculates 14 choose 9"
reg_name_zz585zz: .asciiz "v0"
test_name_zz389zz: .asciiz " nCk correctly calculates 15 choose 9"
reg_name_zz192zz: .asciiz "v0"
reg_name_zz630zz: .asciiz "v0"
test_name_zz41zz: .asciiz " nCk correctly calculates 4 choose 3"
test_name_zz434zz: .asciiz " nCk correctly calculates 16 choose 8"
reg_name_zz237zz: .asciiz "v0"
reg_name_zz675zz: .asciiz "v0"
test_name_zz86zz: .asciiz " nCk correctly calculates 7 choose 0"
test_name_zz479zz: .asciiz " nCk correctly calculates 17 choose 6"
reg_name_zz282zz: .asciiz "v0"
test_name_zz131zz: .asciiz " nCk correctly calculates 8 choose 7"
test_name_zz524zz: .asciiz " nCk correctly calculates 18 choose 3"
reg_name_zz327zz: .asciiz "v0"
test_name_zz176zz: .asciiz " nCk correctly calculates 10 choose 3"
test_name_zz569zz: .asciiz " nCk correctly calculates 18 choose 18"
reg_name_zz372zz: .asciiz "v0"
test_name_zz614zz: .asciiz " nCk correctly calculates 19 choose 14"
test_name_zz221zz: .asciiz " nCk correctly calculates 11 choose 7"
reg_name_zz24zz: .asciiz "v0"
reg_name_zz417zz: .asciiz "v0"
test_name_zz659zz: .asciiz " nCk correctly calculates 20 choose 9"
test_name_zz266zz: .asciiz " nCk correctly calculates 12 choose 10"
reg_name_zz69zz: .asciiz "v0"
reg_name_zz462zz: .asciiz "v0"
test_name_zz311zz: .asciiz " nCk correctly calculates 13 choose 12"
reg_name_zz114zz: .asciiz "v0"
reg_name_zz507zz: .asciiz "v0"
test_name_zz356zz: .asciiz " nCk correctly calculates 14 choose 13"
reg_name_zz159zz: .asciiz "v0"
reg_name_zz552zz: .asciiz "v0"
test_name_zz401zz: .asciiz " nCk correctly calculates 15 choose 13"
reg_name_zz204zz: .asciiz "v0"
test_name_zz8zz: .asciiz " nCk correctly calculates 1 choose 1"
reg_name_zz597zz: .asciiz "v0"
reg_name_zz642zz: .asciiz "v0"
test_name_zz446zz: .asciiz " nCk correctly calculates 16 choose 12"
reg_name_zz249zz: .asciiz "v0"
test_name_zz53zz: .asciiz " nCk correctly calculates 5 choose 2"
reg_name_zz687zz: .asciiz "v0"
test_name_zz491zz: .asciiz " nCk correctly calculates 17 choose 10"
reg_name_zz294zz: .asciiz "v0"
test_name_zz98zz: .asciiz " nCk correctly calculates 7 choose 4"
test_name_zz536zz: .asciiz " nCk correctly calculates 18 choose 7"
reg_name_zz339zz: .asciiz "v0"
test_name_zz143zz: .asciiz " nCk correctly calculates 9 choose 2"
test_name_zz581zz: .asciiz " nCk correctly calculates 19 choose 3"
reg_name_zz384zz: .asciiz "v0"
test_name_zz188zz: .asciiz " nCk correctly calculates 10 choose 7"
test_name_zz626zz: .asciiz " nCk correctly calculates 19 choose 18"
reg_name_zz429zz: .asciiz "v0"
test_name_zz233zz: .asciiz " nCk correctly calculates 11 choose 11"
reg_name_zz36zz: .asciiz "v0"
test_name_zz671zz: .asciiz " nCk correctly calculates 20 choose 13"
reg_name_zz474zz: .asciiz "v0"
test_name_zz278zz: .asciiz " nCk correctly calculates 13 choose 1"
reg_name_zz81zz: .asciiz "v0"
reg_name_zz519zz: .asciiz "v0"
test_name_zz323zz: .asciiz " nCk correctly calculates 14 choose 2"
reg_name_zz126zz: .asciiz "v0"
reg_name_zz564zz: .asciiz "v0"
test_name_zz368zz: .asciiz " nCk correctly calculates 15 choose 2"
reg_name_zz171zz: .asciiz "v0"
reg_name_zz609zz: .asciiz "v0"
test_name_zz20zz: .asciiz " nCk correctly calculates 3 choose 0"
test_name_zz413zz: .asciiz " nCk correctly calculates 16 choose 1"
reg_name_zz216zz: .asciiz "v0"
