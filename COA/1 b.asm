;prints factorial of even num
include 'emu8086.inc' 
print 'enter num'
call scan_num
mov ax,cx 
mov n,cx
inc n
mov bx,2
div bx 
mov ax,01
cmp dx,00
je even
jne odd
odd:
   print 'error'
   hlt
even: 
   cmp bx,n
    je stop 
    mul bx
    inc bx
    dec d
    jmp even
stop:  
   printn
    call print_num  
n dw 0
d dw 0
define_scan_num
define_print_num
define_print_num_uns
    
    
    
   