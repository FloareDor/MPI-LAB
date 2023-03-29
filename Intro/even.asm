; Author: Sai Ravi Teja Gangavarapu

global even
section .text

even:
    xor rax, rax;
    cmp rsi, $0;
    je finish
    mov rcx,[rdi];
next1:
    and rcx,$1;
    jnz next2;
    inc rax;
nex2:
    dec rsi;
    jz finish;
    add rdi,$8;
    mov rcx,[rdi];
    jmp next1;
finish:
ret