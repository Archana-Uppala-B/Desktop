include 'emu8086.inc'
printn 'Enter any number'
call scan_num
mov ax,cx
mov bx,01
root:
    mov ax,bx
    mul bx
    cmp ax,cx
    je print
    jne increment

increment:
inc bx
cmp bx,cx
jl root
jnl noroot

noroot:
     printn 'No perfect root exists'
     ret
print:
    mov ax,bx
    printn 'Root of a given no is'
    call print_num
hlt
define_scan_num
define_print_num
define_print_num_uns