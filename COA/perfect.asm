include 'emu8086.inc'
print 'Enter a number'
call scan_num
mov ax,cx 
mov temp,ax
mov bx,1
check:
mov ax,temp
mov dx,0
div bx
cmp dx,0
je summ    
inc bx
cmp bx,temp
jl check

mov ax,temp        
cmp ax,sum
je perfect
print 'Not a perfect Number'
ret                         

perfect:
print 'is a Perfect Number!'
ret

summ:
add sum,bx
inc bx
cmp bx,temp
jl check

ret
sum dw 0
temp dw 0 
define_scan_num
define_print_num
define_print_num_uns   
     