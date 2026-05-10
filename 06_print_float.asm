# ====================================================================
# Lesson 6 - Printing a Float
# Demonstrates: syscall 2 (print float), lwc1 (load word into FP reg)
# Floats live on coprocessor 1: registers $f0 - $f31.
# print-float syscall expects the value in $f12.
# ====================================================================

.data
    pi:  .float 3.14159

.text
    # --- print pi ---
    li   $v0, 2              # service code 2 = print float
    lwc1 $f12, pi            # load 32-bit float into $f12 (FP arg reg)
    syscall

    # --- clean exit ---
    li   $v0, 10
    syscall
