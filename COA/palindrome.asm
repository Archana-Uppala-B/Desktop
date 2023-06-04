include 'emu8086.inc'
print 'Enter a number'
call scan_num         
mov ax,cx  
mov temp,ax
mov bx,10
check: 
mov dx,0
div bx
mov quo,ax
mov rem,dx 
mov ax,sum
mul bx
add ax,rem
mov sum,ax
mov ax,quo
cmp quo,0
jg check
 
mov ax,sum
cmp ax,temp
je palin
print 'Not a palindrome!!' 

ret
palin:
print 'It is a palindrome!'

ret 
temp dw 0
quo dw 0
rem dw 0     
sum dw 0
define_scan_num
define_print_num
define_print_num_uns

