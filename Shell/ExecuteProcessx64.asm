
INCLUDELIB C:\libs\x64\kernel32.lib
INCLUDELIB C:\libs\x64\shell32.lib
ShellExecuteA PROTO

.DATA
file db "calc.exe", 0
op db "open", 0
.CODE
main PROC
mov ax,  5 
push 0 
mov     r9d, 0          
lea     r8,file       
lea     rdx, op 
mov     rcx, 0          
call    ShellExecuteA



main ENDP

END
; ml64 ExecuteProcessx64.asm /link /subsystem:windows /machine:x64 /entry:main /out:ExecuteProcessx64.exe  