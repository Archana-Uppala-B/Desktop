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

ret
str1 db "Enter string$"
a db 10 dup('$')  
b db 10 dup('$')      
len dw 0
define_scan_num
define_print_num
define_print_num_uns