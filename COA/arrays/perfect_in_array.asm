include 'emu8086.inc'
print 'Enter the size of array' 
printn
call scan_num
mov n,cx 
mov bx,2
mov ax,n
mul bx
mov 2n,ax

print 'Enter elements'  
printn
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
print 'The perfect numbers are'
printn
mov si,0
l0:
mov bx,1
mov cx,0
l1:
mov ax,a[si]
mov x,ax
mov dx,0
div bx
cmp dx,0
je ad
jne incr
 

ret    
n dw 0 
a dw n dup(?)  
2n dw 0 
x dw 0
define_scan_num
define_print_num
define_print_num_uns  

ad:
add cx,bx
inc bx
cmp bx,x
jl l1
jg comp 

incr:
inc bx
cmp bx,x
jl l1
jge comp

comp:
cmp cx,x
je print
jne incr2

print:
mov ax,a[si]
call print_num 
printn
add si,2
cmp si,2n
jle l0
jg exit

incr2:
add si,2
cmp si,2n
jle l0
jg exit

exit:
print 'Exit'
hlt
