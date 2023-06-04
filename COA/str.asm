include 'emu8086.inc'
lea dx,str1   ;offset of str1 

mov ah,09h    ; to display str1
int 21h

mov ah,10     ;input string
lea dx,arr    ;get offset addr of arr

mov arr,6     ;set array size
int 21h 
    
printn

lea dx,arr+2
mov ah,09     ;for printing array
int 21h

ret 
str1 db "Enter string$"
arr db 10 dup('$')  
