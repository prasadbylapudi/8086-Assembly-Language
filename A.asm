include 'emu8086.inc'     
arr db ?
print 'Enter no.of Elements :'
call scan_num
mov bx,c
mov si,0 
scan:
    mov ax,cx     
    printn 'Enter Value'
    call scan_num
    mov al,arr[si]
    inc si
    mov cx,ax
loop scan
mov cx,bx  
mov si,0
p:
  mov al,arr[si]
  inc si
  call print_num
  print 09
loop p

define_scan_num
define_print_num
define_print_num_uns