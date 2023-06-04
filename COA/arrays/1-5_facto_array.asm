include 'emu8086.inc'
printn 'Enter size:' 
call scan_num    
mov n,cx
printn 'Enter elements'
mov ax,n
mov bx,2
mul bx
mov 2n,ax


mov si,0
ele:
cmp n,0
je l01
call scan_num  
printn
mov a[si],cx
add si,2
dec n
jmp ele

l01:
mov si,0
l0:
mov bp,a[si]
mov ax,1
mov bx,1
l1:
mul bx
inc bx
cmp bx,bp
jle l1
jg store

store:
mov a[si],ax
add si,2
cmp si,2n
jle l0
jg exit      

exit:
print 'The factorials are'
mov si,0
loo:      
mov ax,a[si]
call print_num
print ' '
add si,2
cmp si,2n
jl loo
hlt 
 
 
ret
n dw 0
a dw n dup(?)     
2n dw 0
define_scan_num
define_print_num
define_print_num_uns

