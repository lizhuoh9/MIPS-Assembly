# ====================================================================
# Lesson 9 - Subtracting Integers
# Demonstrates: sub  (rd = rs - rt)
# ====================================================================

.data
    num1: .word 30
    num2: .word 12

.text
    lw   $t0, num1           # $t0 = 30
    lw   $t1, num2           # $t1 = 12

    sub  $t2, $t0, $t1       # $t2 = 30 - 12 = 18

    li   $v0, 1              # print int
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
