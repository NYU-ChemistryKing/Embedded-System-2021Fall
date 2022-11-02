.syntax unified

.global asm_sub
.global asm_led
.global asm_error
.global add_overflow
.global add_6
.type add_6,%function


asm_sub:
    SUB r0, r0, r1
    bx lr;


asm_led:
    EOR r0, r0, #1 
    bx lr;

asm_error:
    ADDS r0, r0, r1
    IT VS
    MOVVS r0, #1
    bx lr;

add_6:
    ADD r0, r0, r1
    ADD r0, r0, r2
    ADD r0, r0, r3
    ldm sp, {r4, r5}
    Add r0, r0, r4
    Add r0, r0, r5
    bx lr;




