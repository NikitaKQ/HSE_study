#(x == (y + 3)) ? 0 : 1

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t2, t2, 3
beq t1, t2, true

addi t3, t3, 1
mv a0, t3
li a7, 1
ecall
j exit

true:

addi t4, t4, 0
mv a0, t4
li a7, 1
ecall

exit:
