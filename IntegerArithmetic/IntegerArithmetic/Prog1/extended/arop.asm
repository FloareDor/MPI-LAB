global arop
section .text
arop:
	mov rax, [rsi] ; First Parameter
	mov rbx, [rsi+8]; Second Parameter
	add rax, rbx; Addition Operation
	mov [rdi], rax; Stores the result

	mov rax, [rsi]; 
	mov rbx, [rsi+8];
	sub rax, rbx; Subtraction Operation
	mov [rdi+8], rax; Stores the result

	mov rax, [rsi] ; First parameter 
	mov rbx, [rsi+8]; Second parameter
	mov rdx, $0; Initialize rdx with zero
	imul  rbx; Multiplication Operation
	mov [rdi+16], rax; Stores the result

	mov rax, [rsi]; First parameter
	mov rbx, [rsi+8];Second parameter
	mov rdx, $0; Initialize rdx with zero
	idiv rbx; Division Operation
	mov [rdi+24], rax; Stores the result
	mov [rdi+32], rdx; Stores the remainder 
	ret
