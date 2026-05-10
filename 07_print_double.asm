# ====================================================================
# Lesson 7 - Printing a Double
# Demonstrates: syscall 3 (print double), l.d (load 64-bit double)
# A double occupies a PAIR of FP registers: $f12 and $f13 together.
# ====================================================================

.data
    pi:  .double 3.141592653589793

.text
    # --- print pi (double precision) ---
    li   $v0, 3              # service code 3 = print double
    l.d  $f12, pi            # load double into the $f12/$f13 pair
    syscall

    # --- clean exit ---
    li   $v0, 10
    syscall
