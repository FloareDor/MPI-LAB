; Author: Sai Ravi Teja Gangavarapu

section .data
	prompt_txt1 db "Enter x: ", 0
	prompt_txt2 db "Enter n: ", 0

	promt_txt_err db "INput numbers don't fit in range!", 10

	final_txt db "Sum of series = %d", 10, 0
	
	formatd db "%d", 0

section .bss
	x resd 1
	n resd 1
	exp resd 1

section .text
	global main
	extern printf
	extern scanf

main:
	mov r13, 1

	sub rsp, 8

	call _printPrompt1
	call _getX

	call _printPrompt2
	call _getN
	
	add rsp, 8 

	mov ebx, 0

	call _addLoop

	call _printFinal

	mov rax, 0
	ret

_addLoop:
	inc ebx

	mov rax, 1
	mov [exp], rax

	mov r12, 0
	call _calcExp

	add r13, [exp]	


	cmp ebx, [n]
	jnz _addLoop
	
	ret

_printPrompt1:
	push rbp
	mov rdi, prompt_txt1
	mov rsi, rbx
	mov rax, 0
	call printf
	pop rbp

	ret



_printPrompt2:
	push rbp
	mov rdi, prompt_txt2
	mov rsi, rbx
	mov rax, 0
	call printf
	pop rbp

	ret

_getX:
	push rbp
	mov rdi, formatd
	mov rsi, x
	call scanf
	pop rbp

	ret

_getN:
	push rbp
	mov rdi, formatd
	mov rsi, n
	call scanf
	pop rbp

	ret
_calcExp:

	add r12, 1

	mov rax, [exp]
	mov rcx, [x]
	mul rcx
	mov [exp], rax

	cmp r12, rbx
	jnz _calcExp

	ret

_printFinal:
	push rbp
	mov rdi, final_txt
	mov rsi, r13
	mov rax, 0
	call printf
	pop rbp
	ret