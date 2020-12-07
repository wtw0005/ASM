#simple addition
push EAX #save registers
push EBX
push ECX
sub ESP, 12 #allocate 12 bytes for three integers
push EBP
mov EBP,ESP
mov [EBP], 5 #move integer to allocated area on stack using ESP
mov [EBP]+4, 6 #move integer to ESP +4 since 8 bytes allocated
mov [EBP]+8, 1

mov EAX,[EBP]
add EAX, [EBP]+4
add EAX, [EBP]+8

move [EBP]+12, EAX

pop ECX
pop EBX
pop EAX

ret 




