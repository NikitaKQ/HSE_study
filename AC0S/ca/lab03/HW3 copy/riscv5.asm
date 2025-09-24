#((x << 2) - y + 5) >> 1 (>> - arithmetical shift)

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

slli t1, t1, 2
sub t1, t1, t2
addi t1, t1, 5
srai t3, t1, 1

mv a0, t3
li a7, 1
ecall