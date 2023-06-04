include 'emu8086.inc'  
printn
printn 'Enter first string:'
lea dx,a 
mov ah,10      ;input
int 21h

printn
printn 'Enter second string:'
lea dx,b
mov ah,10      ;input
int 21h     

mov si,2  
mov cx,0
count:
inc cx  
inc si
cmp a[si],'$'
jne count

mov n1,cx

mov si,2
mov cx,0
count2:
inc cx
inc si
cmp a[si],'$'
jne count2

mov n2,cx 

mov si,n1
inc si
inc si
mov bp,2 
l1:
mov cl,b[bp]
mov a[si],cl
inc bp
inc si
cmp b[bp],'$'
je exit
jne l1 

exit: 
printn
printn 'The concatinated string is:' 
lea dx,a+2
mov ah,09                        
int 21h



hlt
ret
n1 dw 0 
n2 dw 0   
a db 50 dup('$')
b db 20 dup('$')  
c db 50 dup('$')