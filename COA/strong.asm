include 'emu8086.inc'
print 'Enter n:'
call scan_num
mov ax,cx
mov n,ax
mov bx,10
l0:   
    mov dx,0
    div bx
    mov rem,dx
    mov quo,ax

    mov ax,1
    mov cx,1
l1:
    mul cx
    inc cx
    cmp cx,rem
    jle l1
    jg summing

summing:
    add sum,ax
    mov ax,quo
    cmp quo,0
    jg l0
    jz comp

comp:   
    mov ax,n
    cmp sum,ax
    je strong
    jne notstrong

ret
rem dw 0
quo dw 0
n dw 0  
sum dw 0
define_scan_num
define_print_num
define_print_num_uns

strong:
print 'It is strong'

ret
notstrong:
print 'It is not a strong num' 
hlt