include 'emu8086.inc'
print 'Enter the size of array' 
printn
call scan_num
mov n,cx 
mov bx,2
mov ax,n
mul bx
mov twon,ax

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
mov si,0
mov sp,a[si]   
add si,2
l1:     
cmp a[si],sp
jge ass
jl incr
 

ass:
mov sp,a[si]
add si,2
cmp si,twon
jne l1
je print

incr:
add si,2
cmp si,twon
jne l1
je print

print:
mov ax,sp 
print 'max ele is'
call print_num


;min
mov si,0
mov sp,a[si]   
add si,2
l2:     
cmp a[si],sp
jle ass2
jg incr2
 

ass2:
mov sp,a[si]
add si,2
cmp si,twon
jne l2
je print2

incr2:
add si,2
cmp si,twon
jne l2
je print2

print2:
mov ax,sp 
printn
print 'min ele is'
call print_num 
 


hlt
n dw 0 
a dw n dup(?)  
size dw 0   
max dw 0 
twon dw 0

define_scan_num
define_print_num
define_print_num_uns
