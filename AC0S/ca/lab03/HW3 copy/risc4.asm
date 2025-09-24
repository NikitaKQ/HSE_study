#2 * x * x - 3 * y + 4


li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t3, t3, 6
addi t4, t4, 3
mul t1, t1, t3
mul t2, t2, t4
sub t5, t1, t2

mv a0, t5
li a7, 1
ecall