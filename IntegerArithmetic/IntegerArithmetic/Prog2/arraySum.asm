; Author: Sai Ravi Teja Gangavarapu

global arraySum
section .text
arraySum: 
	xor rax,rax ; Initialize rax to zero
	cmp rsi, 0; 
	je finish ;

next:
	add rax, [rdi];
	add rdi, 8;
	dec rsi;	
	cmp rsi, 0;
	jne next;

finish:
	ret 
