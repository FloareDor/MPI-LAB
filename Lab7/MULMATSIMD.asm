_MULMATSIMD:
    mov eax, [ebp-8]
    add eax, ecx
    mov edx, [ebp-12]
    add edx, ecx
    mov edi, [ebp+8]
    movd mm0, [edi+ebx*4]
    movq mm3, mm0psllq mm0, 32
    por mm0, mm3
    movq mm4, mm0
    mov edi, [ebp+12]
    movq mm1, [edi+edx*4]
    pfmul mm0, mm1
    movq mm2, [esi+eax*4]
    pfadd mm0, mm2
    movq [esi+eax*4], mm0
    mov edi, [ebp+12]
    movq mm5, [edi+edx*4+8]
    pfmul mm5, mm4
    movq mm6, [esi+eax*4+8]
    pfadd mm5, mm6
    movq [esi+eax*4+8], mm5
    add ecx, 4
    cmp ecx, [ebp+20]
    jl near _MULMATSIMD