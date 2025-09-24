#set the y-th bit of x to 1 (bit numbers start from 0)

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t3, t3, 1
addi t2, t2, -1
sll t3, t3, t2
or t1, t1, t3

mv a0, t1
li a7, 35
ecall