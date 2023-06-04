include 'emu8086.inc'
mov bx,2
mov si,2
mov bp,0 
;print 'Enter str1 number of characters: '
;call scan_num
mov n,12
;printn
mov ah,10
mov dx,offset a
;print 'Enter str1 length: '
mov a,8
mov len1,8
int 21h
;printn     
;print 'Enter str2 number of characters: '
;call scan_num
mov m,7
printn
mov ah,10
mov dx,offset b
;print 'Enter str2 length: '

mov b,4
mov len2,4
int 21h
printn
l:
    mov ax,a[si]
    mov ah,00
    mov cx,b[bx]
    mov ch,00
    cmp ax,cx
    je inc_si_bx
    jne inc_si
inc_si_bx:
    inc si
    
    inc bx
    cmp bx,len2
    jle l  
    mov bp,si
    sub bp,len2
    sub bp,1 
    mov count,bp
    jnl found
inc_si:
    inc si  
    ;inc count
    cmp si,len1
    jl l
    jnl nf
found:
    printn
    print 'Found at ' 
   ; sub si,len2
    mov ax,count
    call print_num
    hlt
nf:
    printn
    print 'not found'
    hlt
n dw 00
len1 dw 00
len2 dw 00
m dw 00   
count dw 00
a dw n dup('$')
b dw m dup('$')
define_scan_num
define_print_num
define_print_num_uns
define_print_string
define_pthis        
    



