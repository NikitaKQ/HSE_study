#(x / y) * y + x % y

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

div t3, t1, t2
mul t3, t3, t2
rem t4, t1, t2
add t3, t3, t4

mv a0, t3
li a7, 1
ecall