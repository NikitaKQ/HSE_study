#x & (-1 << 5)
li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t4, t4, -1
slli t3, t4, 5
and t1, t1, t3

mv a0, t1
li a7, 1
ecall