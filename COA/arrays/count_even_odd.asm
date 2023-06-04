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
printn
mov a[si],cx
add si,2
dec n
jmp ele 

l0:
mov si,0
mov bx,2  
mov even,0
mov odd,0
l1:
mov dx,0
mov ax,a[si]
div bx      
cmp dx,0
je e
jne o

e:
inc even
add si,2
cmp si,2n
jl l1
jge exit

o:      
inc odd
add si,2
cmp si,2n
jl l1
jge exit
         
exit:
mov ax,even
print 'The even count is '
call print_num
mov ax,odd
printn 'The odd count is '
call print_num 
hlt          



ret      
n dw 0
a dw n dup(?)
2n dw 0  
even dw 0
odd dw 0 
define_scan_num
define_print_num
define_print_num_uns