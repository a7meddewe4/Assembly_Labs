myArray: 
db 20
db 21
db 22
db 23
db 24
length: db 0
thirty:dw 30
hundred:dw 100
half:dw 15
start:
mov si,OFFSET length
mov cx,si
add cx,1
mov si,0
st:
loop make_percentage
ja end
make_percentage:
mov al,1
mul byte [si]
mul word hundred
div word thirty
cmp dx,word half
jge addone
mov byte[si],al
add si,1
jmp st
addone:
add al,1
mov byte[si],al
add si,1
jmp st
end:
int 3
