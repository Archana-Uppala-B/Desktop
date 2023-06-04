include 'emu8086.inc'
lea dx,str1   ;offset of str1 

mov ah,09h    ; to display str1
int 21h

mov ah,10     ;input string
lea dx,a    ;get offset addr of arr

;mov a,10   ;set array size
int 21h 
    
mov si,0
inc si
inc si
l1:
inc cx
inc si
cmp a[si],'$'
jne l1
 
printn
print 'the size is '
mov ax,cx  
call print_num
     
ret 
str1 db "Enter string$"
a db 20 dup('$')   
define_print_num
define_print_num_uns
