#x < -5 & y > 10 0 : 1

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

addi t3, t3, -5
blt t1, t3, firstT

false:
addi t5, t5, 0
mv a0, t5
li a7, 1
ecall
j exit

firstT:
addi t4, t4, 10
blt t4, t2, secondT

j false

secondT:
addi t6, t6, 1
mv a0, t6
li a7, 1
ecall

exit:
