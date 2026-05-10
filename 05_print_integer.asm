# ====================================================================
# Lesson 5 - Printing an Integer
# Demonstrates: syscall 1 (print signed 32-bit integer)
# ====================================================================

.text
    # --- print 42 ---
    li   $v0, 1              # service code 1 = print integer
    li   $a0, 42             # value to print (signed 32-bit)
    syscall

    # --- clean exit ---
    li   $v0, 10
    syscall
