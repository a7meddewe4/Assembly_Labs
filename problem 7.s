myarr: 
db 0x79
db 0x79
db 0x79
db 0x79 
db 0x79 
db 0x79
twenty: db 0x20
eighty: db 0x80
sum: dw 0
start:
mov si,OFFSET myarr
mov dx,0
mov cx,7
mov bx,0
mov di,OFFSET sum
c:loop loopagain
jmp endloop
loopagain:
mov al,byte[si]
if:
CMP al,byte eighty 
jae endcondition
elseif: 
CMP byte twenty,al
ja endcondition
else:
add dl, byte[si]
add word sum, dx
mov dx,0
endcondition:
add si,1
mov ax,0
jmp c
endloop:
int 3