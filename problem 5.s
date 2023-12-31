STR: DB 32
REPEAT: DB 5
start:
mov ax, word STR
mov DI,0x20
mov cx, word REPEAT 
REP STOS byte
int 3