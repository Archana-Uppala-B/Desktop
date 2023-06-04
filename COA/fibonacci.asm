include 'emu8086.inc' 
print 'enter any number'
call scan_num
mov num,cx
mov ax,0 
;printn
;call print_num
printn
mov bx,1 
mov cx,1   ;cx is counter
fibo:    
call print_num
printn
add ax,bx 
mov c,ax
mov ax,bx
mov bx,c

inc cx 
cmp cx,num
jle fibo
print 'end of fibo upto num'

ret 
num dw 0  
c dw 0   
sum dw 0
define_scan_num
define_print_num
define_print_num_uns