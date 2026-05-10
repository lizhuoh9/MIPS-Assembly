# ====================================================================
# Lesson 17 - Saving Registers to the Stack
# By convention, $s0-$s7 are CALLEE-SAVED (preserved across calls).
# A function that wants to USE them must first PUSH them on the stack
# and POP them back before returning.
#
# Stack grows DOWNWARD: SUBTRACT from $sp to allocate, ADD to free.
# ====================================================================

.text
main:
    li   $s0, 100            # caller stores 100 in $s0

    jal  clobber             # this function uses $s0 internally

    # If clobber preserved $s0 properly, $s0 should still be 100.
    move $a0, $s0
    li   $v0, 1
    syscall                  # prints 100

    li   $v0, 10
    syscall

# --- clobber(): uses $s0 as scratch but restores it before returning ---
clobber:
    addi $sp, $sp, -4        # allocate 4 bytes on the stack
    sw   $s0, 0($sp)         # PUSH: save caller's $s0 to stack

    li   $s0, 999            # callee can now use $s0 freely

    lw   $s0, 0($sp)         # POP: restore caller's $s0
    addi $sp, $sp, 4         # free the stack space
    jr   $ra
