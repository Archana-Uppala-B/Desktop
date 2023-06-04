include 'emu8086.inc'
call scan_num
mov al,cl
jp pos 
negi:
 print 'negitive'
ret
define_scan_num
pos:
 print 'positive'