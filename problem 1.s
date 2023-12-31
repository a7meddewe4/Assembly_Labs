myArray:
    DB 2
    DB 1
    DB 2
    DB 3
    DB 4
    DB 5
    DB 6
    DB 7
    DB 8
    DB 9
    DB 10
    DB 11
    DB 12
    DB 13
    DB 14
    DB 15
    DB 16
    DB 17
    DB 18
    DB 19
    DB 20
    DB 21
    DB 22
    DB 23
    DB 24
    DB 25
    DB 26
    DB 27
    DB 28
    DB 29
    DB 30
; resultarray: DB 0
HANDRED: dw 100
FIN: dw 30
half: dw 15
start:
MOV CH,0 ; counter 
MOV SI,OFFSET myArray
; MOV DI, OFFSET resultarray

calc_percentage:
mov dx, 0

CMP CH,31
JA  end_code
MOV AL, BYTE [SI]
MUL  word HANDRED
DIV  word FIN
MOV byte [SI], AL
CMP DX, word half
jge increas
continue:
INC CH
INC SI
; INC DI
MOV AX,0
CLC
JMP calc_percentage
increas:
    inc al
    mov byte ds[si],al
    jmp continue
    
    

end_code:
INT 3