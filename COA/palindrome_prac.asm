include 'emu8086.inc' 
call scan_num
mov n,cx 
mov ax,cx
mov bx,10

rev:
mov dx,0
div bx
mov rem,dx
mov quo,ax
mov ax,sum
mul bx
add ax,rem
mov sum,ax
mov ax,quo
cmp quo,0
jg rev
          
mov ax,n
cmp sum,ax
je palin
print 'not palindrome!!'

ret
palin:
print 'Palindrome!!'

ret
n dw 0   
sum dw 0  
rem dw 0
quo dw 0
define_scan_num
define_print_num
define_print_num_uns