include 'emu8086.inc'

mov ax,5
mov bx,1 
mov cx,0
label: 
 div bx
 mov ax,5
 cmp dx,0 
 je incr

jump:
 inc bx 
 mov dx,0
 cmp bx,ax
 jle label


cmp cx,2
jne notprime
 
prime:
 print 'prime'
ret
notprime:
  print 'notprime'
ret  
incr:
 inc cx
 jmp jump
ret
define_scan_num   
