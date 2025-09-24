#(x + 5) - (y - 7)

li a7, 5
ecall 
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t1, t1, 5
addi t2, t2, -7
sub t3, t1, t2

mv a0, t3
li a7, 1
ecall
