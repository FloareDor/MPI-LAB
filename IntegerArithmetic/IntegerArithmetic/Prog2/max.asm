 ; Author: Sai Ravi Teja Gangavarapu
 
 ORG  100h

 mov  cl, n
 mov  ch, -128     ;Array has numbers ranging from -128 to +127
 mov  si, array-1
More:
 inc  si
 sub  cl, 1
 jb   Done         ;Happens first time if the array is empty
 cmp  [si], ch
 jle  More         ;NotBigger
 mov  ch, [si]     ;New MAX goes from -128 -> 4 -> 69
 jmp  More
Done:
 ret               ;Back to DOS

array DB 04h, 45h, 32h, 23h, 09h
