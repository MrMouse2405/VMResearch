// https://godbolt.org/z/sx9x7f4c1
<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::next:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #4]
        ldr     r0, [r0, #8]
        cmp     r0, #0
        movw    r0, #0
        movhi   r0, #1
        and     r0, r0, #1
        strb    r0, [r11, #-1]
        ldrb    r0, [r11, #-1]
        tst     r0, #1
        bne     .LBB0_2
        ldr     r0, [sp, #4]
        bl      <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
        str     r0, [sp, #8]
        b       .LBB0_3
.LBB0_2:
        ldr     r0, [sp, #4]
        ldr     r1, [r0, #8]
        movw    r2, #0
        str     r2, [r0, #8]
        bl      <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::nth
        str     r0, [sp, #8]
.LBB0_3:
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}

<core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::nth_back:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #56
        str     r0, [sp, #28]
        str     r1, [r11, #-24]
        ldr     r0, [sp, #28]
        ldr     r1, [r0, #4]
        str     r1, [sp, #20]
        ldr     r0, [r0]
        str     r0, [sp, #24]
        ldr     r1, [sp, #24]
        ldr     r0, [sp, #20]
        bl      core::ptr::const_ptr::<impl *const T>::sub_ptr::precondition_check
        b       .LBB1_4
.LBB1_4:
        b       .LBB1_5
.LBB1_5:
        ldr     r0, [sp, #20]
        ldr     r1, [sp, #24]
        sub     r0, r0, r1
        movw    r1, #1
        bl      __aeabi_uidiv
        str     r0, [r11, #-16]
        ldr     r0, [r11, #-24]
        ldr     r1, [r11, #-16]
        cmp     r0, r1
        bhs     .LBB1_8
        b       .LBB1_9
.LBB1_8:
        b       .LBB1_22
.LBB1_9:
        ldr     r0, [sp, #28]
        add     r1, r0, #4
        str     r1, [sp, #12]
        ldr     r0, [r0, #4]
        str     r0, [sp, #16]
        b       .LBB1_11
.LBB1_11:
        ldr     r0, [r11, #-24]
        bl      core::num::<impl isize>::unchecked_neg::precondition_check
        ldr     r0, [sp, #16]
        ldr     r2, [r11, #-24]
        movw    r1, #0
        sub     r1, r1, r2
        add     r0, r0, r1
        str     r0, [r11, #-12]
        ldr     r1, [sp, #12]
        ldr     r0, [r11, #-12]
        str     r0, [r1]
        b       .LBB1_15
.LBB1_15:
        ldr     r0, [sp, #28]
        add     r1, r0, #4
        str     r1, [sp, #4]
        ldr     r0, [r0, #4]
        str     r0, [sp, #8]
        b       .LBB1_17
.LBB1_17:
        movw    r0, #1
        bl      core::num::<impl isize>::unchecked_neg::precondition_check
        ldr     r0, [sp, #8]
        mvn     r1, #0
        add     r0, r0, r1
        str     r0, [r11, #-4]
        ldr     r0, [sp, #4]
        ldr     r1, [r11, #-4]
        str     r1, [r0]
        ldr     r0, [r0]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        str     r0, [r11, #-20]
.LBB1_21:
        ldr     r0, [r11, #-20]
        mov     sp, r11
        pop     {r11, pc}
.LBB1_22:
        ldr     r1, [sp, #28]
        ldr     r0, [r1]
        str     r0, [r1, #4]
        movw    r0, #0
        str     r0, [r11, #-20]
        b       .LBB1_21

<core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #32
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        ldr     r1, [r0, #4]
        str     r1, [r11, #-12]
        ldr     r0, [r0]
        ldr     r1, [r11, #-12]
        cmp     r0, r1
        movw    r0, #0
        moveq   r0, #1
        and     r0, r0, #1
        strb    r0, [r11, #-13]
        ldrb    r0, [r11, #-13]
        tst     r0, #1
        bne     .LBB2_4
        b       .LBB2_5
.LBB2_4:
        movw    r0, #0
        str     r0, [sp, #12]
        b       .LBB2_11
.LBB2_5:
        ldr     r0, [sp, #8]
        add     r1, r0, #4
        str     r1, [sp]
        ldr     r0, [r0, #4]
        str     r0, [sp, #4]
        b       .LBB2_7
.LBB2_7:
        movw    r0, #1
        bl      core::num::<impl isize>::unchecked_neg::precondition_check
        ldr     r0, [sp, #4]
        mvn     r1, #0
        add     r0, r0, r1
        str     r0, [r11, #-4]
        ldr     r0, [sp]
        ldr     r1, [r11, #-4]
        str     r1, [r0]
        ldr     r0, [r0]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        str     r0, [sp, #12]
.LBB2_11:
        ldr     r0, [sp, #12]
        mov     sp, r11
        pop     {r11, pc}

core::intrinsics::size_of_val:
        .inst   0xe7ffdefe

core::intrinsics::min_align_of_val:
        .inst   0xe7ffdefe

core::intrinsics::unlikely:
        and     r0, r0, #1
        bx      lr

core::fmt::Arguments::new_const:
        sub     sp, sp, #4
        str     r1, [sp]
        mov     r1, r0
        ldr     r0, [sp]
        str     r0, [r1]
        movw    r0, #1
        str     r0, [r1, #4]
        ldr     r0, .LCPI6_1
.LPC6_1:
        add     r0, pc, r0
        ldr     r2, [r0]
        ldr     r0, .LCPI6_0
.LPC6_0:
        add     r0, pc, r0
        ldr     r0, [r0, #4]
        str     r2, [r1, #16]
        str     r0, [r1, #20]
        movw    r0, #4
        str     r0, [r1, #8]
        movw    r0, #0
        str     r0, [r1, #12]
        add     sp, sp, #4
        bx      lr
.LCPI6_0:
        .long   .L__unnamed_1-(.LPC6_0+8)
.LCPI6_1:
        .long   .L__unnamed_1-(.LPC6_1+8)

core::num::<impl isize>::unchecked_neg::precondition_check:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        cmp     r0, #-2147483648
        movw    r0, #0
        moveq   r0, #1
        and     r0, r0, #1
        strb    r0, [r11, #-1]
        ldrb    r0, [r11, #-1]
        tst     r0, #1
        bne     .LBB7_2
        mov     sp, r11
        pop     {r11, pc}
.LBB7_2:
        ldr     r0, .LCPI7_0
.LPC7_0:
        add     r0, pc, r0
        mov     r1, #69
        bl      core::panicking::panic_nounwind
.LCPI7_0:
        .long   .L__unnamed_2-(.LPC7_0+8)

core::ptr::read_volatile::precondition_check:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #40
        str     r0, [sp, #4]
        str     r1, [sp, #8]
        cmp     r0, #0
        bne     .LBB8_2
        b       .LBB8_3
.LBB8_2:
        ldr     r0, [sp, #8]
        movw    r1, #21845
        movt    r1, #21845
        and     r1, r1, r0, lsr #1
        sub     r0, r0, r1
        movw    r2, #13107
        movt    r2, #13107
        and     r1, r2, r0, lsr #2
        and     r0, r0, r2
        add     r0, r0, r1
        add     r0, r0, r0, lsr #4
        movw    r1, #3855
        movt    r1, #3855
        and     r0, r0, r1
        movw    r1, #257
        movt    r1, #257
        mul     r0, r0, r1
        lsr     r0, r0, #24
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        cmp     r0, #1
        beq     .LBB8_4
        b       .LBB8_5
.LBB8_3:
        ldr     r0, .LCPI8_0
.LPC8_0:
        add     r0, pc, r0
        mov     r1, #110
        bl      core::panicking::panic_nounwind
.LBB8_4:
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #8]
        sub     r1, r1, #1
        and     r0, r0, r1
        cmp     r0, #0
        beq     .LBB8_6
        b       .LBB8_3
.LBB8_5:
        ldr     r0, .LCPI8_1
.LPC8_1:
        add     r0, pc, r0
        str     r0, [sp, #12]
        mov     r0, #1
        str     r0, [sp, #16]
        ldr     r1, .LCPI8_2
.LPC8_2:
        ldr     r1, [pc, r1]
        ldr     r0, .LCPI8_3
.LPC8_3:
        add     r0, pc, r0
        ldr     r0, [r0, #4]
        str     r1, [sp, #28]
        str     r0, [sp, #32]
        mov     r0, #4
        str     r0, [sp, #20]
        mov     r0, #0
        str     r0, [sp, #24]
        ldr     r1, .LCPI8_4
.LPC8_4:
        add     r1, pc, r1
        add     r0, sp, #12
        bl      core::panicking::panic_fmt
        b       .LBB8_8
.LBB8_6:
        mov     sp, r11
        pop     {r11, pc}
        bl      core::panicking::panic_cannot_unwind
.LBB8_8:
        .inst   0xe7ffdefe
.LCPI8_0:
        .long   .L__unnamed_3-(.LPC8_0+8)
.LCPI8_1:
        .long   .L__unnamed_4-(.LPC8_1+8)
.LCPI8_2:
        .long   .L__unnamed_1-(.LPC8_2+8)
.LCPI8_3:
        .long   .L__unnamed_1-(.LPC8_3+8)
.LCPI8_4:
        .long   .L__unnamed_5-(.LPC8_4+8)

core::ptr::drop_in_place<dyn example::Op>:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r0, [r1]
        str     r0, [sp, #4]
        movw    r1, #0
        cmp     r0, r1
        beq     .LBB9_2
        ldr     r1, [sp, #4]
        ldr     r0, [sp]
        blx     r1
.LBB9_2:
        mov     sp, r11
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Dec>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Inc>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Neg>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Add7>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Div2>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Mul2>:
        push    {r11, lr}
        mov     r11, sp
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        pop     {r11, pc}

core::ptr::drop_in_place<example::dispatch_markers::Empty>:
        bx      lr

core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [sp, #4]
        ldr     r1, [r0]
        str     r1, [sp, #8]
        ldr     r0, [r0, #4]
        ldr     r0, [r0]
        str     r0, [sp, #12]
        movw    r1, #0
        cmp     r0, r1
        beq     .LBB17_2
        ldr     r1, [sp, #12]
        ldr     r0, [sp, #8]
        blx     r1
        b       .LBB17_2
.LBB17_2:
        ldr     r0, [sp, #4]
        bl      <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
        mov     sp, r11
        pop     {r11, pc}
.LBB17_3:
        ldr     r0, [sp, #4]
        bl      <alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop
        b       .LBB17_6
        str     r0, [r11, #-8]
        str     r1, [r11, #-4]
        b       .LBB17_3
        bl      core::panicking::panic_in_cleanup
.LBB17_6:
        ldr     r0, [r11, #-8]
        bl      _Unwind_Resume

core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check:
        push    {r11, lr}
        mov     r11, sp
        cmp     r0, #0
        bne     .LBB18_2
        ldr     r0, .LCPI18_0
.LPC18_0:
        add     r0, pc, r0
        mov     r1, #93
        bl      core::panicking::panic_nounwind
.LBB18_2:
        pop     {r11, pc}
.LCPI18_0:
        .long   .L__unnamed_6-(.LPC18_0+8)

core::ptr::const_ptr::<impl *const T>::sub_ptr::precondition_check:
        push    {r11, lr}
        mov     r11, sp
        cmp     r0, r1
        bhs     .LBB19_2
        ldr     r0, .LCPI19_0
.LPC19_0:
        add     r0, pc, r0
        mov     r1, #71
        bl      core::panicking::panic_nounwind
.LBB19_2:
        pop     {r11, pc}
.LCPI19_0:
        .long   .L__unnamed_7-(.LPC19_0+8)

core::iter::traits::iterator::Iterator::rev:
        bx      lr

core::iter::traits::iterator::Iterator::skip:
        str     r1, [r0]
        str     r2, [r0, #4]
        str     r3, [r0, #8]
        bx      lr

core::slice::<impl [T]>::iter:
        push    {r11, lr}
        mov     r11, sp
        bl      core::slice::iter::Iter<T>::new
        pop     {r11, pc}

core::slice::raw::from_raw_parts::precondition_check:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #56
        str     r0, [sp, #8]
        str     r1, [sp, #12]
        str     r2, [sp, #16]
        str     r3, [sp, #20]
        cmp     r0, #0
        bne     .LBB23_2
        b       .LBB23_3
.LBB23_2:
        ldr     r0, [sp, #16]
        movw    r1, #21845
        movt    r1, #21845
        and     r1, r1, r0, lsr #1
        sub     r0, r0, r1
        movw    r2, #13107
        movt    r2, #13107
        and     r1, r2, r0, lsr #2
        and     r0, r0, r2
        add     r0, r0, r1
        add     r0, r0, r0, lsr #4
        movw    r1, #3855
        movt    r1, #3855
        and     r0, r0, r1
        movw    r1, #257
        movt    r1, #257
        mul     r0, r0, r1
        lsr     r0, r0, #24
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        cmp     r0, #1
        beq     .LBB23_4
        b       .LBB23_5
.LBB23_3:
        b       .LBB23_7
.LBB23_4:
        ldr     r0, [sp, #8]
        ldr     r1, [sp, #16]
        sub     r1, r1, #1
        and     r0, r0, r1
        cmp     r0, #0
        beq     .LBB23_6
        b       .LBB23_3
.LBB23_5:
        ldr     r0, .LCPI23_1
.LPC23_0:
        add     r0, pc, r0
        str     r0, [sp, #24]
        mov     r0, #1
        str     r0, [sp, #28]
        ldr     r1, .LCPI23_2
.LPC23_1:
        ldr     r1, [pc, r1]
        ldr     r0, .LCPI23_3
.LPC23_2:
        add     r0, pc, r0
        ldr     r0, [r0, #4]
        str     r1, [sp, #40]
        str     r0, [sp, #44]
        mov     r0, #4
        str     r0, [sp, #32]
        mov     r0, #0
        str     r0, [sp, #36]
        ldr     r1, .LCPI23_4
.LPC23_3:
        add     r1, pc, r1
        add     r0, sp, #24
        bl      core::panicking::panic_fmt
        b       .LBB23_14
.LBB23_6:
        ldr     r0, [sp, #12]
        cmp     r0, #0
        movw    r1, #0
        moveq   r1, #1
        str     r1, [sp, #4]
        cmp     r0, #0
        beq     .LBB23_8
        b       .LBB23_9
.LBB23_7:
        ldr     r0, .LCPI23_5
.LPC23_4:
        add     r0, pc, r0
        mov     r1, #162
        bl      core::panicking::panic_nounwind
.LBB23_8:
        mvn     r0, #0
        str     r0, [r11, #-8]
        b       .LBB23_10
.LBB23_9:
        ldr     r0, [sp, #4]
        tst     r0, #1
        bne     .LBB23_12
        b       .LBB23_11
.LBB23_10:
        ldr     r0, [sp, #20]
        ldr     r1, [r11, #-8]
        cmp     r0, r1
        bls     .LBB23_16
        b       .LBB23_15
.LBB23_11:
        ldr     r1, [sp, #12]
        ldr     r0, .LCPI23_0
        bl      __aeabi_uidiv
        str     r0, [r11, #-8]
        b       .LBB23_10
.LBB23_12:
        ldr     r0, .LCPI23_6
.LPC23_5:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_div_by_zero
        b       .LBB23_14
        bl      core::panicking::panic_cannot_unwind
.LBB23_14:
        .inst   0xe7ffdefe
.LBB23_15:
        b       .LBB23_7
.LBB23_16:
        mov     sp, r11
        pop     {r11, pc}
.LCPI23_0:
        .long   2147483647
.LCPI23_1:
        .long   .L__unnamed_4-(.LPC23_0+8)
.LCPI23_2:
        .long   .L__unnamed_1-(.LPC23_1+8)
.LCPI23_3:
        .long   .L__unnamed_1-(.LPC23_2+8)
.LCPI23_4:
        .long   .L__unnamed_5-(.LPC23_3+8)
.LCPI23_5:
        .long   .L__unnamed_8-(.LPC23_4+8)
.LCPI23_6:
        .long   .L__unnamed_9-(.LPC23_5+8)

core::slice::iter::Iter<T>::new:
        sub     sp, sp, #12
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     r0, r0, r1
        str     r0, [sp, #8]
        ldr     r0, [sp]
        ldr     r1, [sp, #8]
        add     sp, sp, #12
        bx      lr

alloc::alloc::exchange_malloc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        mov     r2, r0
        str     r2, [sp]
        str     r1, [sp, #4]
        mov     r0, #1
        mov     r3, #0
        bl      alloc::alloc::Global::alloc_impl
        str     r0, [sp, #8]
        str     r1, [sp, #12]
        ldr     r0, [sp, #8]
        cmp     r0, #0
        movw    r1, #0
        moveq   r1, #1
        movw    r0, #1
        tst     r1, #1
        moveq   r0, #0
        cmp     r0, #0
        bne     .LBB25_2
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}
.LBB25_2:
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        bl      alloc::alloc::handle_alloc_error

alloc::alloc::alloc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, .LCPI26_0
.LPC26_0:
        ldr     r0, [pc, r0]
        movw    r1, #1
        bl      core::ptr::read_volatile::precondition_check
        ldr     r0, .LCPI26_1
.LPC26_1:
        ldr     r0, [pc, r0]
        ldrb    r0, [r0]
        strb    r0, [r11, #-1]
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r1, [sp, #8]
        ldr     r1, [sp, #8]
        bl      __rust_alloc
        mov     sp, r11
        pop     {r11, pc}
.LCPI26_0:
.Ltmp134:
        .long   __rust_no_alloc_shim_is_unstable(GOT_PREL)-((.LPC26_0+8)-.Ltmp134)
.LCPI26_1:
.Ltmp135:
        .long   __rust_no_alloc_shim_is_unstable(GOT_PREL)-((.LPC26_1+8)-.Ltmp135)

alloc::alloc::Global::alloc_impl:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #88
        str     r3, [sp, #12]
        str     r1, [sp, #20]
        str     r2, [sp, #24]
        ldr     r0, [sp, #24]
        str     r0, [sp, #16]
        cmp     r0, #0
        bne     .LBB27_2
        ldr     r0, [sp, #20]
        str     r0, [r11, #-24]
        ldr     r1, [r11, #-24]
        movw    r0, #0
        add     r0, r0, r1
        str     r0, [sp, #8]
        b       .LBB27_3
.LBB27_2:
        ldr     r0, [sp, #12]
        tst     r0, #1
        bne     .LBB27_8
        b       .LBB27_7
.LBB27_3:
        ldr     r0, [sp, #8]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
        ldr     r0, [sp, #8]
        str     r0, [r11, #-20]
        ldr     r1, [r11, #-20]
        str     r1, [sp, #36]
        str     r0, [r11, #-8]
        str     r0, [r11, #-16]
        movw    r0, #0
        str     r0, [r11, #-12]
        ldr     r0, [sp, #8]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
        ldr     r1, [r11, #-16]
        ldr     r0, [r11, #-12]
        str     r1, [sp, #28]
        str     r0, [sp, #32]
.LBB27_6:
        ldr     r0, [sp, #28]
        ldr     r1, [sp, #32]
        mov     sp, r11
        pop     {r11, pc}
.LBB27_7:
        ldr     r0, [sp, #20]
        ldr     r1, [sp, #24]
        bl      alloc::alloc::alloc
        str     r0, [sp, #40]
        b       .LBB27_9
.LBB27_8:
        ldr     r0, [sp, #16]
        ldr     r2, [sp, #20]
        ldr     r1, [sp, #24]
        str     r2, [sp, #44]
        str     r1, [sp, #48]
        ldr     r1, [sp, #20]
        str     r1, [r11, #-4]
        ldr     r1, [r11, #-4]
        bl      __rust_alloc_zeroed
        str     r0, [sp, #40]
.LBB27_9:
        ldr     r0, [sp, #40]
        str     r0, [sp, #4]
        cmp     r0, #0
        bne     .LBB27_11
        movw    r0, #0
        str     r0, [r11, #-28]
        movw    r0, #0
        str     r0, [r11, #-32]
        ldr     r0, .LCPI27_1
.LPC27_1:
        add     r0, pc, r0
        ldr     r1, [r0]
        ldr     r0, .LCPI27_0
.LPC27_0:
        add     r0, pc, r0
        ldr     r0, [r0, #4]
        str     r1, [sp, #28]
        str     r0, [sp, #32]
        b       .LBB27_6
.LBB27_11:
        b       .LBB27_12
.LBB27_12:
        ldr     r0, [sp, #4]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
        ldr     r0, [sp, #4]
        str     r0, [r11, #-28]
        ldr     r0, [r11, #-28]
        str     r0, [r11, #-32]
        ldr     r0, [r11, #-32]
        str     r0, [r11, #-36]
        ldr     r0, [r11, #-36]
        str     r0, [sp]
        ldr     r0, [sp]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked::precondition_check
        ldr     r0, [sp, #16]
        ldr     r1, [sp]
        str     r1, [sp, #28]
        str     r0, [sp, #32]
        b       .LBB27_6
.LCPI27_0:
        .long   .L__unnamed_1-(.LPC27_0+8)
.LCPI27_1:
        .long   .L__unnamed_1-(.LPC27_1+8)

<I as core::iter::traits::collect::IntoIterator>::into_iter:
        sub     sp, sp, #4
        str     r1, [sp]
        mov     r1, r0
        ldr     r0, [sp]
        ldr     r2, [r0]
        str     r2, [r1]
        ldr     r2, [r0, #4]
        str     r2, [r1, #4]
        ldr     r0, [r0, #8]
        str     r0, [r1, #8]
        add     sp, sp, #4
        bx      lr

<alloc::alloc::Global as core::alloc::Allocator>::deallocate:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #32
        str     r1, [sp, #4]
        str     r2, [sp, #12]
        str     r3, [sp, #16]
        ldr     r0, [sp, #16]
        str     r0, [sp, #8]
        cmp     r0, #0
        bne     .LBB29_2
.LBB29_1:
        mov     sp, r11
        pop     {r11, pc}
.LBB29_2:
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #4]
        ldr     r3, [sp, #12]
        ldr     r2, [sp, #16]
        str     r3, [r11, #-12]
        str     r2, [r11, #-8]
        ldr     r2, [sp, #12]
        str     r2, [r11, #-4]
        ldr     r2, [r11, #-4]
        bl      __rust_dealloc
        b       .LBB29_1

<alloc::boxed::Box<T,A> as core::ops::drop::Drop>::drop:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [sp]
        ldr     r1, [r0]
        str     r1, [sp, #4]
        ldr     r1, [r0, #4]
        ldr     r0, [r1, #4]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        ldr     r1, [r1, #8]
        str     r1, [r11, #-4]
        ldr     r1, [r11, #-4]
        str     r0, [sp, #12]
        str     r1, [sp, #8]
        cmp     r0, #0
        bne     .LBB30_2
.LBB30_1:
        mov     sp, r11
        pop     {r11, pc}
.LBB30_2:
        ldr     r1, [sp, #4]
        ldr     r0, [sp]
        add     r0, r0, #8
        ldr     r2, [sp, #8]
        ldr     r3, [sp, #12]
        bl      <alloc::alloc::Global as core::alloc::Allocator>::deallocate
        b       .LBB30_1

<alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        ldr     r1, [r0, #4]
        str     r1, [sp]
        ldr     r0, [r0, #8]
        str     r0, [sp, #4]
        ldr     r3, [sp, #4]
        ldr     r0, [sp]
        movw    r2, #1
        mov     r1, r2
        bl      core::slice::raw::from_raw_parts::precondition_check
        ldr     r1, [sp, #4]
        ldr     r0, [sp]
        mov     sp, r11
        pop     {r11, pc}

<core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::nth:
        push    {r11, lr}
        mov     r11, sp
        bl      <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::nth_back
        pop     {r11, pc}

<core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next:
        push    {r11, lr}
        mov     r11, sp
        bl      <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
        pop     {r11, pc}

example::State::new:
        bx      lr

example::State::inc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ; stack management ^^^
        ; marker 1
        ; actual instruction set
        ldr     r2, [r0]
        add     r1, r2, #1
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB35_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        ; marker 1
        ; actual instructoin set
        ; stack management VVV
        mov     sp, r11
        pop     {r11, pc}
.LBB35_2:
        ldr     r0, .LCPI35_0
.LPC35_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_add_overflow
.LCPI35_0:
        .long   .L__unnamed_10-(.LPC35_0+8)

example::State::dec:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ; stack management ^^^
        ; marker 1
        ; actual instruction set
        ldr     r2, [r0]
        sub     r1, r2, #1
        str     r1, [sp, #4]
        mov     r0, #1
        cmp     r1, r2
        movwvc  r0, #0
        tst     r0, #1
        bne     .LBB36_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        ; marker 1
        ; actual instructoin set
        ; stack management VVV
        mov     sp, r11
        pop     {r11, pc}
.LBB36_2:
        ldr     r0, .LCPI36_0
.LPC36_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_sub_overflow
.LCPI36_0:
        .long   .L__unnamed_11-(.LPC36_0+8)

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
        bne     .LBB37_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB37_2:
        ldr     r0, .LCPI37_0
.LPC37_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_mul_overflow
.LCPI37_0:
        .long   .L__unnamed_12-(.LPC37_0+8)

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
        bne     .LBB38_2
        ldr     r0, [sp, #4]
        ldr     r0, [r0]
        movw    r1, #2
        bl      __aeabi_idiv
        ldr     r1, [sp, #4]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB38_2:
        ldr     r0, .LCPI38_0
.LPC38_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_div_overflow
.LCPI38_0:
        .long   .L__unnamed_13-(.LPC38_0+8)

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
        bne     .LBB39_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB39_2:
        ldr     r0, .LCPI39_0
.LPC39_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_add_overflow
.LCPI39_0:
        .long   .L__unnamed_14-(.LPC39_0+8)

example::State::neg:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp]
        ldr     r0, [r0]
        str     r0, [sp, #4]
        cmp     r0, #-2147483648
        beq     .LBB40_2
        ldr     r1, [sp]
        ldr     r2, [sp, #4]
        movw    r0, #0
        sub     r0, r0, r2
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB40_2:
        ldr     r0, .LCPI40_0
.LPC40_0:
        add     r0, pc, r0
        bl      core::panicking::panic_const::panic_const_neg_overflow
.LCPI40_0:
        .long   .L__unnamed_15-(.LPC40_0+8)

example::State::empty:
        bx      lr

<example::dispatch_markers::Empty as example::Op>::call:
        bx      lr

example::generate_dynamic_dispatch_code:
        push    {r4, r5, r11, lr}
        add     r11, sp, #8
        sub     sp, sp, #352
        str     r0, [sp, #156]
        mov     r0, #0
        strb    r0, [r11, #-121]
        mov     r1, #1
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #160]
        b       .LBB43_2
        str     r0, [r11, #-16]
        str     r1, [r11, #-12]
        ldr     r0, [r11, #-16]
        str     r0, [sp, #152]
        b       .LBB43_71
.LBB43_2:
        ldr     r0, [sp, #156]
        ldr     r1, [sp, #160]
        mov     r2, #1
        strb    r2, [r11, #-121]
        str     r1, [sp, #164]
        ldr     r1, .LCPI43_6
.LPC43_6:
        add     r1, pc, r1
        str     r1, [sp, #168]
        bl      <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
        str     r1, [sp, #144]
        str     r0, [sp, #148]
        b       .LBB43_11
.LBB43_3:
        ldrb    r0, [r11, #-121]
        tst     r0, #1
        bne     .LBB43_69
        b       .LBB43_68
        str     r0, [sp, #136]
        str     r1, [sp, #140]
        b       .LBB43_5
.LBB43_5:
        ldr     r1, [sp, #136]
        ldr     r0, [sp, #140]
        str     r1, [sp, #128]
        str     r0, [sp, #132]
        b       .LBB43_6
.LBB43_6:
        ldr     r1, [sp, #128]
        ldr     r0, [sp, #132]
        str     r1, [sp, #120]
        str     r0, [sp, #124]
        b       .LBB43_7
.LBB43_7:
        ldr     r1, [sp, #120]
        ldr     r0, [sp, #124]
        str     r1, [sp, #112]
        str     r0, [sp, #116]
        b       .LBB43_8
.LBB43_8:
        ldr     r1, [sp, #112]
        ldr     r0, [sp, #116]
        str     r1, [sp, #104]
        str     r0, [sp, #108]
        b       .LBB43_9
.LBB43_9:
        ldr     r1, [sp, #104]
        ldr     r0, [sp, #108]
        str     r1, [sp, #96]
        str     r0, [sp, #100]
        b       .LBB43_10
.LBB43_10:
        ldr     r1, [sp, #96]
        ldr     r0, [sp, #100]
        str     r1, [r11, #-120]
        str     r0, [r11, #-116]
        b       .LBB43_3
.LBB43_11:
        ldr     r1, [sp, #144]
        ldr     r0, [sp, #148]
        bl      core::slice::<impl [T]>::iter
        str     r1, [sp, #88]
        str     r0, [sp, #92]
        b       .LBB43_12
.LBB43_12:
        ldr     r1, [sp, #88]
        ldr     r0, [sp, #92]
        bl      core::iter::traits::iterator::Iterator::rev
        str     r1, [sp, #80]
        str     r0, [sp, #84]
        b       .LBB43_13
.LBB43_13:
        ldr     r2, [sp, #80]
        ldr     r1, [sp, #84]
        sub     r0, r11, #176
        mov     r3, #1
        bl      core::iter::traits::iterator::Iterator::skip
        b       .LBB43_14
.LBB43_14:
        add     r0, sp, #172
        sub     r1, r11, #176
        bl      <I as core::iter::traits::collect::IntoIterator>::into_iter
        b       .LBB43_15
.LBB43_15:
        ldr     r0, [sp, #172]
        str     r0, [r11, #-164]
        ldr     r0, [sp, #176]
        str     r0, [r11, #-160]
        ldr     r0, [sp, #180]
        str     r0, [r11, #-156]
.LBB43_16:
        sub     r0, r11, #164
        bl      <core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::next
        str     r0, [sp, #76]
        b       .LBB43_17
.LBB43_17:
        ldr     r0, [sp, #76]
        str     r0, [r11, #-152]
        ldr     r0, [r11, #-152]
        cmp     r0, #0
        movw    r1, #0
        moveq   r1, #1
        movw    r0, #0
        tst     r1, #1
        moveq   r0, #1
        cmp     r0, #0
        bne     .LBB43_19
        mov     r2, #0
        strb    r2, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        strb    r2, [r11, #-121]
        sub     sp, r11, #8
        pop     {r4, r5, r11, pc}
.LBB43_19:
        ldr     r0, [r11, #-152]
        ldrb    r0, [r0]
        str     r0, [sp, #72]
        ldr     r1, [sp, #72]
        adr     r0, .LJTI43_0
        ldr     r1, [r0, r1, lsl #2]
        add     pc, r0, r1
.LJTI43_0:
        .long   .LBB43_23-.LJTI43_0
        .long   .LBB43_24-.LJTI43_0
        .long   .LBB43_25-.LJTI43_0
        .long   .LBB43_26-.LJTI43_0
        .long   .LBB43_27-.LJTI43_0
        .long   .LBB43_28-.LJTI43_0
        .long   .LBB43_29-.LJTI43_0
        .inst   0xe7ffdefe
.LBB43_23:
        ldr     r1, .LCPI43_7
.LPC43_7:
        add     r1, pc, r1
        sub     r0, r11, #148
        bl      core::fmt::Arguments::new_const
        b       .LBB43_30
.LBB43_24:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Inc::new
        str     r1, [sp, #64]
        str     r0, [sp, #68]
        b       .LBB43_32
.LBB43_25:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Dec::new
        str     r1, [sp, #56]
        str     r0, [sp, #60]
        b       .LBB43_38
.LBB43_26:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Div2::new
        str     r1, [sp, #48]
        str     r0, [sp, #52]
        b       .LBB43_44
.LBB43_27:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Mul2::new
        str     r1, [sp, #40]
        str     r0, [sp, #44]
        b       .LBB43_50
.LBB43_28:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Add7::new
        str     r1, [sp, #32]
        str     r0, [sp, #36]
        b       .LBB43_56
.LBB43_29:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #164]
        ldr     r1, [sp, #168]
        bl      example::dispatch_markers::Neg::new
        str     r1, [sp, #24]
        str     r0, [sp, #28]
        b       .LBB43_62
.LBB43_30:
        ldr     r1, .LCPI43_8
.LPC43_8:
        add     r1, pc, r1
        sub     r0, r11, #148
        bl      core::panicking::panic_fmt
        b       .LBB43_31
.LBB43_31:
        .inst   0xe7ffdefe
.LBB43_32:
        ldr     r0, [sp, #64]
        ldr     r1, [sp, #68]
        str     r1, [r11, #-48]
        str     r0, [r11, #-44]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #20]
        b       .LBB43_36
        str     r0, [r11, #-40]
        str     r1, [r11, #-36]
        sub     r0, r11, #48
        bl      core::ptr::drop_in_place<example::dispatch_markers::Inc>
        b       .LBB43_35
        bl      core::panicking::panic_in_cleanup
.LBB43_35:
        ldr     r1, [r11, #-40]
        ldr     r0, [r11, #-36]
        str     r1, [sp, #128]
        str     r0, [sp, #132]
        b       .LBB43_6
.LBB43_36:
        ldr     r1, [sp, #20]
        ldr     r2, [r11, #-48]
        ldr     r0, [r11, #-44]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #20]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_5
.LPC43_5:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_38:
        ldr     r0, [sp, #56]
        ldr     r1, [sp, #60]
        str     r1, [r11, #-32]
        str     r0, [r11, #-28]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #16]
        b       .LBB43_42
        str     r0, [r11, #-24]
        str     r1, [r11, #-20]
        sub     r0, r11, #32
        bl      core::ptr::drop_in_place<example::dispatch_markers::Dec>
        b       .LBB43_41
        bl      core::panicking::panic_in_cleanup
.LBB43_41:
        ldr     r1, [r11, #-24]
        ldr     r0, [r11, #-20]
        str     r1, [sp, #136]
        str     r0, [sp, #140]
        b       .LBB43_5
.LBB43_42:
        ldr     r1, [sp, #16]
        ldr     r2, [r11, #-32]
        ldr     r0, [r11, #-28]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #16]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_4
.LPC43_4:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_44:
        ldr     r0, [sp, #48]
        ldr     r1, [sp, #52]
        str     r1, [r11, #-96]
        str     r0, [r11, #-92]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #12]
        b       .LBB43_48
        str     r0, [r11, #-88]
        str     r1, [r11, #-84]
        sub     r0, r11, #96
        bl      core::ptr::drop_in_place<example::dispatch_markers::Div2>
        b       .LBB43_47
        bl      core::panicking::panic_in_cleanup
.LBB43_47:
        ldr     r1, [r11, #-88]
        ldr     r0, [r11, #-84]
        str     r1, [sp, #104]
        str     r0, [sp, #108]
        b       .LBB43_9
.LBB43_48:
        ldr     r1, [sp, #12]
        ldr     r2, [r11, #-96]
        ldr     r0, [r11, #-92]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #12]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_3
.LPC43_3:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_50:
        ldr     r0, [sp, #40]
        ldr     r1, [sp, #44]
        str     r1, [r11, #-64]
        str     r0, [r11, #-60]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #8]
        b       .LBB43_54
        str     r0, [r11, #-56]
        str     r1, [r11, #-52]
        sub     r0, r11, #64
        bl      core::ptr::drop_in_place<example::dispatch_markers::Mul2>
        b       .LBB43_53
        bl      core::panicking::panic_in_cleanup
.LBB43_53:
        ldr     r1, [r11, #-56]
        ldr     r0, [r11, #-52]
        str     r1, [sp, #120]
        str     r0, [sp, #124]
        b       .LBB43_7
.LBB43_54:
        ldr     r1, [sp, #8]
        ldr     r2, [r11, #-64]
        ldr     r0, [r11, #-60]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #8]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_2
.LPC43_2:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_56:
        ldr     r0, [sp, #32]
        ldr     r1, [sp, #36]
        str     r1, [r11, #-80]
        str     r0, [r11, #-76]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #4]
        b       .LBB43_60
        str     r0, [r11, #-72]
        str     r1, [r11, #-68]
        sub     r0, r11, #80
        bl      core::ptr::drop_in_place<example::dispatch_markers::Add7>
        b       .LBB43_59
        bl      core::panicking::panic_in_cleanup
.LBB43_59:
        ldr     r1, [r11, #-72]
        ldr     r0, [r11, #-68]
        str     r1, [sp, #112]
        str     r0, [sp, #116]
        b       .LBB43_8
.LBB43_60:
        ldr     r1, [sp, #4]
        ldr     r2, [r11, #-80]
        ldr     r0, [r11, #-76]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #4]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_1
.LPC43_1:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_62:
        ldr     r0, [sp, #24]
        ldr     r1, [sp, #28]
        str     r1, [r11, #-112]
        str     r0, [r11, #-108]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp]
        b       .LBB43_66
        str     r0, [r11, #-104]
        str     r1, [r11, #-100]
        sub     r0, r11, #112
        bl      core::ptr::drop_in_place<example::dispatch_markers::Neg>
        b       .LBB43_65
        bl      core::panicking::panic_in_cleanup
.LBB43_65:
        ldr     r1, [r11, #-104]
        ldr     r0, [r11, #-100]
        str     r1, [sp, #96]
        str     r0, [sp, #100]
        b       .LBB43_10
.LBB43_66:
        ldr     r1, [sp]
        ldr     r2, [r11, #-112]
        ldr     r0, [r11, #-108]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #164]
        ldr     r0, .LCPI43_0
.LPC43_0:
        add     r0, pc, r0
        str     r0, [sp, #168]
        b       .LBB43_16
.LBB43_68:
        ldr     r0, [r11, #-120]
        str     r0, [sp, #152]
        b       .LBB43_71
.LBB43_69:
        add     r0, sp, #164
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        b       .LBB43_68
        bl      core::panicking::panic_in_cleanup
.LBB43_71:
        ldr     r0, [sp, #152]
        bl      _Unwind_Resume
.LCPI43_0:
        .long   .L__unnamed_16-(.LPC43_0+8)
.LCPI43_1:
        .long   .L__unnamed_17-(.LPC43_1+8)
.LCPI43_2:
        .long   .L__unnamed_18-(.LPC43_2+8)
.LCPI43_3:
        .long   .L__unnamed_19-(.LPC43_3+8)
.LCPI43_4:
        .long   .L__unnamed_20-(.LPC43_4+8)
.LCPI43_5:
        .long   .L__unnamed_21-(.LPC43_5+8)
.LCPI43_6:
        .long   .L__unnamed_22-(.LPC43_6+8)
.LCPI43_7:
        .long   .L__unnamed_23-(.LPC43_7+8)
.LCPI43_8:
        .long   .L__unnamed_24-(.LPC43_8+8)

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

example::dispatch_markers::Inc::new:
        bx      lr

<example::dispatch_markers::Inc as example::Op>::call:
        ; stack setup
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        ; marker 2
        ; actual instruction set
        bl      example::State::inc
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ; marker 2
        ; calling the next function
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        ; stack teardown
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Dec::new:
        bx      lr

<example::dispatch_markers::Dec as example::Op>::call:
        ; stack setup
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        ; marker 2
        ; actual instruction set
        bl      example::State::dec
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ; marker 2
        ; calling the next function
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        ; stack teardown
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Mul2::new:
        bx      lr

<example::dispatch_markers::Mul2 as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::mul2
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Div2::new:
        bx      lr

<example::dispatch_markers::Div2 as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::div2
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Add7::new:
        bx      lr

<example::dispatch_markers::Add7 as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::add7
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Neg::new:
        bx      lr

<example::dispatch_markers::Neg as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::neg
        ldr     r2, [sp, #8]
        ldr     r1, [r11, #-4]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

.L__unnamed_26:
        .ascii  "/rustc/eeb90cda1969383f56a2637cbd3037bdf598841c/library/core/src/ptr/const_ptr.rs"

.L__unnamed_1:
        .zero   4
        .zero   4

.L__unnamed_2:
        .ascii  "unsafe precondition(s) violated: isize::unchecked_neg cannot overflow"

.L__unnamed_3:
        .ascii  "unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"

.L__unnamed_28:
        .ascii  "is_aligned_to: align is not a power-of-two"

.L__unnamed_4:
        .long   .L__unnamed_28
        .asciz  "*\000\000"

.L__unnamed_5:
        .long   .L__unnamed_26
        .asciz  "Q\000\000\000\031\006\000\000\r\000\000"

.L__unnamed_6:
        .ascii  "unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"

.L__unnamed_7:
        .ascii  "unsafe precondition(s) violated: ptr::sub_ptr requires `self >= origin`"

.L__unnamed_29:
        .ascii  "/rustc/eeb90cda1969383f56a2637cbd3037bdf598841c/library/core/src/ub_checks.rs"

.L__unnamed_9:
        .long   .L__unnamed_29
        .asciz  "M\000\000\000|\000\000\0006\000\000"

.L__unnamed_8:
        .ascii  "unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"

.L__unnamed_30:
        .ascii  "/app/example.rs"

.L__unnamed_10:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000\025\000\000\000\t\000\000"

.L__unnamed_11:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000\030\000\000\000\t\000\000"

.L__unnamed_12:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000\033\000\000\000\t\000\000"

.L__unnamed_13:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000\036\000\000\000\t\000\000"

.L__unnamed_14:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000!\000\000\000\t\000\000"

.L__unnamed_15:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000$\000\000\000\024\000\000"

.L__unnamed_22:
        .asciz  "\000\000\000\000\000\000\000\000\001\000\000"
        .long   <example::dispatch_markers::Empty as example::Op>::call

.L__unnamed_31:
        .ascii  "UNEXPECTED END!!!"

.L__unnamed_23:
        .long   .L__unnamed_31
        .asciz  "\021\000\000"

.L__unnamed_24:
        .long   .L__unnamed_30
        .asciz  "\017\000\000\000g\000\000\000 \000\000"

.L__unnamed_21:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Inc>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Inc as example::Op>::call

.L__unnamed_20:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Dec>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Dec as example::Op>::call

.L__unnamed_19:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Div2>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Div2 as example::Op>::call

.L__unnamed_18:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Mul2>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Mul2 as example::Op>::call

.L__unnamed_17:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Add7>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Add7 as example::Op>::call

.L__unnamed_16:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Neg>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Neg as example::Op>::call