include 'emu8086.inc'
mov ax,2 
call print_num
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
  inc cx
  cmp cx,50
  jle incr:

ret
num dw 0
define_scan_num
define_print_num
define_print_num_uns    

incr:
  mov ax,num
  inc ax  
  jmp l1