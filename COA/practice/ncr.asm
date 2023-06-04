include 'emu8086.inc'
;print 'Enter n:'
;call scan_num
mov n,4     
mov ax,n
;print 'Enter r'
;call scan_num
mov r,2 
mov bx,r

sub ax,bx
mov nr,ax


mov ax,1
mov bx,1
l1:
    mul bx
    cmp bx,nr
    je store_nr 
  l2:
    cmp bx,r
    je store_r
    cmp bx,n
    je store_n  
  l3:
    inc bx
    cmp bx,n
    jle l1

ncr:
mov ax,fr
mov bx,fnr
mul bx
mov bx,ax     ;bx has r*n-r
mov ax,fn 
div bx        
print 'The ncr is:'
call print_num    
hlt

ret
n dw 0
r dw 0  
nr dw 0
fn dw 0
fr dw 0
fnr dw 0
define_scan_num
define_print_num
define_print_num_uns   

store_nr:
mov fnr,ax
jmp l2

store_r:
mov fr,ax
jmp l2

store_n:
mov fn,ax
jmp l2