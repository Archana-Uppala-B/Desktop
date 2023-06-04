include 'emu8086.inc'

print 'Enter string:' 
mov ah,10 
lea dx,a
int 21h  

print 'Enter substring'
mov ah,10
lea dx,b
int 21h

mov si,2  
mov cx,0
count1:
inc cx
inc si
cmp a[si],'$'
jne count1

mov len1,cx 

mov si,2
mov cx,0
count2:
inc cx
inc si
cmp b[si],'$'
jne count2

mov len2,cx
mov si,2            
l1:
mov si,2
 





ret 
a db 20 dup('$')
b db 20 dup('$')  
len1 dw 0
len2 dw 0
