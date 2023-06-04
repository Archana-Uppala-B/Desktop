include 'emu8086.inc'
printn 'Enetr n'
call scan_num
mov n,cx
mov ax,cx
mov bx,2
mul bx
mov 2n,ax

printn 'Enetr elements'    
mov si,0
ele:
cmp n,0
je l01
call scan_num  
printn
mov a[si],cx
add si,2
dec n
jmp ele        

l01:  
mov si,0
l0:
mov bp,0
l1:
mov ax,a[si]
mov bx,a[bp]
sub ax,bx
cmp ax,15
je print
jne incr

incr:
add bp,2
cmp bp,2n
jl l1
jge incr2

incr2:
add si,2
cmp si,2n
jl l0
jge exit

exit:
hlt

print:
mov ax,a[si]
call print_num
print ' '
mov ax,a[bp]
call print_num  
printn

add bp,2n
jl l1
jge incr2


ret      
n dw 0
a dw n dup(?)
2n dw 0   
define_scan_num
define_print_num
define_print_num_uns