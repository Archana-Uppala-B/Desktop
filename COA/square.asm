include 'emu8086.inc' 
printn 'Enter a number to be squared:'
call scan_num
mov ax,cx
multi:
mul ax
gotoxy 0,3
call print_num
ret 
temp dw 0     
define_scan_num
define_print_num
define_print_num_uns