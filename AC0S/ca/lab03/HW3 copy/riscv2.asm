#(x >> 2) + ((y - 1) << 3) (>> - logical shift)

li a7, 5
ecall 
mv t1, a0

li a7, 5
ecall
mv t2, a0

srli t1, t1, 2
addi t2, t2, -1
slli t2, t2, 3

add t3, t1, t2

mv a0, t3
li a7, 1
ecall