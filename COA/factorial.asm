include 'emu8086.inc'
print 'Enter a number'     
printn
call scan_num
mov num,cx  
mov ax,1
mov bx,1
facto:
mov dx,0
mul bx
inc bx     
cmp bx,num
jle facto

printn              
print 'The factorial of given number is'
printn
call print_num


ret 
num dw 00
define_scan_num
define_print_num
define_print_num_uns