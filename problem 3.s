STR: DB "  H   B   "
STR3: DB 0
STR2: DB 0


def S
{
;     mov al,0 
;     mov SI,OFFSET STR
; calc:
;     CMP BYTE [SI],0
;     JE end
;     inc al
;     inc si
;     JMP calc
; end:
mov al,10
dec al
;  CALL LENGTH
 mov CL,0 
 mov SI,OFFSET STR
 MOV DI, OFFSET STR2
 MOV BP,SI
Starter:
CMP CL,al
JA end_2
CMP BYTE[SI],0x20
JE donothing
MOV  BL,BYTE[SI]
MOV BYTE[DI],  BL
INC DI
MOV BP,SI
INC BP 
CMP BYTE[BP],0x20
JE addit
JMP donothing
addit:
 MOV BYTE[DI],  0x20
 INC cl
 INC SI 
 INC DI
 JMP Starter
donothing:
INC cl
INC SI
JMP Starter
end_2:
DEC DI
mov byte[DI],0
int 3
}
start: 
CALL S