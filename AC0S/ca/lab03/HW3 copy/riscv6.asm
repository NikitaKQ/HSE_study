#x * 6 - y * 3 (do multiplication using shifts, adds, and subs)

li a7, 5
ecall
mv t1, a0

li a7, 5
ecall
mv t2, a0

slli t3, t1, 2
slli t4, t1, 1
add t3, t3, t4
slli t5, t2, 1
add t5, t5, t1
sub t6, t3, t5

mv a0, t6
li a7, 1
ecall
