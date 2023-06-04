include 'emu8086.inc'
print 'Enter n1'
call scan_num
mov ax,cx 
print 'Enter n2'
call scan_num
mov bx,cx      
sub ax,bx
print 'The diff is'
call print_num
ret
define_scan_num
define_print_num
define_print_num_uns