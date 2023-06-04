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
mov a[si],cx
add si,2
dec n
jmp ele
                
l0:
mov si,0

l2:
mov si,0
mov bp,0
l21:
cmp a[si],0
jne barray
je incr2

barray:
mov ax,a[si]
mov b[bp],ax
add bp,2
add si,2
cmp si,2n
jl l21 
jge zeros

incr2:
add si,2
cmp si,2n
jl l21
jge zeros
         
zeros:
mov b[bp],0
add bp,2
cmp bp,2n
jl zeros
jge print

print:
mov si,0
p:
mov ax,b[si]
call print_num
print '  '
add si,2
cmp si,2n
jl p
jge exit

exit:
hlt
ret
n dw 0 
a dw n dup(1)
b dw n dup(1)
2n dw 0
define_scan_num
define_print_num
define_print_num_uns  