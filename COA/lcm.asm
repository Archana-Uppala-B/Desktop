include 'emu8086.inc'
print 'Enter num1:' 
call scan_num
mov ax,cx  
mov temp1,ax 
printn      
print 'Enter num2:'
call scan_num
mov bx,cx   
mov temp2,bx   

cmp ax,bx
jl mov1       
jg mov2
check1:
mov ax,max 
mov dx,0
div temp1
cmp dx,0
je check2:
jne no
        
check2:
mov ax,max
mov dx,0
div temp2
cmp dx,0
je lcm
jne no  



ret
max dw 0 
temp1 dw 0
temp2 dw 0
define_scan_num
define_print_num
define_print_num_uns

mov1:
mov max,bx
jmp check1

mov2:
mov max,ax
jmp check1  

no:
inc max
jmp check1

lcm:
mov ax,max 
printn
print 'The lcm of two numbers is: '
call print_num
               
ret