include 'emu8086.inc'
call scan_num
mov ax,cx
mov n,cx
mov bx,1
mov cx,0
l1: 
mov ax,n
mov dx,0
div bx
cmp dx,0
je ad
jne incr

ad:
add cx,bx
jmp incr

incr:
inc bx
cmp bx,n
jl l1
jg print

print:
mov ax,n
cmp cx,ax
je perfect
jne notperfect

ret
n dw 0
define_scan_num
define_print_num
define_print_num_uns   

perfect:
printn
print 'Perfect'
ret
notperfect:
printn
print 'not perfect'
hlt