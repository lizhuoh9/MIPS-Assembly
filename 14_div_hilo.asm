# ====================================================================
# Lesson 14 - Dividing Integers part 2
# 'div rs, rt' (2-operand) is the REAL hardware instruction:
#   LO = quotient
#   HI = remainder
# Use mflo / mfhi to read both. Symmetric to mult/HI/LO.
# ====================================================================

.data
    num1: .word 17
    num2: .word 5

.text
    lw   $t0, num1
    lw   $t1, num2

    div  $t0, $t1            # LO = 17/5 = 3, HI = 17%5 = 2
    mflo $t2                 # quotient
    mfhi $t3                 # remainder

    # --- print quotient ---
    li   $v0, 1
    move $a0, $t2
    syscall

    # --- print a space between numbers ---
    li   $v0, 11
    li   $a0, 32             # ASCII space
    syscall

    # --- print remainder ---
    li   $v0, 1
    move $a0, $t3
    syscall

    li   $v0, 10
    syscall
