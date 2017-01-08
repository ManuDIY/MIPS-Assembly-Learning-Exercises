add $t1, $t2, $t3  #add the sum of t2 and t3 to t1.

sub $t1, $t2, $t3 # insert result of t2-t3 into t1.


#f = (g+h)-(i+j)

#g=t1
#h=t2
#i=t3
#j=t4
#g+h = t5
#i+j = t6
#t7 = t5-t6

add $t5, $t1, $t2
add $t6, $t3, $t4
sub $t7, $t5, $t6


#a=b+c
add $t1, $t2, 6
