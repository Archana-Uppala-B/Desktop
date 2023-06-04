include 'emu8086.inc'
print 'enter n'
call scan_num
mov ax,cx 
print 'enter n2'
call scan_num
mov bx,cx

div bx
print 'The div is'
call print_num

ret
define_scan_num
define_print_num
define_print_num_uns
