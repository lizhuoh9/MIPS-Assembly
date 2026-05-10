# ====================================================================
# Lesson 16 - Function Arguments and Return Values
# MIPS calling convention:
#   $a0 - $a3 : first 4 arguments (in order)
#   $v0 - $v1 : return values
# ====================================================================

.text
main:
    li   $a0, 5              # 1st argument
    li   $a1, 7              # 2nd argument
    jal  addTwo              # call addTwo(5, 7); result lands in $v0

    move $a0, $v0            # forward return value to print syscall
    li   $v0, 1              # print int
    syscall

    li   $v0, 10
    syscall

# --- addTwo(a, b) returns a + b in $v0 ---
addTwo:
    add  $v0, $a0, $a1       # $v0 = $a0 + $a1
    jr   $ra
