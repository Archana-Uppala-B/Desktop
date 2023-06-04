include 'emu8086.inc'
call scan_num
mov n,cx 
mov ax,0
mov bx,1
mov dx,0
l1:
call print_num
printn
add ax,bx
mov cx,ax
mov ax,bx
mov bx,cx
        
inc dx
cmp dx,n
jle l1



ret
n dw 0 
define_scan_num
define_print_num
define_print_num_uns