include 'emu8086.inc'
print 'Enter n:'
call scan_num  
mov n,cx  
printn
print 'Enter r:'
call scan_num
mov r,cx

dofacto:
mov ax,1
mov bx,1
facto:
mul bx
inc bx     
cmp bx,n
jle facto

mov numer,ax

mov ax,n
sub ax,r
mov n,ax       ;sub is stored in n again

dofacto1:
mov ax,1
mov bx,1
facto1:
mul bx
inc bx     
cmp bx,n
jle facto1

mov denom,ax

mov ax,numer
div denom

printn        
print 'npr value is '
call print_num


ret
n dw 00 
r dw 00  
numer dw 00 
denom dw 00
subb dw 00
define_scan_num
define_print_num
define_print_num_uns