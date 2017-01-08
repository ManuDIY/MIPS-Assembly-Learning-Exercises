.globl example #class name
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Be sure to check assemble all files in directory!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#Takes the value in the second paramater and checks if it's greater than the third paramater. If it is, it sets the first paramater to 1. Otherwise sets it to 0. 
#sgt $t1, $t2, $t3


#set vo to 1 iff min < value < max
#a0 = min
#a1 = max
#a2 = value
slt $v0, $a0, $a2
slt $v1, $a2, $a1
and $v0, $v0, $v1

#In assembly we can also have labels. this is done by using a colon immediatly after the label text. To end the function you use "jr $ra"
#By convention, results are placed in V0. A, T, and S registers are used for work. 
#The command to jump to a label is "jal <label>"
jal exampleLabel

#To end a program, you run li $v0, 10 <return key> syscall
li $v0, 10
syscall

exampleLabel:
#code
#code
#code
jr $ra #after this point is reached, the program jumps back to the instruction directly below jal. line 19. 


