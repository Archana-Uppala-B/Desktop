include 'emu8086.inc'
print 'Enter the size of array'
call scan_num
mov n,cx
mov bx,2
mov ax,n
mul bx
mov 2n,ax

mov bx,10
l0:     
cmp n,0  
je l01   
printn
call scan_num
mov a[si],cx
add si,2
dec n
jmp l0

l01:    
printn 'The armtrong numbers in array are:'
mov si,0
l1:
mov ax,a[si]
mov temp,ax 
mov cx,0 
mov bx,10

count:
mov dx,0
div bx
inc cx
cmp ax,0
jg count

mov len,cx  
cmp cx,1
je print


mov ax,a[si] 
mov sum,0 
l2:
mov cx,len
dec cx
mov dx,0
div bx
mov rem,dx
mov quo,ax
mov ax,rem
mov m,ax
multi:
mul m
loop multi

add sum,ax
mov ax,quo   
cmp ax,0
jg l2

mov ax,sum
cmp ax,a[si]
je print
jne incr

print:        
printn
mov ax,a[si]      
call print_num

add si,2
cmp si,2n
jl l1
jge exit
ret
incr:
add si,2
cmp si,2n
jl l1
jge exit

exit:
hlt


ret         
n dw 0
a dw n dup(?)  
quo dw 0
rem dw 0 
sum dw 0   
2n dw 0  
temp dw 0 
len dw 0  
m dw 0
define_scan_num
define_print_num
define_print_num_uns
