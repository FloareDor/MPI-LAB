; Author: Sai Ravi Teja Gangavarapu

global addTwo
section .text
addTwo:
	mov rax, rdi ; First parameter is in rdi
	mov rbx, rsi; Second parameter is in rsi
	add rax, rbx;
	ret
