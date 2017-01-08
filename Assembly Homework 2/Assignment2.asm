.globl makes10 intMax close10 dateFashion
.text

makes10:
#******************************************
#public boolean makes10(int a, int b) {
#  if ((a == 10) || (b == 10)){
#      return true;
#  }
#  else if((a + b) == 10){
#      return true;
#  }
#  else{
#  return false;
#  }
# }
#******************************************
#a0 = a
#a1 = b

li $a2, 10 #Set unused register to compare value

beq $a2, $a0, equalsTen #see if a = 10
beq $a2, $a1, equalsTen #see if b = 10
b notTen #Neither equal 10.. See if their sum does

notTen: 
add $a3, $a0, $a1 #add them together
beq $a2, $a3, equalsTen #Check if sum of a and b == 10

li $v0, 0 #false
jr $ra

equalsTen:
li $v0, 1 #true
jr $ra



intMax:
#******************************************
#public int intMax(int a, int b, int c) {
#  
#  if((a >= b) && (a >= c)){
#      return a;
#  }
#  else if ((a >= b) && (a <= c)){
#      return c;
#  }
#  else if ((a <= b) && (c >= b)){
#      return c;
#  } 
#      return b;
#}
#******************************************
#a0 = a
#a1 = b
#a2 = c

bgt $a0, $a1, aGTEB #see if a > b
beq $a0, $a1, aGTEB #see if A == b
blt $a0, $a1, aLTB  #see if A < b

aGTEB:
bgt $a0, $a2, aGTBoth #See if a also > c
blt $a0, $a2, aLTC #a < c

aLTB:
bgt $a1, $a2, bGTC #See if b > c
beq $a1, $a2, bGTC #see if b == c
blt $a1, $a2, bLTC #see if b < c

aGTBoth:
la $v0, ($a0) #load value of a into return register
jr $ra

aLTC:
la $v0, ($a2) #load value of c into return register
jr $ra

bGTC: #load value of b into return register
la $v0, ($a1)
jr $ra

bLTC:
la $v0, ($a2) #load value of c into return register
jr $ra



close10: 
#******************************************
#public int close10(int a, int b) {
#  int aDiff = Math.abs(a-10);
#  int bDiff = Math.abs(b-10);
#  if (aDiff < bDiff){
#      return a;
#  }
#  else if (aDiff > bDiff){
#      return b;
#  }
#  else
#      return 0;  
#}
#******************************************
#a0 = a
#a1 = b

subi $a2, $a0, 10 #difference of a and 10
subi $a3, $a1, 10 #difference of b and 10
abs $a2, $a2 #load absc of a into a2
abs $a3, $a3 #load absv of b into a3

beq $a2, $a3, equal #If they're equally far
blt $a2, $a3, aClosest  #If a is closer to 0...
bgt $a2, $a3, bClosest #if b is closer to 0...

aClosest:
la $v0, ($a0) #load a into return register
jr $ra

bClosest:
la $v0, ($a1) #load b into return register
jr $ra

equal:
li $v0, 0 #load 0 into return register (tie)
jr $ra



dateFashion:
#******************************************
#public int dateFashion(int you, int date) {
#  if ((you <= 2) || (date <= 2)){
#      return 0;
#  }
#  else if ((you >= 8) || (date >= 8)){
#      return 2; 
#  }
#  else{
#      return 1;
#  } 
#}
#******************************************
#a0 = you
#a1 = date

li $a2, 3 #Put 3 in unused register to see if ugly

blt $a0, $a2, LT3 #If a is ugly..
blt $a1, $a2, LT3 #if b is ugly..

li $a2, 7 #put 7 in unused register to see if pretty

bgt $a0, $a2, GT7 #if a is pretty..
bgt $a1, $a2, GT7 #if b is pretty.

b between #Neither ugly nor pretty

LT3: #Not getting in
li $v0, 0
jr $ra

GT7: #Getting in
li $v0, 2
jr $ra

between: #Maybe getting in
li $v0, 1
jr $ra