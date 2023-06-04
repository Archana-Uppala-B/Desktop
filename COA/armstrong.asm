include 'emu8086.inc'
print 'Enter a number:'
call scan_num
mov ax,cx
mov temp,ax      ;storing num for further use   
mov bx,10
mov cx,0
ndigit:    
  mov dx,0 
  div bx  
  inc cx
  cmp ax,0
  jg ndigit

mov len,cx     ;calculating and storing len
cmp cx,1
je arm
mov ax,temp   
mov stemp,0    ;stemp is
power:       
  mov cx,len 
  dec cx
  mov dx,0
  div bx 
  mov quo,ax 
  mov rem,dx
  mov ax,rem 
  mov m,ax
multi:  
  mov dx,0
  mul m 
  loop multi 
  add stemp,ax 
  mov ax,quo 
  cmp quo,0
  jg power  
          
mov ax,temp
cmp stemp,ax
je arm  
print ' Not an armstrong number'

ret

arm:
print ' is an armstrong number' 

ret
len dw 0 
temp dw 0  
quo dw 0
rem dw 0
m dw 0 
sum dw 0 
stemp dw 0
define_scan_num
define_print_num
define_print_num_uns