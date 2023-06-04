include 'emu8086.inc'
printn 'Enter n'
call scan_num
mov n,cx
mov ax,cx
mov bx,2
mul bx
mov 2n,ax

printn 'Enter elements'    
mov si,0
ele:
cmp n,0
je l0
call scan_num 
printn
mov a[si],cx
add si,2
dec n
jmp ele

l0:      
mov si,0
mov bx,3
mov cx,0 
l1:     
inc cx
mov ax,cx
mov dx,0
div bx
cmp dx,0
je sum
jne incr

sum:
add bp,a[si]
add si,2
cmp si,2n
jle l1
jg printsum

incr:
add si,2
cmp si,2n
jle l1
jg printsum

printsum:
mov ax,bp
printn 'The sum of ele at 3rd pos is '
call print_num

ret      
n dw 0
a dw n dup(?)
2n dw 0 
define_scan_num
define_print_num
define_print_num_uns