include 'emu8086.inc'
print 'Enter the size of array' 
printn
call scan_num 
mov size,cx  
mov n,cx
print 'Enter the elements'  
printn
mov si,0
ele:
cmp n,0
je print
call scan_num
mov a[si],cx  
mov bx,a[si]
add sum,bx
inc si
inc si
dec n
jmp ele


print:
print 'The sum is' 
printn
mov ax,sum
call print_num

ret    
n dw 0
a dw n dup(?)  
sum dw 0 
size dw 0
define_scan_num
define_print_num
define_print_num_uns