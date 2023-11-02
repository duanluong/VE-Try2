.syntax unified
.cpu cortex-m3
.thumb

.word 0x20000400
.word 0x080000ed
.space 0xe4

ldr r1, =0x12345678
ldr r2, =0x87654321
add r3, r2, r1
sub r5, r2, r1
ldr r4, =0x20000800
str r3, [r4]
b .

