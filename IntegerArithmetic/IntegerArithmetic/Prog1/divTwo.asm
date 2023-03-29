; Author: Sai Ravi Teja Gangavarapu

global divTwo
section .text
divTwo:
	mov rax, rdi ; First parameter is in rdi
	mov rbx, rsi; Second parameter is in rsi
	mov rdx, $0; Initialize rdx with zero
	idiv rbx;
	ret
