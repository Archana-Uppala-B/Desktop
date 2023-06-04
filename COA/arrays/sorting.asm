include 'emu8086.inc' 
mov bp,0
mov si,0 
mov n,10
l0:
mov si,0
l1:
mov ax,a[bp]
mov bx,a[si]
cmp ax,bx
jg swap
jle incr

ret
a dw 5,2,4,7,8 
n dw 00
define_scan_num
define_print_num
define_print_num_uns   

swap:
mov a[bp],bx
mov a[si],ax
add si,2
cmp si,10
je 1loop
jne l1

incr:
add si,2
cmp si,10
je 1loop
jne l1

1loop:
add bp,2
cmp bp,10  
je exit1
jne l0
     
     
exit1:    
print 'The sorted array is'  
mov si,0
exit:
cmp n,0
je x
mov ax,a[si]
call print_num
printn
add si,2
dec n
dec n 
jmp exit

x:
print 'exit'
