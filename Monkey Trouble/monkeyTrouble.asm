.globl monkeyTrouble sleepIn posNeg
.text

monkeyTrouble:
#******************************************************************************
#
#public boolean monkeyTrouble(boolean aSmile, boolean bSmile) {
#  
#  if (aSmile && bSmile){
#    return true;
#  }
#  else if (!aSmile && !bSmile){
#    return true;
#  }
#  else{
#    return false;
#  }
#}
#  
#******************************************************************************


#aSmile: $a0 
#bSmile: $a1 

beqz $a0, aNotSmiling #If a isn't smiling branch to aNotSmiling
bgtz $a0, aSmiling #Otherwise branch to aSmiling

aSmiling:
bgtz $a1, returnTrue #if b is also smiling return true.
b returnFalse #Otherwise return false.

aNotSmiling:
beqz $a1, returnTrue #if both a and b aren't smiling return true
b returnFalse #Otherwise return false.


sleepIn:
#******************************************************************************
#
#public boolean sleepIn(boolean weekday, boolean vacation) {
#  
#  if (!weekday || vacation){
#    return true;
#  }
#  else{
#    return false;
#  }
#}
#
#******************************************************************************


#weekday: $a0
#vacation: $a1

beqz $a0, returnTrue #If it's not a weekday return true.
bgtz $a1, returnTrue #If it's a vacation day return true.

b returnFalse #otherwise return false.



posNeg:
#******************************************************************************
#
#public boolean posNeg(int a, int b, boolean negative) {
#  if (negative) {
#    return (a < 0 && b < 0);
#  }
#  else {
#    return ((a < 0 && b > 0) || (a > 0 && b < 0));
#  }
#}
# 
#******************************************************************************


#a0: int a
#a1: int b
#a2: boolean negative

#Check the boolean value...
beqz $a2, isPositive #If boolean negative is fales go to isPostive
bgtz $a2, isNegative #If boolean negative is true go to isNegative

isPositive:
bltz $a0, aLTZ2 #If a <0 goto altz2
bgtz $a0, aGTZ2 #otherwise go to agtz2

isNegative:
bltz $a0, aLTZ #If a is less than 0 check if b is too.
bgtz $a0, returnFalse #If negative specified and a>0 return false


#If a<0
aLTZ:
bltz $a1, returnTrue #If both less than zero return true.
bgtz $a1, returnFalse #If negative specified and b>0 return false.

aLTZ2:
bgtz $a1, returnTrue #If a neg and b pos return true.
bltz $a1, returnFalse

#If a>0
aGTZ:
bltz $a1, returnTrue #If a>0 and b<0 return true

aGTZ2:
bltz $a1, returnTrue #If a>0 and b<0 return true


#If none of above conditions are met then return false.
b returnFalse 



#****************************************************************************
#Final Return Cases...
#****************************************************************************

returnTrue:
li $v0, 1
jr $ra

returnFalse:
li $v0, 0
jr $ra
