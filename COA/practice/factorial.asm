include 'emu8086.inc'
call scan_num
mov n,cx
mov ax,1
mov bx,1
l1:
mul bx
inc bx

cmp bx,n
jle l1

call print_num


ret  
n dw 0
define_scan_num
define_print_num
define_print_num_uns
