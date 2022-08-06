INCLUDELIB C:\libs\x64\kernel32.lib
ExitProcess PROTO : DWORD

.DATA
mystruct struct
	x qword ?
	y qword ?
mystruct ENDS


.CODE


main PROC
	call SetX
	MOV RAX,0
	call ExitProcess
main ENDP

SetX PROC
	mov [RCX].mystruct.x,10
	mov RAX, [RCX].mystruct.x
	
SetX ENDP

END