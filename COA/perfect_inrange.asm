include 'emu8086.inc'
printn 'Enter lower bound'
call scan_num 
printn
mov lb,cx 
printn 'Enter upper bound'
call scan_num
printn
mov ub,cx 
printn 'The perfect numbers in range are:'    
    
mov ax,lb
l0:
mov n,ax
mov bx,1  
mov cx,0
l1:
mov ax,n 
mov dx,0
div bx
cmp dx,0
je sum
jne incr

sum:
add cx,bx
inc bx
cmp bx,n
jl l1
jge comp 

incr:
inc bx
cmp bx,n
jl l1
jge comp

comp:   
cmp cx,n
je perfect
jne incr2

perfect:
mov ax,n 
printn
call print_num
inc ax
cmp ax,ub
jle l0
jg exit

incr2:
mov ax,n
inc ax
cmp ax,ub
jle l0
jg exit
          
exit:
hlt
 
ret
lb dw 0
ub dw 0             
n dw 0
define_scan_num
define_print_num
define_print_num_uns 