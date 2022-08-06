.686					
.model flat, stdcall	
option casemap: none	
include c:\masm32\include\kernel32.inc
include c:\masm32\include\masm32.inc
includelib c:\masm32\lib\kernel32.lib
includelib c:\masm32\lib\masm32.lib

STARTUPINFO   struct
    cb            DWORD    ?
    lpReserved    DWORD    ?
    lpDesktop     DWORD    ?
    lpTitle       DWORD    ?
    dwX           DWORD    ?
    dwY           DWORD    ?
    dwXSize       DWORD    ?
    dwYSize       DWORD    ?
    dwXCountChars    DWORD    ?
    dwYCountChars    DWORD    ?
    dwFillAttribute  DWORD    ?
    dwFlags       DWORD    ?
    wShowWindow   WORD    ?
    cbReserved2   WORD    ?
    lpReserved2   DWORD    ?
    hStdInput     DWORD    ?
    hStdOutput    DWORD    ?
    hStdError     DWORD    ?
STARTUPINFO ENDS
PROCESS_INFORMATION STRUCT             
    hProcess        DWORD ?
    hThread         DWORD ?
    dwProcessId     DWORD  ?
    dwThreadId      DWORD  ?
PROCESS_INFORMATION ENDS
.DATA
Executable DB "calc.exe"
_startupinfo STARTUPINFO<>
_processinfo PROCESS_INFORMATION<>

.CODE
main PROC


push OFFSET _processinfo
PUSH OFFSET _startupinfo
push 0
push 0
push 0
push 0
push 0
push 0

push OFFSET Executable  
PUSH 0
call CreateProcess
ret
main ENDP

END