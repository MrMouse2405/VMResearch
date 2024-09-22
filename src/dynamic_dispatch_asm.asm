example::State::new:
        sub     sp, sp, #4
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #4
        bx      lr

example::State::inc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r2, [r0]
        add     r1, r2, #1
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB1_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB1_2:
        ldr     r0, .LCPI1_0
.LPC1_0:
        add     r0, pc, r0
        ldr     r2, .LCPI1_1
.LPC1_1:
        add     r2, pc, r2
        mov     r1, #28
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI1_0:
        .long   str.0-(.LPC1_0+8)
.LCPI1_1:
        .long   .L__unnamed_1-(.LPC1_1+8)

example::State::dec:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r2, [r0]
        sub     r1, r2, #1
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB2_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB2_2:
        ldr     r0, .LCPI2_0
.LPC2_0:
        add     r0, pc, r0
        ldr     r2, .LCPI2_1
.LPC2_1:
        add     r2, pc, r2
        mov     r1, #33
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI2_0:
        .long   str.1-(.LPC2_0+8)
.LCPI2_1:
        .long   .L__unnamed_2-(.LPC2_1+8)

example::State::mul2:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r2, [r0]
        add     r1, r2, r2
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB3_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB3_2:
        ldr     r0, .LCPI3_0
.LPC3_0:
        add     r0, pc, r0
        ldr     r2, .LCPI3_1
.LPC3_1:
        add     r2, pc, r2
        mov     r1, #33
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI3_0:
        .long   str.2-(.LPC3_0+8)
.LCPI3_1:
        .long   .L__unnamed_3-(.LPC3_1+8)

example::State::div2:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp, #4]
        ldr     r0, [r0]
        cmp     r0, #-2147483648
        movw    r0, #0
        moveq   r0, #1
        and     r0, r0, #0
        tst     r0, #1
        bne     .LBB4_2
        ldr     r0, [sp, #4]
        ldr     r0, [r0]
        movw    r1, #2
        bl      __aeabi_idiv
        ldr     r1, [sp, #4]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB4_2:
        ldr     r0, .LCPI4_0
.LPC4_0:
        add     r0, pc, r0
        ldr     r2, .LCPI4_1
.LPC4_1:
        add     r2, pc, r2
        mov     r1, #31
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI4_0:
        .long   str.3-(.LPC4_0+8)
.LCPI4_1:
        .long   .L__unnamed_4-(.LPC4_1+8)

example::State::add7:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r2, [r0]
        add     r1, r2, #7
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB5_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB5_2:
        ldr     r0, .LCPI5_0
.LPC5_0:
        add     r0, pc, r0
        ldr     r2, .LCPI5_1
.LPC5_1:
        add     r2, pc, r2
        mov     r1, #28
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI5_0:
        .long   str.0-(.LPC5_0+8)
.LCPI5_1:
        .long   .L__unnamed_5-(.LPC5_1+8)

example::State::neg:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r0, [r0]
        str     r0, [sp, #4]
        cmp     r0, #-2147483648
        movw    r0, #0
        moveq   r0, #1
        tst     r0, #1
        bne     .LBB6_2
        ldr     r1, [sp]
        ldr     r2, [sp, #4]
        movw    r0, #0
        sub     r0, r0, r2
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB6_2:
        ldr     r0, .LCPI6_0
.LPC6_0:
        add     r0, pc, r0
        ldr     r2, .LCPI6_1
.LPC6_1:
        add     r2, pc, r2
        mov     r1, #31
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI6_0:
        .long   str.4-(.LPC6_0+8)
.LCPI6_1:
        .long   .L__unnamed_6-(.LPC6_1+8)

example::State::empty:
        bx      lr

example::interpreter_dynamic_dispatch:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r1, [sp]
        mov     r1, r0
        ldr     r0, [sp]
        str     r0, [sp, #4]
        ldr     r0, [r1]
        ldr     r1, [r1, #4]
        ldr     r2, [r1, #12]
        add     r1, sp, #4
        blx     r2
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

.L__unnamed_7:
        .ascii  "/app/example.rs"

.L__unnamed_1:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\f\000\000\000\t\000\000"

str.0:
        .ascii  "attempt to add with overflow"

.L__unnamed_2:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\017\000\000\000\t\000\000"

str.1:
        .ascii  "attempt to subtract with overflow"

.L__unnamed_3:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\022\000\000\000\t\000\000"

str.2:
        .ascii  "attempt to multiply with overflow"

.L__unnamed_4:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\025\000\000\000\t\000\000"

str.3:
        .ascii  "attempt to divide with overflow"

.L__unnamed_5:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\030\000\000\000\t\000\000"

.L__unnamed_6:
        .long   .L__unnamed_7
        .asciz  "\017\000\000\000\033\000\000\000\024\000\000"

str.4:
        .ascii  "attempt to negate with overflow"

__rustc_debug_gdb_scripts_section__:
        .asciz  "\001gdb_load_rust_pretty_printers.py"
