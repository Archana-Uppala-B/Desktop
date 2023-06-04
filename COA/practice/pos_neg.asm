include 'emu8086.inc'
call scan_num
mov ax,cx
cmp ax,0
jg pos
jl negi
je zero


ret
define_scan_num
define_print_num
define_print_num_uns

pos:
printn
print 'positive'
ret
negi:
printn
print 'negitive'
ret
zero:
printn
print 'zero'

hlt