include 'emu8086.inc' 
print 'Enter num1:'
call scan_num
mov ax,cx  
gotoxy 0,2
print 'Enter num2:'
call scan_num
mov bx,cx
mov temp1,ax 
mov temp2,bx 
mov cx,1
check1: 
mov ax,temp1
mov dx,0   
div cx
cmp dx,0
je check2
jne chk1

check2:
mov ax,temp2 
mov dx,0
div cx
cmp dx,0
je chk
jne chk1 

chk:  
mov gcd,cx 
jmp chk1


chk1:   
inc cx
cmp cx,temp1
jle chk2
chk2: 
cmp cx,temp2
jle check1
      

mov ax,gcd 
gotoxy 0,4   
print 'GCD of two numners is: '
call print_num

ret 
temp1 dw 0
temp2 dw 0   
gcd dw 0    
define_scan_num
define_print_num
define_print_num_uns
