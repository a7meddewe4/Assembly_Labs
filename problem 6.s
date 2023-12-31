STR: DB "aaaaabdfasadabccc"
length: db 0
start:
mov si,OFFSET length ; si is the length of array
mov ax,si
dec al
dec al
mov si,0
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
mov al,byte[si]
mov bx,0
mov si,OFFSET length
mov cx,si
mov si,0
add si,1
add cx,1
mov bl,byte[si]
st:loop end
jmp endit
end:
cmp bl,byte[si]
je removeduplicity
add si,1
mov bl,byte[si]
jmp st
removeduplicity:
mov byte[si],0
add si,1
jmp st
endit:
mov si,0
mov di,0
mov cx,OFFSET length
add cx,1
st1:loop endd
jmp outt
endd:
cmp byte[si],0
je whileloop
add si,1
jmp endd
whileloop:
mov di,si
whilee:
cmp byte[di],0
jne putit
add di,1
cmp di,OFFSET length
jae outt
jmp whilee
add di,1
putit:
mov al,byte[di]
mov byte [di],0
mov byte[si],al
add si,1
jmp st1
outt:
MOV AH, 0x13            ; move BIOS interrupt number in AH
MOV CX, 11              ; move length of string in cx
MOV BX, 0               ; mov 0 to bx, so we can move it to es
MOV ES, BX              ; move segment start of string to es, 0
MOV BP, OFFSET STR    ; move start offset of string in bp
MOV DL, 0               ; start writing from col 0
int 0x10  
int 3