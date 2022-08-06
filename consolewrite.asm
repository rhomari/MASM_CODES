INCLUDELIB C:\libs\x64\kernel32.lib
INCLUDELIB C:\libs\x64\user32.lib
GetStdHandle PROTO
WriteConsoleA PROTO
ExitProcess PROTO

.DATA
stdout equ -11
chandle QWORD ?
text BYTE "texte",0
NUM QWORD ?
.CODE

main PROC
    XOR RAX,RAX
    XOR  RCX,RCX
    XOR  RDX,RDX
    XOR R8,R8
    XOR R9,R9
    SUB RSP,40
    MOV RCX, stdout
    CALL GetStdHandle
    MOV chandle,RAX
    MOV RCX,chandle
    LEA RDX,text
    MOV R8, LENGTHOF text
    MOV R9, NUM
    CALL WriteConsoleA
    ADD RSP,40
    MOV RCX,0
    CALL ExitProcess

main ENDP
END