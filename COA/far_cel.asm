include 'emu8086.inc'
print 'Enter temp in farenheit:'
call scan_num
mov ax,cx
mov num,ax 
mov bx,5
mov cx,9
check:
sub ax,32 
mul bx
div cx
printn
print 'The celcius temp is'
call print_num
   
   
ret
num dw 00
define_scan_num
define_print_num
define_print_num_uns