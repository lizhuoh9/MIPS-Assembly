# ====================================================================
# Lesson 20 - Getting User's Input (floats)
# syscall 6: read float; result lands in $f0.
# Move it to $f12 before calling print-float (syscall 2).
# ====================================================================

.data
    prompt: .asciiz "Enter a float: "
    result: .asciiz "\nYou entered: "

.text
    li   $v0, 4
    la   $a0, prompt
    syscall

    # --- read float ---
    li   $v0, 6
    syscall
    mov.s $f20, $f0          # stash in $f20 (next syscalls touch $f0)

    li   $v0, 4
    la   $a0, result
    syscall

    # --- print the float (must be in $f12) ---
    li   $v0, 2
    mov.s $f12, $f20
    syscall

    li   $v0, 10
    syscall
