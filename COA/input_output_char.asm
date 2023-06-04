include 'emu8086.inc'
printn
printn 'Enter a string:'
lea dx,a
mov ah,10    ;input
int 21h

printn 'Enter a char'
mov ah,01
int 21h

print 'The char is'
mov ah,02 
mov dl,al
int 21h
          
l0:  
mov si,0
l01: 
mov count,0
mov bp,2

l1: 
mov al,l[si]
cmp al,a[bp]
je c
jne incr

c:
inc count
jmp incr


incr:
inc bp
cmp a[bp],'$'
jne l1
je print

print: 
cmp count,0
jne l00
je  l9
l00:
printn
mov ah,02
mov dl,l[si]    ;;imppp output a char
int 21h
print ' is repeated '
mov ax,count
call print_num
print 'times'
printn 
l9:
inc si
cmp l[si],'$'
jne l01
je exit

exit:
hlt

ret
a db 50 dup('$')  
l db 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','$'    
count dw 0
define_scan_num
define_print_num
define_print_num_uns
