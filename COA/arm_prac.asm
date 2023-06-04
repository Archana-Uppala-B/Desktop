include 'emu8086.inc'
print 'Enter num:'
call scan_num
mov n,cx

mov ax,n
mov cx,0
mov bx,10
count:
mov dx,0  
div bx
inc cx   
cmp ax,0
jg count
 
mov len,cx 
cmp cx,1
je arm


mov ax,n 
mov sum,0
l1:          
div bx
mov rem,dx
mov quo,ax  
mov cx,len
dec cx    
mov ax,rem
mov m,ax   

multi: 
mov dx,0
mul m   
loop multi

add sum,ax
mov ax,quo
cmp quo,0
jg l1   
          
mov ax,n
cmp sum,ax
je arm
jne notarm

arm:
print 'armstrong'
ret 
hlt
notarm:
print 'notarmstrong'





ret
n dw 0   
sum dw 0  
len dw 0  
rem dw 0
quo dw 0   
m dw 0
define_scan_num
define_print_num
define_print_num_uns