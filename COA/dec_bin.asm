include 'emu8086.inc'
print 'Enter decimal number:'
call scan_num
mov ax,cx
mov num,cx            
mov bx,2
mov si,0     
mov cx,0
l1:
    mov dx,0
    div bx   
    mov quo,ax
    mov rem,dx
    mov a[si],dx 
    inc cx
    add si,2
    mov ax,quo
    cmp quo,0
    jg l1
        
mov n,cx ;size of binary 
mov ax,n
mul bx
mov 2n,ax 
sub 2n,2
mov si,2n 
printn 
print 'The binary conversion is:'
printn
print:                    
cmp n,0
je exit
mov ax,a[si]
call print_num  
print ' '
sub si,2
dec n
jmp  print



ret
num dw 0  
n dw 0
a dw 10 dup(?) 
rem dw 0
2n dw 0
quo dw 0
define_scan_num
define_print_num
define_print_num_uns  

exit:
hlt