include 'emu8086.inc' 
print 'Enter a num:'
call scan_num
mov ax,cx
mov quo,ax
mov bx,10 
mov cx,2 
mov sumodd,0   
gotoxy 0,2
printn 'The odd numbers are:' 
check:  
mov ax,quo
mov dx,0 
div bx              
mov rem,dx
mov quo,ax
mov ax,rem  
mov dx,0
div cx
cmp dx,0
jne pri 
je check

ret
quo dw 0
rem dw 0 
sumodd dw 0
temp dw 1
define_scan_num
define_print_num
define_print_num_uns   

pri:    
mov ax,rem
add sumodd,ax 
printn
call print_num   
cmp quo,0
jg check  
printn
print 'Sum of odd numbers is:'
mov ax,sumodd
call print_num 
 
ret