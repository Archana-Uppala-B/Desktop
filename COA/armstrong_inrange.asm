include 'emu8086.inc'

print 'Enter lb:'
call scan_num 
printn
mov lb,cx 
mov ax,cx  

print 'Enter ub:'
call scan_num 
printn
mov ub,cx
   
printn 'Armstrong in range aree:'
l0:
mov n,ax 
mov bx,10 
mov cx,0

l1: 
mov dx,0
div bx
inc cx
cmp ax,0
jg l1

mov ax,n
mov len,cx 
cmp cx,1
je print
mov sum,0
l2:       
mov cx,len
dec cx
mov dx,0
div bx
mov rem,dx
mov quo,ax
mov ax,rem
multi:     
mov dx,0
mul rem
loop multi    

add sum,ax
mov ax,quo
cmp ax,0
jg l2
jle comp

comp:
mov ax,n
cmp ax,sum
je print
jne incr


print:
mov ax,n
call print_num
print ' '
inc ax
cmp ax,ub
jle l0
jg exit
incr:
mov ax,n
inc ax
cmp ax,ub
jle l0  
jg exit

exit:
hlt

ret
n dw 0
rem dw 0
quo dw 0
lb dw 0
ub dw 0   
len dw 0
sum dw 0
define_scan_num
define_print_num
define_print_num_uns





