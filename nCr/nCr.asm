.globl nCk
########################################################################
#****************************Name: TJ Zimmerman************************
#****************************Homework: nCr*****************************
#
#
#Main function is used to run the program. It accepts input from the 
#command line and processes the answe accordingly.
#
#******In Java******
#nCr = factorial(n)/(factorial(n-r) * factorial (r))
########################################################################
#t3 = n
#t4 = k
#a0/v0 = syscall params

.data
enterN: .asciiz "Please enter the n value: \n"
enterK: .asciiz "Please enter the k value: \n"
valueError: .asciiz "Much error. Such bad param. Very crash. Wow. Terminating meow."
answerChoose: .asciiz " choose "
answerIs: .asciiz " is: "
.text

main:

#Collect params and check for validity.
la $a0, enterN #Ask for the first param, n.
li $v0, 4 #String syscall
syscall #Prints out string.

li $v0, 5 
syscall #Places inputted value in v0.
la $s0, ($v0) #Copy n into saved register for final output string.
move $v0, $t3 #Puts n into $t3
blt $t3, $0, errorMessage #n<0 ERROR

la $a0, enterK #Asks for the second param, k.
li $v0, 4 #String syscall
syscall #Prints out string

li $v0, 5 
syscall #Places inputted value into v0.
la $s1, ($v0) #Copy k into saved register for final output string.
move $v0, $t3 #Puts k into $t1
blt $t4, $0, errorMessage #k<0 ERROR
bgt $t4, $t3, errorMessage #k>n ERROR

#Start program now.
jal nCk #Jump to nCk function.
jal printAnswer
jr $ra #End program. SHOULD JR RA BE USED HERE?


########################################################################
#nCk function is used to calculate the number of possible combinations
#of the numbers n and k using a simple recursive function like below:
#
#******In Java******
#int factorial(int n) { 
#    if((n==0) || (n==1)) { 
#        return 1; 
#    } 
#    int f; 
#    f = n * factorial(n-1); // uses recursion 
#    return f; 
#} 
########################################################################
#t3 = n
#t4 = k
#v0/a0/t2 = working params.

nCk:
sub $sp, $sp, 20 #allocate the needed space in stack.
sw $ra, 0($sp) #save return address in first position
sw $t3, 4($sp) #save n in the stack
sw $t4, 8($sp) #save k in the stack

sub $t3, $t3, 1 #Subtract one from n
sub $t4, $t4, 1 #Subtract one from k

jal checkBounds #Check for end of recursion.
sw $v0, 12($sp) #copy returned 1 or 0 into stack.

lw $t3, 4($sp) #Load original n back into t3.
lw $t4, 8($sp) #Load original k back into t4.

sub $t3, $t3, 1 #Subtract one from n again. (n-1 step of recursive algorithm)
jal checkBounds #Check for end of recursion with n 1 number lower.

lw $t2, 12($sp) #Load the value held in the previously returned v0.
add $v1, $v0, $t2 #Add old returned value to new returned value.

lw $ra, 0($sp) #Load the original return address.
addi $sp, $sp, 20 #Add 20 more bytes to the stack.
jr $ra


checkBounds: #Check if program should still recurse
beq $t3, $t4, return1 #If n==k
beq $t4, $0, return1  #if k==0
li $v0, 0 #If (j!=k || k!=0){ return 0};
sw $ra, 16($sp) #Store return address for jal call.
jal nCk
lw $ra, 16($sp) #load return address after jal call.
jr $ra 


return1: #Returns 1
li $v0, 1
jr $ra


errorMessage: #Inputted params were illegal.
la $t0, valueError #Loads error message into t0
li $v0, 4 #Print string syscall.
syscall #Output error.
li $v0, 10 #terminate program
syscall


printAnswer: #Prints out the final answer.
la $a0, ($s0) #Copy n into a0 for syscall syntax.
li $v0, 1 #Print Int syscall.
syscall #Print out n

la $a0, answerChoose #print out "choose"
li $v0, 4 
syscall 

la $a0, ($s1) #Copy k into a0 for syscall syntax.
li $v0, 1 #Print int syscall. 
move $t4, $a0
syscall  #Print out k

la $a0, answerIs #Print out "is"
li $v0, 4
syscall

la $a0, ($v1) #Load final answer into a0 for syscall
li $v0, 1 #print int syscall
syscall
jr $ra




###################OLD FACTORIAL ALGORITHM################

#nCk:
#
#factorial: #Otherwise, start the recursive loop.
#beq $a0, 0, equalsZero #Checks if either number is 0 or 1. If so, then break recursion
#beq $a1, 0, equalsZero #simply return 1. 
#
#subi $t0, $t0, 1 #calculate n-1
#mul $a0, $a0, $t0 #n*(n-1) step
#j factorial #Recursively return. SHOULD THIS BE JAL?
#
#equalsZero:
#li $v0, 1
#j endnCk
#jr $ra
