include 'emu8086.inc' 
printn 'Enter a number to be cubed:'
call scan_num
mov ax,cx 
mov temp,ax
mov cx,2
multi:
mul temp 
loop multi
gotoxy 0,3
call print_num
ret 
temp dw 0     
define_scan_num
define_print_num
define_print_num_uns