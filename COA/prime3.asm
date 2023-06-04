include 'emu8086.inc'
mov ax,3
mov bx,2 
label: 
 div bx
 mov ax,3
 cmp dx,0 
 je notprime

else:
inc bx 
jl bx,ax
jmp label
 
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
