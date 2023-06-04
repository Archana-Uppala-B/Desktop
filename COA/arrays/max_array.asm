include 'emu8086.inc'
mov si,0
mov sp,a[si]   
add si,2
l1:     
cmp a[si],sp
jge ass
jl incr
 

ass:
mov sp,a[si]
add si,2
cmp si,8
jne l1
je print

incr:
add si,2
cmp si,8
jne l1
je print

print:
mov ax,sp
call print_num  

hlt  
a dw 10,12,13,14   
define_scan_num
define_print_num
define_print_num_uns  