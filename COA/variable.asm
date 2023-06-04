include 'emu8086.inc' 
mov ax,5 
mov n,ax
call print_num
ret      
n dw 0
define_scan_num 
define_print_num
define_print_num_uns
