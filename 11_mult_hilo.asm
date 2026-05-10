# ====================================================================
# Lesson 11 - Multiplying Integers (mult)
# 'mult rs, rt' is the REAL hardware instruction.
# Result is 64 bits, split between two SPECIAL registers:
#   HI = upper 32 bits
#   LO = lower 32 bits
# Use mfhi / mflo to copy them into general-purpose registers.
# ====================================================================

.data
    num1: .word 100000
    num2: .word 50000        # product needs > 32 bits to be exact

.text
    lw   $t0, num1
    lw   $t1, num2

    mult $t0, $t1            # HI:LO = $t0 * $t1
    mflo $t2                 # $t2 = lower 32 bits
    mfhi $t3                 # $t3 = upper 32 bits

    # Print only the low 32 bits for demo purposes.
    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
