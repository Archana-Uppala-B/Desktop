include 'emu8086.inc'
call scan_num
mov ax,cx
mov n,cx
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
    
mov ax,sum   
cmp ax,n
je pal
jne notpal

ret
n dw 0
quo dw 0
rem dw 0
sum dw 0
define_scan_num
define_print_num
define_print_num_uns   

pal:
print 'palin'
ret
notpal:
print 'notpalin'
hlt

   