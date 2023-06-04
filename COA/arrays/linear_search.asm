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
je l0
call scan_num
mov a[si],cx
add si,2
dec n
jmp ele

l0:      
printn 'Enter ele to search'
call scan_num
printn
mov key,cx
mov ax,key
mov si,0 
l1:    
mov ax,key  
cmp a[si],ax
je print
jne incr

print:
mov ax,si 
div bx 
printn 'The index is'
call print_num
hlt

incr:
add si,2
cmp si,2n
jle l1
jg exit

exit:
print 'Ele not found'
hlt

ret      
n dw 0
a dw n dup(?)
2n dw 0   
key dw 0
define_scan_num
define_print_num
define_print_num_uns