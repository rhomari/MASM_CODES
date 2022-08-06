INCLUDELIB C:\libs\x64\kernel32.lib ;change to your lib folder
INCLUDELIB C:\libs\x64\urlmon.lib
ExitProcess PROTO
URLDownloadToFileA PROTO


.DATA
url  db 'https://transang.me/content/images/size/w2000/2021/01/tania-melnyczuk-RVR4WGEJh4A-unsplash.jpg', 0
filename db 'image.png', 0
.CODE
main PROC

    xor	rcx, rcx
	push rcx
	push rcx
    xor	r9d, r9d
	xor	rcx, rcx
	lea	r8, filename
	lea	rdx,url
    push rcx
	call	URLDownloadToFileA
	pop rcx
	
	
main ENDP
END

;ml64 DownloadFileFromURL.asm  /link /subsystem:windows /machine:x64 /entry:main /out:DownloadFileFromURL.exe