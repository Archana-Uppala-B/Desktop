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
je l01
call scan_num 
printn
mov a[si],cx
add si,2
dec n
jmp ele

l01: 
print 'Duplicate no:' 
mov si,0
l0:
mov bp,0
cond1:
mov ax,a[si]
mov bx,a[bp]
cmp ax,bx
je cond2
jne incr

cond2:
cmp si,bp
jne odd
je incr

odd:
mov ax,a[si]
div bx
cmp dx,0
jne print
je incr

incr:
add bp,2
cmp bp,2n
jl cond1
jne incri

print:
mov ax,a[si]
call print_num
add bp,2
cmp bp,2n
jl cond1
jge incri

incri:
add si,2
cmp si,2n
jl l0
jge exit

exit:
hlt

ret
n dw 0
a dw n dup(?)
2n dw 0
define_scan_num
define_print_num
define_print_num_uns
