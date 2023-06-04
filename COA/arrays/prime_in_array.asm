include 'emu8086.inc'
print 'Enter size' 
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
mov a[si],cx
add si,2
dec n
jmp ele

l01:    
print 'The prime numbers in array are'
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
je incr
jne incr2



ret
n dw 0  
a dw n dup(?)      
2n dw 0 
x dw 0
define_scan_num
define_print_num
define_print_num_uns
 
 
incr:
inc cx
inc bx
cmp bx,x
jle l1
jg count  

incr2:
inc bx
cmp bx,x
jle l1
jg count

count:
cmp cx,2   
je print 
jne incr3

print:
mov ax,a[si]
call print_num
printn
add si,2
cmp si,2n
jle l0 

incr3:
add si,2
cmp si,2n
jle l0 
