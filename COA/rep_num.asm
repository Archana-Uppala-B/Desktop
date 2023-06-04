include 'emu8086.inc'
print "Enter any number:"
call scan_num
mov ax,cx
mov num,ax
mov bx,10
mov cx,0  
repeat:
mov ax,num
check: 
mov dx,0
div bx 
mov quo,ax
mov rem,dx 
cmp rem,cx
je l1
jne l2 


l1:  
inc count   
mov ax,quo 
cmp quo,0
jg check
jz print 


l2:
mov ax,quo
cmp quo,0
jg check 
jz print

ret
quo dw 0
rem dw 0   
count dw 0 
num dw 0
define_scan_num
define_print_num
define_print_num_uns  

print:  
cmp count,0
jne printing 
je incr



printing: 
printn
mov ax,cx
call print_num
print ' is repeated '  
mov ax,count
call print_num
print ' time/es '  
printn 
 
incr:
mov count,0
inc cx 
cmp cx,9
jle repeat
  



