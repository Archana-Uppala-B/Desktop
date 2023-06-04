; prog to move all 0's to end of a given array 
include 'emu8086.inc'
print 'enter no of elements in array'
call  scan_num
mov n,cx 
mov d,cx
mov r,cx
mov s,cx
mov x,cx
mov dx,cx
mov si,00
mov di,00 
printn
print 'enter ele'  
input:
   cmp n,0 
   je print
   printn
   call scan_num
   mov arr[si],cx
   add si,2
   dec n
   jmp input  
print:
 print 'the input array is'
 jmp p
 p:
    cmp d,0
    je stop  
    mov ax,arr[di] 
    printn
    call print_num 
    add di,2
    dec d
    jmp p 
stop:
   mov si,-2  
   mov di,r 
   cmp x,0
   je res
   f:
      cmp s,0 
       je res
      jmp over
   over:  
      add si,2
      mov ax,arr[si]
      cmp ax,00
      je go
      jne e
   go:
      mov cx,arr[di]
      mov arr[di],ax
      mov arr[si],cx  
      dec s
      jmp stop
   e:
     dec s
     jmp stop
res:     
    mov ax,0  
    mov si,0
    print 'the output array is' 
    jmp result
    result:
       cmp x,0 
       je st
       mov ax,arr[si] 
       printn
       call print_num  
       add si,2
       dec x
       jmp result   
st:
   hlt 
x dw 0
r dw 0
s dw 0
n dw 0
d dw 0
arr dw n dup(?)
define_scan_num
define_print_num
define_print_num_uns
    
   