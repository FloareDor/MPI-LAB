; Author: Sai Ravi Teja Gangavarapu

.MODEL SMALL
.DATA
STR1 DB 09H, "Admin",'$'  ; STR1 is the given string
STR2 DB ?                    ; STR2 is the location
ST1 DB 09H, "STR1:$"         ; STR1:
ST2 DB 09H, "STR2:$"         ; STR2:
LEN DB 0AH                   ; Length of the String
.CODE
START: 
MOV AX,@DATA
MOV DS,AX
MOV ES,AX
LEA SI,STR1                  ; Location of STR1
LEA DI,STR2                  ; Location of STR2

;To display STR1:
LEA DX,ST1
MOV AH,09H
INT 21H

LEA DX,STR1
MOV AH,09H
INT 21H

;display STR2:
LEA DX,ST2
MOV AH,09H
INT 21H

;Transferring
CLD                           
MOV CH,00H                 
MOV CL,LEN
REP MOVSB                    

LEA DX,STR2
MOV AH,09H
INT 21H

;Program Termination
MOV AH,4CH
INT 21H
END START