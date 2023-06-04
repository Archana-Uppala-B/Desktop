include 'emu8086.inc'  

printn 'Enter a string ends with $'
lea dx,a
mov ah,10
int 21h  

printn 'Enter a string ends with $'
lea dx,s
mov ah,10
int 21h  

mov si,2  
mov cx,0
count1:
inc cx
inc si
cmp a[si],'$'
jne count1

mov n1,cx 

mov si,2
mov cx,0
count2:
inc cx
inc si
cmp s[si],'$'
jne count2

mov n2,cx


l0:
mov si,0 
l1:
mov bp,si
l2:           
mov ax,si  ;temp storing si
mov flag,1 
sub bp,ax   ;ax is si  ;j-i
mov bx,bp 
mov bp,ax     ;j 
mov cl,a[bp]
cmp cl,s[bx]  
jne flag0
je incr

flag0:
mov flag,0
jmp incr2

incr:
inc bp   
cmp bp,n2


flag1:
cmp flag,1    
jl l2
jge flag1
je comp
jne incr2

incr2:
inc si
cmp si,n1
jle l1 
jg comp

comp:
cmp flag,1
je success
jne failure

success:
print 'Found!!'
ret
failure:
print 'Not found!!'

ret


ret
n dw 0
a db n dup('$')   
s db n dup('$')
n1 dw 0
n2 dw 0 
flag dw 0     
c2 dw 0    
tempi dw 0
define_print_num
define_print_num_uns
define_scan_num
