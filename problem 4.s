List: 
DB 1
DB 2
DB 5
DB 4
DB 8
DB 5
DB 4
DB 2
end: DB 0
start:
mov si,0
calc_length:
cmp byte[si],0
je end_length
inc si
jmp calc_length
end_length:
mov ax,  si
dec al
dec al
mov bx,0
mov cx,0
mov di,0
start_sort:
for_loop1: cmp bl,al
ja end_loop1
for_loop2: cmp cl,al
ja end_loop2

mov BP,di
inc BP
MOV AH,BYTE [BP]
cmp BYTE[DI],AH
ja switch
inc cx
INC DI
jmp for_loop2
switch:
mov dl,byte[di]
mov byte [di],AH
mov byte [BP],dl
inc cx
INC DI
jmp for_loop2
end_loop2:
inc bx
MOV DI,0
MOV CX,0
jmp for_loop1
end_loop1:
int 3