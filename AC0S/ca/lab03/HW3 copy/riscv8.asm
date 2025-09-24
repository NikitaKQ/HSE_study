#(x + 5) / y + 10 / (y - 1)

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t1, t1, 5
div t1, t1, t2

addi t4, t2, -1
addi t5, t5, 10
div t5, t5, t4

add t1, t1, t5

mv a0, t1
li a7, 1
ecall