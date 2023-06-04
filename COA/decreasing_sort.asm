include 'emu8086.inc'
print 'Enter the size of array' 
printn
call scan_num
mov n,cx
mov size,cx 
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
mov si,0
l0:
mov bp,0
l1:
mov ax,a[si]
mov bx,a[bp]
cmp ax,bx
jge swap
jl incr

swap:
mov a[si],bx
mov a[bp],ax
add bp,2
cmp bp,2n
jl l1
jge incr

incr:
add bp,2
cmp bp,2n
jl l1
jge incri


incri:
add si,2
cmp si,2n
jl l0
jge print1

print1:
mov si,0
mov ax,size
mov n,ax
print:
cmp n,0
je exit
mov ax,a[si]
call print_num 
print ' '
add si,2
dec n
jmp print
 


ret
n dw 0 
a dw n dup(?)    
2n dw 0
size dw 0
define_scan_num
define_print_num
define_print_num_uns
           
           
exit:
hlt