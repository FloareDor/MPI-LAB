; Author: Sai Ravi Teja Gangavarapu

global subTwo
section .text
subTwo:
	mov rax, rdi ; First parameter is in rdi
	mov rbx, rsi; Second parameter is in rsi
	sub rax, rbx;
	ret
