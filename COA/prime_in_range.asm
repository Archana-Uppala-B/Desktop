include 'emu8086.inc'  
print 'Enter lower bound for prime'
call scan_num
mov ax,cx 
printn
print 'Enter upper bound for prime' 
call scan_num 
printn
mov dx,cx
mov up,cx    ;storing upper bound
mov cx,1
l1:
  mov num,ax
  mov bx,2  
check: 
  mov ax,num
  mov dx,0
  div bx
  cmp dx,0
  je incr
  inc bx 
  cmp bx,num
  jl check
;print number
  mov ax,num
  call print_num 
  printn
  jmp incr:

ret
num dw 0 
up dw 0
define_scan_num
define_print_num
define_print_num_uns    

incr:
  mov ax,num
  inc ax
  cmp ax,up  
  jle l1