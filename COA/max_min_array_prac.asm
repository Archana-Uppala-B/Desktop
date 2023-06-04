include 'emu8086.inc'
print 'Enter the size of array'
printn
call scan_num
mov n,cx
mov bx,2
mov ax,n
mul bx
mov 2n,ax 

print 'Enter elements'
printn
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
print 'Array elements are:'
printn
mov si,0 
l1:
mov ax,a[si]
call print_num
printn
add si,2
cmp si,2n
jl l1 

l2:
mov si,0 
mov cx,a[si] 
add si,2
l21:
cmp a[si],cx
jg ass
jle incr

ass:
mov cx,a[si]
add si,2
cmp si,2n
jl l21
jge exit

incr: 
add si,2
cmp si,2n
jl l21
jge exit

exit:
mov ax,cx
printn 'The max ele is:'
call print_num
jmp l3

l3:  
mov si,0 
mov cx,a[si] 
add si,2
l31:
cmp a[si],cx
jl ass3
jge incr3

ass3:
mov cx,a[si]
add si,2
cmp si,2n
jl l31
jge exit3

incr3: 
add si,2
cmp si,2n
jl l31
jge exit3 

exit3:
print 'the min element is'
printn        
mov ax,cx
call print_num 
printn 'EXIT'





ret  
n dw 0
a dw n dup(?) 
2n dw 0   
define_scan_num
define_print_num
define_print_num_uns
