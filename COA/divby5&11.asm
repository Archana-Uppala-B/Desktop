include 'emu8086.inc'
print 'Enter any number:'
call scan_num
mov ax,cx
mov num,ax
mov bx,5
mov cx,11
divby5:
div bx
cmp dx,0
je divby11
jne notdiv

divby11:
mov ax,num
div cx
cmp dx,0
je print
jne notdiv  

ret

print:  
printn
mov ax,num
call print_num
print ' is divisible by both 5 and 11'

ret
notdiv: 
printn
mov ax,num
call print_num
print ' is not divisible by 5 and 11'

ret
num dw 00
define_print_num
define_print_num_uns
define_scan_num
