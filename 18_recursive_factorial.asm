# ====================================================================
# Lesson 18 - Nested Procedures (recursion)
# When function A calls function B, B's 'jal' overwrites $ra.
# So A MUST save its own $ra on the stack before calling B.
# Same idea applies to recursion (a function calls itself).
#
# We also save $a0 because we still need n after the recursive call
# returns -- the inner call would have changed it.
# ====================================================================

.text
main:
    li   $a0, 5              # compute factorial(5)
    jal  factorial

    move $a0, $v0
    li   $v0, 1
    syscall                  # prints 120

    li   $v0, 10
    syscall

# --- factorial(n) = n * factorial(n-1); base: n<2 returns 1 ---
factorial:
    addi $sp, $sp, -8        # reserve two 4-byte slots on stack
    sw   $ra, 0($sp)         # save return address (will be clobbered)
    sw   $a0, 4($sp)         # save n (will be clobbered)

    slti $t0, $a0, 2         # $t0 = (n < 2) ? 1 : 0
    beq  $t0, $zero, recurse # if n >= 2, recurse

    # --- base case: factorial(0) = factorial(1) = 1 ---
    li   $v0, 1
    addi $sp, $sp, 8         # pop stack and return
    jr   $ra

recurse:
    addi $a0, $a0, -1        # compute (n - 1)
    jal  factorial           # $v0 = factorial(n - 1)

    lw   $a0, 4($sp)         # restore n (was clobbered by recursive call)
    lw   $ra, 0($sp)         # restore our return address
    addi $sp, $sp, 8         # pop stack

    mul  $v0, $v0, $a0       # $v0 = factorial(n-1) * n
    jr   $ra
