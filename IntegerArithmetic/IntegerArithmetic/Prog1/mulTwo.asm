; Author: Sai Ravi Teja Gangavarapu

global mulTwo
section .text
mulTwo:
	mov rax, rdi ; First parameter is in rdi
	mov rbx, rsi; Second parameter is in rsi
	mov rdx, $0; Initialize rdx with zero
	imul  rbx;
	ret
