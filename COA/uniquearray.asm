include 'emu8086.inc'
;print 'enter  number'
;call scan_num
;mov n,10
;mov ax,cx
mov bx,02
;mul bx
;mov n1,ax 
mov  bx,01
mov si,00
mov di,02 
mov n2,00
comp:
    mov ax,a[si]
    cmp ax,00
    je incr
    jne l2
        incr:
        add si,02
        mov ax,02
        add ax,si
        mov di,ax
        cmp di,n1
        jne comp
     l2:
    mov bp,a[di]
    cmp ax,bp
    je incrsi 
    jne incrdi
    
        incrdi:
            add di,02
            cmp di,10
            jl comp
            jg print
            je print
    incrsi:
        mov ax,00
        mov a[di],ax
        add si,02
        mov ax,02
        add ax,si
        mov di,ax
        cmp di,10
        jl comp
         
    print:
        mov ax,a[si] 
        printn ' '
        call print_num
        add si,02
        mov ax,2
        add ax,si
        mov di,ax
        cmp di,10
        jl comp
        mov ax,a[si] 
        printn
        call print_num
        hlt
        
 
    
        n1 dw 00
        n2 dw 00 
        n3 dw 00
    define_print_num
    define_scan_num
    define_print_num_uns 
    n dw 00
    a dw 2,1,3,3,5