.data #load data into memory

#This will put those values in memory at an address that
#can be referenced with the label.
array: .word 1 2 3 4 5

.text #Write code below

#This gets the number beginning at the 8th byte at the
#memory address defined by array
lw $t0, someNumbers +8

#The above instruction can also be written as:
la $t1, array
lw $t0, 8($t1)

#If you try and access a memory address with no data 
#stored in it then you will insert whatever is stored 
#in that address. (Whether it be another array's number 
#or a null) When you add things to the memory, they
#will stack immediatly after each other in the 
#ascending order of the array.m



#While there are 32 registers (which is a lot) somtimes you need more
#space to store data. This is accomplished by storing the data in memory
#instead. You do this by using the fp (frame pointer) register.
#Frame pointer is stored in the stack.

#int other(){
#
#int x;  0)$fp)
#int y; -4($fp)
#int z; -8($fp)
#}

###############################################################################
#Write the following loop in asm:
#for (int i =0; i < 10; i++){
#	sum = sum + array[i];
#}

#i = $t0
#sum = $t1
#current = $t2

array: .word 1 2 3 4 5 6 7 8 9 10
anotherArray: .word 100 200 300 400 500

la $t0, array #load the root address of the array into t0
li $t1, 0 #start array at 0
li $v0, 0 #set return register to 0

beginLoop:
bge $t1, 10, exitLoop

lw $t2, 0($t0) #Place first number of array into $t2
add $v0, $v0, $t2 #add value to sum
addi $t1, $t1, 1 #incrememnt loop by 1
addi $t0, $t0, 4 #t0 will now point at the next element
j beginLoop:

exitLoop:

###############################################################################
#Find the largest value in the array.
###############################################################################
#i = $t0
#sum = $t1
#current = $t2

array: .word 1 2 3 4 5 6 7 8 9 10
anotherArray: .word 100 200 300 400 500

la $t0, array #load the root address of the array into t0
li $t1, 0 #start array at 0
li $v0, 0($t0) #set return register to begin of array (To avoid 0 highest # bug)

beginLoop:
bge $t1, 10, exitLoop #make sure still within loop limit

lw $t2, 0($t0) #Place first number of array into $t2
blt $t2, $v0, skipNumber
move $v0, $t2
skipNumber:
addi $t1, $t1, 1 #incrememnt loop by 1
addi $t0, $t0, 4 #t0 will now point at the next element

j beginLoop:

exitLoop: