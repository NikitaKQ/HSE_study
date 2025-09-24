#(x >> y) + 10 (>> - arithmetical shift)

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

sra t1, t1, t2
addi t3, t1, 10

mv a0, t3
li a7, 1
ecall
