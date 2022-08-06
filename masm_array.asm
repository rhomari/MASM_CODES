.DATA
array DB 10 DUP(0)
.CODE


main PROC
    mov rsi, offset array
    mov byte ptr[rsi], 'A'
    inc rsi
    mov byte ptr[rsi], 'B'
    inc rsi
    mov byte ptr[rsi], 'C'
    inc rsi
    mov byte ptr[rsi], 'D'
    inc rsi
    mov byte ptr[rsi], 'E'
    inc rsi
    mov byte ptr[rsi], 'F'
    inc rsi
    mov byte ptr[rsi], 'G'
    inc rsi
    mov byte ptr[rsi], 'H'
    inc rsi
    mov byte ptr[rsi], 'I'
    inc rsi
    mov byte ptr[rsi], 'J'
   
main ENDP
END