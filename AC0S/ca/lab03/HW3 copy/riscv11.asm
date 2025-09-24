#x | (-1 >> 27) (>> - logical shift)
li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t3, t3, -1
srli t3, t3, 27
or t1, t1, t3

mv a0, t1
li a7, 1
ecall