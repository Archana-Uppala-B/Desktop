include 'emu8086.inc'

printn 'Enter lb:'
call scan_num   
printn
mov lb,cx
mov ax,cx   

printn 'Enter ub:'
call scan_num   
printn
mov ub,cx 

l0:
mov n,ax 
mov ax,n 
cmp ax,1
je incri  

mov bx,2
l1:
mov ax,n 
cmp ax,1
je incri 
cmp ax,2
je print
mov dx,0
div bx
cmp dx,0
je incri
jne incr

incri:
mov ax,n
inc ax
cmp ax,ub
jle l0
jg exit

incr:
inc bx
cmp bx,n
jl l1
jge print

print:
mov ax,n
call print_num
print ' '
inc ax
cmp ax,ub
jle l0
jg exit


exit:
hlt  

ret 
n dw 0 
lb dw 0
ub dw 0
define_scan_num
define_print_num
define_print_num_uns

