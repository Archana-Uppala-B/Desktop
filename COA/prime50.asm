include 'emu8086.inc'
;to print first 50 prime numbers\\\
mov ax,1 
mov cx,1
chk:
   mov temp,ax 
   mov bx,1
   mov cou,0
check1:  
   mov ax,temp
   mov dx,0
   div bx
   cmp dx,0
   je count 
   jne incr


count:
   inc cou 
   jmp incr  

incr:
   inc bx
   cmp bx,temp
   jle check1 
   cmp cou,2
   je pri   
incr2: 
   mov ax,temp
   inc ax
   jmp chk      
              
     
     
ret
temp dw 0  
cou dw 0         
define_scan_num
define_print_num
define_print_num_uns  

pri:
  mov ax,temp  
  printn
  call print_num  
  inc cx
  cmp cx,50
  jle incr2

