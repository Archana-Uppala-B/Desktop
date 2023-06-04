include 'emu8086.inc'
call scan_num
mov  al,cl
mov bl,02
div bl
cmp ah,0
jne odd
even:
 print 'even' 
ret
define_scan_num

odd:
 print 'odd'

                    
                    