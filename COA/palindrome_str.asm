include 'emu8086.inc'
lea dx,str1   ;offset of str1 

mov ah,09h    ; to display str1
int 21h

mov ah,10     ;input string
lea dx,a    ;get offset addr of arr

;mov a,10   ;set array size
int 21h 
            
mov si,2
count:
inc cx
inc si 
cmp a[si],'$'
jne count


;reversing....  
mov si,cx
inc si 
mov len,si
mov bp,0 
l1:
mov al,a[si]
mov b[bp],al
inc bp
dec si
cmp si,2
jge  l1

printn
printn 'The reverse of a string is:'
lea dx,b        
mov ah,09h
int 21h 

comp:
mov si,2
mov bp,0 
comp2:
mov al,a[si] 
mov bl,b[bp]
cmp al,bl
jne notpalin
je incr


incr:
inc si
inc bp
cmp si,len
jle incr2
jg palin

incr2:
cmp bp,cx
jle comp2
jg palin
           
palin:
printn
print 'The string is palindrome..'
ret
notpalin:  
printn
print 'The string is not palindrome.'           

   
ret 
str1 db "Enter string$"
a db 20 dup('$')  
b db 20 dup('$')   
len dw 00
define_print_num
define_print_num_uns
