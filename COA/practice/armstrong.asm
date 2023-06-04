include 'emu8086.inc'
print 'Enter num'
call scan_num
mov ax,cx
mov n,cx  
mov bx,10        
mov cx,0
l1:
    mov dx,0
    div bx
    mov rem,dx
    inc cx
    cmp ax,0
    jg l1
    
mov len,cx
mov sum,0
mov ax,n
l2:
    mov cx,len
    dec cx
    mov dx,0
    div bx
    mov rem,dx
    mov quo,ax
    mov ax,rem
  pow:
   mul rem
   loop pow
  add sum,ax
  mov ax,quo
  cmp quo,0
  jg l2
mov ax,sum
cmp ax,n
je armstrong
jne notarmstrong




ret
n dw 0  
len dw 0 
rem dw 0
quo dw 0  
sum dw 0
define_scan_num
define_print_num
define_print_num_uns
ret
armstrong:
printn
print 'Armstrong'
ret
notarmstrong:
printn
print 'Not an Armstrong number'