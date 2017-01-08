.globl indexOf max sum13 sum67
.text

indexOf:
################################################################################
#Return the index of the first element of array that is equal to value, or
#return -1 if value doesn't appear in array. For this problem, a negative
#value will mark the end of array.
################################################################################
#a0 = value
#a1 = array
#a2 = index
#t2 = current value

li $a2, 0 #Sets index value back to beginning of array

startIndexOf:
lw $t2, 0($a1) #Sets current number(a2) to the first value in the array.

blt $t2, 0, valueNotFound #If the end of the array is found (negative number) break loop. 
beq $a0, $t2, valueFound #If the value(a0) is found inside the current number (t2) exit

addi $a2, $a2, 1 #incrememnt index by 1 per iteration of loop 
addi $a1, $a1, 4 #a2 will not point at next element
j startIndexOf

valueNotFound:
li $v0, -1
jr $ra

valueFound:
move $v0, $a2
jr $ra




max:
################################################################################
#Return the largest value in array. 
################################################################################
#array = $a0
#length = $a1
#current = $t0
#currentMax = $t1
#counter = #t2

lw $t1, 0($a0)
li $t2, 1

startMax:
lw $t0, 0($a0) #Sets current number(a2) to the first value in the array.

bgt $t0, $t1, isGreaterThan #If current is greater than current max

checkEnd:
bge $t2, $a1, exitMax #If counter > length
addi $t2, $t2, 1 #incrememnt the counter
addi $a0, $a0, 4 #incrememnt the array
j startMax

isGreaterThan:
move $t1, $t0 #Reset the current max to current's value.
j checkEnd

exitMax:
move $v0, $t1
jr $ra



sum13:
################################################################################
#public int sum13(int[] nums) 
#    { 
#        int result = 0;
#        for(int i = 0; i < nums.length; i++){ 
#            if(nums.length >= 0){ 
#                if(nums[i] == 13 || i != 0 && nums[i - 1] == 13){
#                } 
#                else{
#                    result += nums[i]; 
#                }
#            } 
#            else{ 
#                return 0; 
#            }
#        } 
#        return result;
#    }
################################################################################
#a0 = array
#a1 = IndexLengthOfTheLengthOfTheArrayInTheFunction
#a2 = sum
#t0 = counter
#t1 = ugly numer (13)
#t2 = current value

li $t2, 0
li $t3, 0

startSum13:
ble $a1, $zero, exitSum13
lw $t0, 0($a0)
beq $t0, $t1, is13
add $t3, $t3, $t0
subi $a1, $a1, 1
addi $a0, $a0, 4

j startSum13

is13:
addi $a0, $a0, 8
subi $a1, $a2, 2
j startSum13

exitSum13:
add $v0, $t3, $zero
jr $ra


sum67:
################################################################################
#public int sum67(int[] nums) {
#    boolean isSix = false;
#    int sum = 0;
#    for(int i = 0; i < nums.length; i++) {
#        if(nums[i] == 6) {
#            isSix = true;
#        } else if(nums[i] == 7 && isSix) {
#            isSix = false;
#        } else if(!isSix) {
#            sum += nums[i];
#        }
#    }
#return sum;
#}
################################################################################
