include 'emu8086.inc'
print 'Enetr n'
call scan_num       
mov ax,cx
mov bx,2
div bx
cmp dx,0
je even
jne odd


ret
define_scan_num
define_print_num
define_print_num_uns      
even:
printn
print 'Even'

ret
odd:  
printn
print 'odd'