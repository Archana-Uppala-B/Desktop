include 'emu8086.inc'
printn
printn 'Enter a string:'
lea dx,a
mov ah,10      ;input
int 21h

lea dx,a+2
mov ah,09h      ;output
int 21h  

mov si,2 
mov cx,0
count:
inc cx    
inc si
cmp a[si],'$'
jne count
je l0
          
l0:  
mov len,cx
mov si,0
l01:
mov bp,2

l1: 
mov al,v[si]
cmp al,a[bp]
je cv
jne incr

cv:
inc countv
jmp incr


incr:
inc bp
cmp a[bp],'$'
jne l1
je incr2

incr2:
inc si
cmp v[si],'$'
jne l01
je exit

exit:
printn          
print 'The vowel count is'
mov ax,countv
call print_num   
printn         
print 'The consonant count is' 
mov ax,len
sub ax,countv
call print_num



ret
a db 50 dup('$')  
v db 'a','e','i','o','u','$'    
len dw 0
countv dw 0
countc dw 0 
define_scan_num
define_print_num
define_print_num_uns
