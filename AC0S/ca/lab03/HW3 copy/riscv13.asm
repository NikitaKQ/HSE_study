# reset the y-th bit of x to 0 (bit numbers start from 0)
li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t3, t3, -1
addi t2, t2, -1
addi t4, t4, 1
sll t4, t4, t2
xor t3, t3, t4
and t1, t1, t3

mv a0, t1
li a7, 35
ecall