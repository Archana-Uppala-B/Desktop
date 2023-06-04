include 'emu8086.inc'
print 'Enter n1'
call scan_num
mov ax,cx 
print 'Enter n2'
call scan_num
mov bx,cx      
add ax,bx
print 'The add is'
call print_num
ret
define_scan_num
define_print_num
define_print_num_uns