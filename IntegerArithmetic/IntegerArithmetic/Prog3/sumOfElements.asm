; Author: Sai Ravi Teja Gangavarapu

global sumOfElements
section .text
sumOfElements: 
	xor rax, rax;
	add rax, rdi; 1st parameter
	add rax, rsi; 2nd parameter
	add rax, rdx; 3rd parameter
	add rax, rcx; 4th
	add rax, r8; 5th
	add rax, r9; 6th
	add rax, [rsp+8]
	add rax, [rsp+16]
	add rax, [rsp+24]
	ret;
