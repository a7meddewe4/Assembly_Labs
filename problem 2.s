STR: DB "HELLO WORLD"

def LENGTH
{
    mov al,0 
    mov SI,OFFSET STR
calc:
    CMP BYTE [SI],0
    JE end
    inc al
    inc si
    JMP calc
end:
int 3
    
}
start: 
CALL LENGTH