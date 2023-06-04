include 'emu8086.inc'
print 'Enetr n'
call scan_num       
mov ax,cx  
mov n,cx  
mov bx,2  
cmp n,2
je prime
l1: 
mov ax,n
mov dx,0
div bx
cmp dx,0
je notprime 
jne incr

incr:
inc bx
cmp bx,cx
jl  l1
jge prime

ret   
n dw 0
define_scan_num
define_print_num
define_print_num_uns      
ret
notprime: 
printn
print 'not prime'
ret
prime: 
printn
print 'prime'