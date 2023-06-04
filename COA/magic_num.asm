include 'emu8086.inc'
print 'Enter a numer'   
call scan_num
mov ax,cx
mov num,ax
mov quo,ax
mov bx,10
mov sum,0

check: 
mov ax,quo
mov dx,0
div bx
mov quo,ax 
mov rem,dx
add sum,dx
cmp quo,0
jg check 

;print 'sum is'   
;mov ax,sum
;call print_num

mov quo,0
mov rem,0 
mov ax,sum
mov quo,ax      ;mov ax,sum   
reverse: 
mov ax,quo  
mov dx,0
div bx
mov quo,ax
mov rem,dx
mov ax,rsum
mul bx
add ax,rem 
mov rsum,ax
cmp quo,0
jg reverse   
             
print 'the reverse is'
mov ax,rsum  
call print_num

mov ax,sum
mov bx,rsum
mul bx
cmp ax,num
je magic
jne notmagic
    
ret
quo dw 0
rem dw 0
sum dw 0  
rsum dw 0  
num dw 0
define_scan_num
define_print_num
define_print_num_uns  

magic:
print 'magic number'

ret

notmagic:
print 'not a magic number'  

ret
