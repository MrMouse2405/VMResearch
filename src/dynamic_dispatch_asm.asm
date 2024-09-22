<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::next:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [sp, #12]
        ldr     r0, [r0, #8]
        cmp     r0, #0
        movw    r0, #0
        movhi   r0, #1
        and     r0, r0, #1
        strb    r0, [r11, #-1]
        ldrb    r0, [r11, #-1]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        tst     r0, #1
        bne     .LBB0_3
        b       .LBB0_2
.LBB0_2:
        ldr     r0, [sp, #12]
        bl      <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next
        str     r0, [sp, #8]
        b       .LBB0_7
.LBB0_3:
        ldr     r0, [sp, #12]
        mov     r1, r0
        str     r1, [sp]
        add     r0, r0, #8
        bl      core::mem::take
        str     r0, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        sub     r1, r1, #1
        bl      <core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::nth
        b       .LBB0_6
.LBB0_6:
        b       .LBB0_2
.LBB0_7:
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}

<core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::nth_back:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #80
        str     r0, [sp, #40]
        str     r1, [r11, #-36]
        ldr     r0, [r0]
        str     r0, [r11, #-32]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        b       .LBB1_2
.LBB1_2:
        movw    r0, #1
        cmp     r0, #0
        bne     .LBB1_4
        ldr     r0, [sp, #40]
        ldr     r0, [r0, #4]
        bl      core::ptr::const_ptr::<impl *const T>::addr
        str     r0, [sp, #36]
        b       .LBB1_11
.LBB1_4:
        ldr     r0, [sp, #40]
        ldr     r0, [r0, #4]
        bl      core::ptr::const_ptr::<impl *const T>::addr
        str     r0, [sp, #32]
        ldr     r0, [r11, #-32]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #28]
        ldr     r0, [sp, #28]
        bl      core::ptr::mut_ptr::<impl *mut T>::addr
        str     r0, [sp, #24]
        ldr     r0, [sp, #32]
        ldr     r1, [sp, #24]
        sub     r0, r0, r1
        str     r0, [r11, #-20]
        ldr     r0, [r11, #-20]
        str     r0, [sp, #20]
        ldr     r0, [sp, #20]
        movw    r1, #1
        bl      __aeabi_uidiv
        str     r0, [r11, #-24]
        b       .LBB1_10
.LBB1_10:
        ldr     r0, [r11, #-36]
        ldr     r1, [r11, #-24]
        cmp     r0, r1
        bhs     .LBB1_16
        b       .LBB1_15
.LBB1_11:
        ldr     r0, [r11, #-32]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #16]
        ldr     r0, [sp, #16]
        bl      core::ptr::mut_ptr::<impl *mut T>::addr
        str     r0, [sp, #12]
        ldr     r0, [sp, #36]
        ldr     r1, [sp, #12]
        sub     r0, r0, r1
        str     r0, [r11, #-24]
        b       .LBB1_10
.LBB1_15:
        ldr     r0, [sp, #40]
        ldr     r3, [r11, #-36]
        ldr     r1, [r0, #4]
        movw    r2, #0
        sub     r2, r2, r3
        add     r1, r1, r2
        str     r1, [r11, #-4]
        ldr     r1, [r11, #-4]
        str     r1, [r0, #4]
        ldr     r0, [r0, #4]
        str     r0, [r11, #-8]
        b       .LBB1_19
.LBB1_16:
        ldr     r0, [sp, #40]
        ldr     r0, [r0]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        ldr     r1, [sp, #40]
        str     r0, [r1, #4]
        sub     r0, r11, #28
        movw    r1, #0
        movw    r2, #4
        and     r1, r1, #255
        bl      memset
        movw    r0, #0
        str     r0, [r11, #-28]
.LBB1_18:
        ldr     r0, [r11, #-28]
        mov     sp, r11
        pop     {r11, pc}
.LBB1_19:
        ldr     r0, [sp, #40]
        ldr     r1, [r0, #4]
        mvn     r2, #0
        add     r1, r1, r2
        str     r1, [r11, #-12]
        ldr     r1, [r11, #-12]
        str     r1, [r0, #4]
        ldr     r0, [r0, #4]
        str     r0, [r11, #-16]
        ldr     r0, [r11, #-16]
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        str     r0, [r11, #-28]
        b       .LBB1_18

<core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #32
        str     r0, [sp, #12]
        ldr     r0, [r0]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #16]
        ldr     r0, [sp, #16]
        bl      core::ptr::mut_ptr::<impl *mut T>::is_null
        b       .LBB2_4
.LBB2_4:
        movw    r0, #1
        cmp     r0, #0
        bne     .LBB2_6
        b       .LBB2_9
.LBB2_6:
        ldr     r0, [sp, #12]
        ldr     r0, [r0, #4]
        bl      core::ptr::const_ptr::<impl *const T>::is_null
        b       .LBB2_9
.LBB2_9:
        ldr     r0, [sp, #12]
        ldr     r0, [r0]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        ldr     r1, [sp, #12]
        ldr     r1, [r1, #4]
        cmp     r0, r1
        beq     .LBB2_12
        ldr     r0, [sp, #12]
        ldr     r1, [r0, #4]
        mvn     r2, #0
        add     r1, r1, r2
        str     r1, [r11, #-4]
        ldr     r1, [r11, #-4]
        str     r1, [r0, #4]
        ldr     r0, [r0, #4]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        str     r0, [sp, #4]
        b       .LBB2_14
.LBB2_12:
        sub     r0, r11, #12
        movw    r1, #0
        movw    r2, #4
        and     r1, r1, #255
        bl      memset
        movw    r0, #0
        str     r0, [r11, #-12]
.LBB2_13:
        ldr     r0, [r11, #-12]
        mov     sp, r11
        pop     {r11, pc}
.LBB2_14:
        ldr     r0, [sp, #4]
        str     r0, [r11, #-12]
        b       .LBB2_13

<core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::ptr::unique::Unique<T>::as_ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r0, [sp]
        ldr     r0, [sp]
        mov     sp, r11
        pop     {r11, pc}

<core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      <T as core::convert::From<T>>::from
        mov     r0, #0
        str     r0, [sp, #4]
        str     r0, [sp]
        str     r0, [sp]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

<usize as core::default::Default>::default:
        movw    r0, #0
        bx      lr

core::fmt::Arguments::new_v1:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #64
        str     r3, [sp, #8]
        str     r2, [sp, #12]
        str     r1, [sp, #16]
        str     r0, [sp, #20]
        ldr     r0, [r11, #8]
        str     r0, [sp, #24]
        cmp     r2, r0
        blo     .LBB6_2
        ldr     r0, [sp, #12]
        ldr     r1, [sp, #24]
        add     r1, r1, #1
        cmp     r0, r1
        movw    r0, #0
        movhi   r0, #1
        and     r0, r0, #1
        strb    r0, [sp, #31]
        b       .LBB6_3
.LBB6_2:
        movw    r0, #1
        strb    r0, [sp, #31]
.LBB6_3:
        ldrb    r0, [sp, #31]
        tst     r0, #1
        bne     .LBB6_5
        sub     r0, r11, #8
        movw    r1, #0
        movw    r2, #8
        and     r1, r1, #255
        bl      memset
        ldr     r12, [sp, #16]
        ldr     r3, [sp, #12]
        ldr     r2, [sp, #8]
        ldr     r1, [sp, #20]
        ldr     r0, [sp, #24]
        movw    lr, #0
        str     lr, [r11, #-8]
        str     r12, [r1]
        str     r3, [r1, #4]
        ldr     r12, [r11, #-8]
        ldr     r3, [r11, #-4]
        str     r12, [r1, #8]
        str     r3, [r1, #12]
        str     r2, [r1, #16]
        str     r0, [r1, #20]
        mov     sp, r11
        pop     {r11, pc}
.LBB6_5:
        mov     r1, sp
        mov     r0, #0
        str     r0, [r1]
        ldr     r1, .LCPI6_0
.LPC6_0:
        add     r1, pc, r1
        ldr     r3, .LCPI6_1
.LPC6_1:
        add     r3, pc, r3
        add     r0, sp, #32
        mov     r2, #1
        bl      core::fmt::Arguments::new_v1
        ldr     r1, .LCPI6_2
.LPC6_2:
        add     r1, pc, r1
        add     r0, sp, #32
        bl      core::panicking::panic_fmt
        .inst   0xe7ffdefe
.LCPI6_0:
        .long   .L__unnamed_1-(.LPC6_0+8)
.LCPI6_1:
        .long   .L__unnamed_2-(.LPC6_1+8)
.LCPI6_2:
        .long   .L__unnamed_3-(.LPC6_2+8)

core::mem::take:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #8]
        bl      <usize as core::default::Default>::default
        str     r0, [r11, #-4]
        ldr     r1, [r11, #-4]
        ldr     r0, [sp, #8]
        bl      core::mem::replace
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::mem::replace:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [sp]
        str     r1, [sp, #4]
        mov     r1, #0
        strb    r1, [r11, #-9]
        mov     r1, #1
        strb    r1, [r11, #-9]
        bl      core::ptr::read
        str     r0, [sp, #8]
        b       .LBB8_3
.LBB8_1:
        ldrb    r0, [r11, #-9]
        tst     r0, #1
        bne     .LBB8_8
        b       .LBB8_7
        str     r0, [r11, #-8]
        str     r1, [r11, #-4]
        b       .LBB8_1
.LBB8_3:
        ldr     r1, [sp, #4]
        ldr     r0, [sp]
        mov     r2, #0
        strb    r2, [r11, #-9]
        bl      core::ptr::write
        b       .LBB8_6
.LBB8_4:
        b       .LBB8_1
        str     r0, [r11, #-8]
        str     r1, [r11, #-4]
        b       .LBB8_4
.LBB8_6:
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}
.LBB8_7:
        ldr     r0, [r11, #-8]
        bl      _Unwind_Resume
        .inst   0xe7ffdefe
.LBB8_8:
        b       .LBB8_7

core::num::nonzero::NonZeroUsize::new_unchecked:
        sub     sp, sp, #4
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #4
        bx      lr

core::num::nonzero::NonZeroUsize::get:
        bx      lr

core::ptr::slice_from_raw_parts:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #8]
        bl      core::ptr::const_ptr::<impl *const T>::cast
        str     r0, [r11, #-4]
        ldr     r1, [sp, #8]
        ldr     r0, [r11, #-4]
        bl      core::ptr::metadata::from_raw_parts
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::slice_from_raw_parts_mut:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        ldr     r1, [sp, #8]
        ldr     r0, [r11, #-4]
        bl      core::ptr::metadata::from_raw_parts_mut
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::drop_in_place<dyn example::Op>:
        push    {r11, lr}
        mov     r11, sp
        ldr     r1, [r1]
        blx     r1
        pop     {r11, pc}

core::ptr::read:
        sub     sp, sp, #16
        str     r0, [sp, #4]
        ldr     r0, [sp, #12]
        str     r0, [sp, #8]
        b       .LBB14_2
.LBB14_2:
        ldr     r0, [sp, #4]
        ldr     r0, [r0]
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #16
        bx      lr

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

core::ptr::write:
        sub     sp, sp, #8
        str     r1, [sp]
        mov     r1, r0
        ldr     r0, [sp]
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        str     r0, [r1]
        add     sp, sp, #8
        bx      lr

core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        mov     r1, r0
        str     r1, [sp, #4]
        ldr     r0, [r1]
        ldr     r1, [r1, #4]
        ldr     r1, [r1]
        blx     r1
        b       .LBB23_3
.LBB23_1:
        ldr     r1, [sp, #4]
        ldr     r0, [r1]
        ldr     r1, [r1, #4]
        bl      alloc::alloc::box_free
        b       .LBB23_5
        str     r0, [sp, #8]
        str     r1, [sp, #12]
        b       .LBB23_1
.LBB23_3:
        ldr     r1, [sp, #4]
        ldr     r0, [r1]
        ldr     r1, [r1, #4]
        bl      alloc::alloc::box_free
        b       .LBB23_6
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB23_5:
        ldr     r0, [sp, #8]
        bl      _Unwind_Resume
        .inst   0xe7ffdefe
.LBB23_6:
        mov     sp, r11
        pop     {r11, pc}

core::ptr::unique::Unique<T>::new_unchecked:
        sub     sp, sp, #4
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #4
        bx      lr

core::ptr::unique::Unique<T>::cast:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::ptr::unique::Unique<T>::as_ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        bl      core::ptr::unique::Unique<T>::new_unchecked
        str     r0, [sp]
        ldr     r0, [sp]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::unique::Unique<T>::as_ptr:
        bx      lr

core::ptr::unique::Unique<T>::as_ptr:
        bx      lr

core::ptr::unique::Unique<T>::as_ptr:
        bx      lr

core::ptr::unique::Unique<T>::as_ref:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        mov     r1, r0
        ldr     r0, [r1]
        ldr     r1, [r1, #4]
        bl      core::ptr::unique::Unique<T>::as_ptr
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq:
        sub     sp, sp, #8
        cmp     r0, r1
        movw    r0, #0
        moveq   r0, #1
        and     r0, r0, #1
        strb    r0, [sp, #7]
        ldrb    r0, [sp, #7]
        str     r0, [sp]
        ldr     r0, [sp]
        and     r0, r0, #1
        add     sp, sp, #8
        bx      lr

core::ptr::mut_ptr::<impl *mut T>::addr:
        bx      lr

core::ptr::mut_ptr::<impl *mut T>::is_null:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp, #4]
        b       .LBB32_1
.LBB32_1:
        ldr     r0, [sp, #4]
        movw    r1, #0
        bl      core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
        str     r0, [sp]
        ldr     r0, [sp]
        and     r0, r0, #1
        mov     sp, r11
        pop     {r11, pc}

core::ptr::mut_ptr::<impl *mut T>::is_null:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp, #4]
        b       .LBB33_1
.LBB33_1:
        ldr     r0, [sp, #4]
        movw    r1, #0
        bl      core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
        str     r0, [sp]
        ldr     r0, [sp]
        and     r0, r0, #1
        mov     sp, r11
        pop     {r11, pc}

core::ptr::metadata::from_raw_parts:
        sub     sp, sp, #16
        str     r0, [sp, #8]
        str     r1, [sp, #12]
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #16
        bx      lr

core::ptr::metadata::from_raw_parts_mut:
        sub     sp, sp, #16
        str     r0, [sp, #8]
        str     r1, [sp, #12]
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #16
        bx      lr

core::ptr::non_null::NonNull<T>::new_unchecked:
        sub     sp, sp, #4
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #4
        bx      lr

core::ptr::non_null::NonNull<T>::new_unchecked:
        sub     sp, sp, #4
        str     r0, [sp]
        ldr     r0, [sp]
        add     sp, sp, #4
        bx      lr

core::ptr::non_null::NonNull<T>::new_unchecked:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
        bx      lr

core::ptr::non_null::NonNull<T>::new:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #4]
        bl      core::ptr::mut_ptr::<impl *mut T>::is_null
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        mvn     r1, #0
        eor     r0, r0, r1
        tst     r0, #1
        bne     .LBB39_3
        sub     r0, r11, #4
        movw    r1, #0
        movw    r2, #4
        and     r1, r1, #255
        bl      memset
        movw    r0, #0
        str     r0, [r11, #-4]
        b       .LBB39_5
.LBB39_3:
        ldr     r0, [sp, #4]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r0, [sp]
        ldr     r0, [sp]
        str     r0, [r11, #-4]
.LBB39_5:
        ldr     r0, [r11, #-4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::non_null::NonNull<T>::as_ptr:
        bx      lr

core::ptr::non_null::NonNull<T>::as_ptr:
        bx      lr

core::ptr::non_null::NonNull<T>::as_ptr:
        bx      lr

core::ptr::non_null::NonNull<[T]>::as_mut_ptr:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::ptr::non_null::NonNull<[T]>::as_non_null_ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp]
        ldr     r0, [sp]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::non_null::NonNull<[T]>::as_non_null_ptr:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        str     r0, [sp, #8]
        ldr     r0, [sp, #8]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r1, [r11, #-8]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [r11, #-4]
        ldr     r1, [r11, #-8]
        ldr     r0, [r11, #-4]
        bl      core::ptr::slice_from_raw_parts_mut
        str     r1, [sp, #8]
        str     r0, [sp, #12]
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::ptr::const_ptr::<impl *const T>::guaranteed_eq:
        sub     sp, sp, #8
        cmp     r0, r1
        movw    r0, #0
        moveq   r0, #1
        and     r0, r0, #1
        strb    r0, [sp, #7]
        ldrb    r0, [sp, #7]
        str     r0, [sp]
        ldr     r0, [sp]
        and     r0, r0, #1
        add     sp, sp, #8
        bx      lr

core::ptr::const_ptr::<impl *const T>::addr:
        bx      lr

core::ptr::const_ptr::<impl *const T>::cast:
        bx      lr

core::ptr::const_ptr::<impl *const T>::is_null:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        str     r0, [sp, #4]
        b       .LBB49_1
.LBB49_1:
        ldr     r0, [sp, #4]
        movw    r1, #0
        bl      core::ptr::const_ptr::<impl *const T>::guaranteed_eq
        str     r0, [sp]
        ldr     r0, [sp]
        and     r0, r0, #1
        mov     sp, r11
        pop     {r11, pc}

core::iter::traits::iterator::Iterator::rev:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::iter::adapters::rev::Rev<T>::new
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::iter::traits::iterator::Iterator::skip:
        push    {r11, lr}
        mov     r11, sp
        bl      core::iter::adapters::skip::Skip<I>::new
        pop     {r11, pc}

core::iter::adapters::rev::Rev<T>::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
        bx      lr

core::iter::adapters::skip::Skip<I>::new:
        str     r1, [r0]
        str     r2, [r0, #4]
        str     r3, [r0, #8]
        bx      lr

core::alloc::layout::Layout::from_size_align_unchecked:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        bl      core::num::nonzero::NonZeroUsize::new_unchecked
        str     r0, [sp, #12]
        ldr     r0, [sp, #12]
        ldr     r1, [sp, #8]
        str     r1, [r11, #-8]
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-8]
        ldr     r1, [r11, #-4]
        mov     sp, r11
        pop     {r11, pc}

core::alloc::layout::Layout::size:
        ldr     r0, [r0]
        bx      lr

core::alloc::layout::Layout::align:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        ldr     r0, [r0, #4]
        bl      core::num::nonzero::NonZeroUsize::get
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::alloc::layout::Layout::dangling:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::alloc::layout::Layout::align
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r0, [sp]
        ldr     r0, [sp]
        mov     sp, r11
        pop     {r11, pc}

core::slice::<impl [T]>::iter:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::slice::iter::Iter<T>::new
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::slice::<impl [T]>::as_ptr:
        bx      lr

core::slice::raw::from_raw_parts:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      core::ptr::slice_from_raw_parts
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

core::slice::iter::Iter<T>::new:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #40
        str     r1, [sp, #12]
        bl      core::slice::<impl [T]>::as_ptr
        str     r0, [sp, #16]
        ldr     r0, [sp, #16]
        bl      core::ptr::const_ptr::<impl *const T>::is_null
        b       .LBB61_4
.LBB61_4:
        movw    r0, #1
        cmp     r0, #0
        bne     .LBB61_6
        ldr     r0, [sp, #16]
        ldr     r1, [sp, #12]
        add     r0, r0, r1
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        str     r0, [sp, #8]
        b       .LBB61_9
.LBB61_6:
        ldr     r0, [sp, #16]
        ldr     r1, [sp, #12]
        add     r0, r0, r1
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        str     r0, [r11, #-12]
        b       .LBB61_8
.LBB61_8:
        ldr     r0, [sp, #16]
        bl      core::ptr::non_null::NonNull<T>::new_unchecked
        str     r0, [sp, #4]
        b       .LBB61_10
.LBB61_9:
        ldr     r0, [sp, #8]
        str     r0, [r11, #-12]
        b       .LBB61_8
.LBB61_10:
        ldr     r1, [sp, #4]
        ldr     r0, [r11, #-12]
        str     r1, [sp, #20]
        str     r0, [sp, #24]
        ldr     r0, [sp, #20]
        ldr     r1, [sp, #24]
        mov     sp, r11
        pop     {r11, pc}

core::option::Option<T>::ok_or:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #4]
        mov     r0, #0
        strb    r0, [r11, #-1]
        mov     r0, #1
        strb    r0, [r11, #-1]
        ldr     r0, [sp, #4]
        cmp     r0, #0
        mov     r1, r0
        movwne  r1, #1
        cmp     r0, #0
        beq     .LBB62_3
        b       .LBB62_1
.LBB62_1:
        b       .LBB62_4
        .inst   0xe7ffdefe
.LBB62_3:
        movw    r0, #0
        strb    r0, [r11, #-1]
        add     r0, sp, #8
        movw    r1, #0
        movw    r2, #4
        and     r1, r1, #255
        bl      memset
        movw    r0, #0
        str     r0, [sp, #8]
        b       .LBB62_5
.LBB62_4:
        ldr     r0, [sp, #4]
        str     r0, [sp, #8]
.LBB62_5:
        ldrb    r0, [r11, #-1]
        tst     r0, #1
        bne     .LBB62_7
.LBB62_6:
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}
.LBB62_7:
        b       .LBB62_6

<T as core::convert::From<T>>::from:
        bx      lr

alloc::vec::Vec<T,A>::as_ptr:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      alloc::raw_vec::RawVec<T,A>::ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        bl      core::ptr::mut_ptr::<impl *mut T>::is_null
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

alloc::alloc::alloc_zeroed:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [r11, #-8]
        str     r1, [r11, #-4]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::size
        str     r0, [sp, #12]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::align
        str     r0, [sp, #8]
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        bl      __rust_alloc_zeroed
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

alloc::alloc::exchange_malloc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        bl      core::alloc::layout::Layout::from_size_align_unchecked
        str     r1, [sp, #8]
        str     r0, [sp, #12]
        ldr     r2, [sp, #8]
        ldr     r1, [sp, #12]
        ldr     r0, .LCPI66_0
.LPC66_0:
        add     r0, pc, r0
        bl      <alloc::alloc::Global as core::alloc::Allocator>::allocate
        str     r1, [r11, #-4]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        clz     r1, r0
        lsr     r1, r1, #5
        cmp     r0, #0
        bne     .LBB66_5
        b       .LBB66_3
.LBB66_3:
        b       .LBB66_6
        .inst   0xe7ffdefe
.LBB66_5:
        ldr     r0, [r11, #-8]
        ldr     r1, [r11, #-4]
        bl      core::ptr::non_null::NonNull<[T]>::as_mut_ptr
        str     r0, [sp, #4]
        b       .LBB66_7
.LBB66_6:
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        bl      alloc::alloc::handle_alloc_error
        .inst   0xe7ffdefe
.LBB66_7:
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}
.LCPI66_0:
        .long   .L__unnamed_2-(.LPC66_0+8)

alloc::alloc::alloc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [r11, #-8]
        str     r1, [r11, #-4]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::size
        str     r0, [sp, #12]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::align
        str     r0, [sp, #8]
        ldr     r1, [sp, #8]
        ldr     r0, [sp, #12]
        bl      __rust_alloc
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

alloc::alloc::Global::alloc_impl:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #64
        str     r3, [sp, #32]
        str     r1, [r11, #-24]
        str     r2, [r11, #-20]
        sub     r0, r11, #24
        bl      core::alloc::layout::Layout::size
        str     r0, [r11, #-28]
        ldr     r0, [r11, #-28]
        cmp     r0, #0
        bne     .LBB68_3
        sub     r0, r11, #24
        bl      core::alloc::layout::Layout::dangling
        str     r0, [sp, #28]
        b       .LBB68_20
.LBB68_3:
        ldr     r0, [sp, #32]
        tst     r0, #1
        bne     .LBB68_5
        b       .LBB68_4
.LBB68_4:
        ldr     r0, [r11, #-24]
        ldr     r1, [r11, #-20]
        bl      alloc::alloc::alloc
        str     r0, [r11, #-8]
        b       .LBB68_8
.LBB68_5:
        ldr     r0, [r11, #-24]
        ldr     r1, [r11, #-20]
        bl      alloc::alloc::alloc_zeroed
        str     r0, [r11, #-8]
        b       .LBB68_7
.LBB68_7:
        ldr     r0, [r11, #-8]
        bl      core::ptr::non_null::NonNull<T>::new
        str     r0, [sp, #24]
        b       .LBB68_9
.LBB68_8:
        b       .LBB68_7
.LBB68_9:
        ldr     r0, [sp, #24]
        bl      core::option::Option<T>::ok_or
        str     r0, [sp, #20]
        ldr     r0, [sp, #20]
        bl      <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        clz     r1, r0
        lsr     r1, r1, #5
        cmp     r0, #0
        bne     .LBB68_14
        b       .LBB68_12
.LBB68_12:
        b       .LBB68_15
        .inst   0xe7ffdefe
.LBB68_14:
        ldr     r1, [r11, #-28]
        ldr     r0, [r11, #-4]
        bl      core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
        str     r1, [sp, #12]
        str     r0, [sp, #16]
        b       .LBB68_18
.LBB68_15:
        ldr     r0, .LCPI68_0
.LPC68_0:
        add     r0, pc, r0
        bl      <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
        str     r1, [r11, #-12]
        str     r0, [r11, #-16]
        b       .LBB68_17
.LBB68_17:
        ldr     r0, [r11, #-16]
        ldr     r1, [r11, #-12]
        mov     sp, r11
        pop     {r11, pc}
.LBB68_18:
        ldr     r0, [sp, #12]
        ldr     r1, [sp, #16]
        str     r1, [r11, #-16]
        str     r0, [r11, #-12]
.LBB68_19:
        b       .LBB68_17
.LBB68_20:
        ldr     r0, [sp, #28]
        mov     r1, #0
        bl      core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
        str     r1, [sp, #4]
        str     r0, [sp, #8]
        ldr     r0, [sp, #4]
        ldr     r1, [sp, #8]
        str     r1, [r11, #-16]
        str     r0, [r11, #-12]
        b       .LBB68_19
.LCPI68_0:
        .long   .L__unnamed_4-(.LPC68_0+8)

alloc::alloc::dealloc:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #24
        str     r0, [sp, #8]
        str     r1, [r11, #-8]
        str     r2, [r11, #-4]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::size
        str     r0, [sp, #12]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::align
        str     r0, [sp, #4]
        ldr     r2, [sp, #4]
        ldr     r1, [sp, #12]
        ldr     r0, [sp, #8]
        bl      __rust_dealloc
        mov     sp, r11
        pop     {r11, pc}

alloc::alloc::box_free:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #72
        str     r0, [r11, #-28]
        str     r1, [r11, #-24]
        sub     r0, r11, #28
        bl      core::ptr::unique::Unique<T>::as_ref
        str     r1, [r11, #-32]
        b       .LBB70_3
.LBB70_1:
        b       .LBB70_11
        str     r0, [r11, #-16]
        str     r1, [r11, #-12]
        b       .LBB70_1
.LBB70_3:
        ldr     r0, [r11, #-32]
        ldr     r0, [r0, #4]
        str     r0, [r11, #-8]
        ldr     r0, [r11, #-8]
        str     r0, [sp, #36]
        sub     r0, r11, #28
        bl      core::ptr::unique::Unique<T>::as_ref
        str     r1, [sp, #32]
        b       .LBB70_5
.LBB70_5:
        ldr     r0, [sp, #32]
        ldr     r0, [r0, #8]
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        str     r0, [sp, #28]
        ldr     r1, [sp, #28]
        ldr     r0, [sp, #36]
        bl      core::alloc::layout::Layout::from_size_align_unchecked
        str     r1, [sp, #20]
        str     r0, [sp, #24]
        b       .LBB70_7
.LBB70_7:
        ldr     r0, [sp, #20]
        ldr     r1, [sp, #24]
        str     r1, [sp, #8]
        str     r0, [sp, #12]
        ldr     r0, [r11, #-28]
        ldr     r1, [r11, #-24]
        bl      core::ptr::unique::Unique<T>::cast
        str     r0, [sp, #16]
        b       .LBB70_8
.LBB70_8:
        ldr     r0, [sp, #16]
        bl      <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
        str     r0, [sp, #4]
        b       .LBB70_9
.LBB70_9:
        ldr     r3, [sp, #12]
        ldr     r2, [sp, #8]
        ldr     r1, [sp, #4]
        sub     r0, r11, #20
        bl      <alloc::alloc::Global as core::alloc::Allocator>::deallocate
        b       .LBB70_10
.LBB70_10:
        b       .LBB70_12
.LBB70_11:
        ldr     r0, [r11, #-16]
        bl      _Unwind_Resume
        .inst   0xe7ffdefe
.LBB70_12:
        mov     sp, r11
        pop     {r11, pc}

alloc::raw_vec::RawVec<T,A>::ptr:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        ldr     r0, [r0]
        bl      core::ptr::unique::Unique<T>::as_ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

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
        sub     sp, sp, #24
        str     r1, [sp, #8]
        str     r2, [r11, #-8]
        str     r3, [r11, #-4]
        sub     r0, r11, #8
        bl      core::alloc::layout::Layout::size
        str     r0, [sp, #12]
        ldr     r0, [sp, #12]
        cmp     r0, #0
        bne     .LBB73_3
        b       .LBB73_6
.LBB73_3:
        ldr     r0, [sp, #8]
        bl      core::ptr::non_null::NonNull<T>::as_ptr
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        ldr     r1, [r11, #-8]
        ldr     r2, [r11, #-4]
        bl      alloc::alloc::dealloc
        b       .LBB73_6
.LBB73_6:
        mov     sp, r11
        pop     {r11, pc}

<alloc::alloc::Global as core::alloc::Allocator>::allocate:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        mov     r3, #0
        bl      alloc::alloc::Global::alloc_impl
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

<alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #8]
        bl      alloc::vec::Vec<T,A>::as_ptr
        str     r0, [r11, #-4]
        ldr     r0, [r11, #-4]
        ldr     r1, [sp, #8]
        ldr     r1, [r1, #8]
        bl      core::slice::raw::from_raw_parts
        str     r1, [sp]
        str     r0, [sp, #4]
        ldr     r1, [sp]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

<core::result::Result<T,E> as core::ops::try_trait::Try>::branch:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        clz     r1, r0
        lsr     r1, r1, #5
        cmp     r0, #0
        bne     .LBB76_3
        b       .LBB76_1
.LBB76_1:
        b       .LBB76_4
        .inst   0xe7ffdefe
.LBB76_3:
        ldr     r0, [sp, #4]
        str     r0, [sp, #8]
        b       .LBB76_5
.LBB76_4:
        add     r0, sp, #8
        movw    r1, #0
        movw    r2, #4
        and     r1, r1, #255
        bl      memset
        movw    r0, #0
        str     r0, [sp, #8]
.LBB76_5:
        ldr     r0, [sp, #8]
        mov     sp, r11
        pop     {r11, pc}

<core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::nth:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::nth_back
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

<core::iter::adapters::rev::Rev<I> as core::iter::traits::iterator::Iterator>::next:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        bl      <core::slice::iter::Iter<T> as core::iter::traits::double_ended::DoubleEndedIterator>::next_back
        str     r0, [sp, #4]
        ldr     r0, [sp, #4]
        mov     sp, r11
        pop     {r11, pc}

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
        bne     .LBB80_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB80_2:
        ldr     r0, .LCPI80_0
.LPC80_0:
        add     r0, pc, r0
        ldr     r2, .LCPI80_1
.LPC80_1:
        add     r2, pc, r2
        mov     r1, #28
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI80_0:
        .long   str.0-(.LPC80_0+8)
.LCPI80_1:
        .long   .L__unnamed_5-(.LPC80_1+8)

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
        bne     .LBB81_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB81_2:
        ldr     r0, .LCPI81_0
.LPC81_0:
        add     r0, pc, r0
        ldr     r2, .LCPI81_1
.LPC81_1:
        add     r2, pc, r2
        mov     r1, #33
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI81_0:
        .long   str.1-(.LPC81_0+8)
.LCPI81_1:
        .long   .L__unnamed_6-(.LPC81_1+8)

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
        bne     .LBB82_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB82_2:
        ldr     r0, .LCPI82_0
.LPC82_0:
        add     r0, pc, r0
        ldr     r2, .LCPI82_1
.LPC82_1:
        add     r2, pc, r2
        mov     r1, #33
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI82_0:
        .long   str.2-(.LPC82_0+8)
.LCPI82_1:
        .long   .L__unnamed_7-(.LPC82_1+8)

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
        bne     .LBB83_2
        ldr     r0, [sp, #4]
        ldr     r0, [r0]
        movw    r1, #2
        bl      __aeabi_idiv
        ldr     r1, [sp, #4]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB83_2:
        ldr     r0, .LCPI83_0
.LPC83_0:
        add     r0, pc, r0
        ldr     r2, .LCPI83_1
.LPC83_1:
        add     r2, pc, r2
        mov     r1, #31
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI83_0:
        .long   str.3-(.LPC83_0+8)
.LCPI83_1:
        .long   .L__unnamed_8-(.LPC83_1+8)

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
        bne     .LBB84_2
        ldr     r0, [sp, #4]
        ldr     r1, [sp]
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB84_2:
        ldr     r0, .LCPI84_0
.LPC84_0:
        add     r0, pc, r0
        ldr     r2, .LCPI84_1
.LPC84_1:
        add     r2, pc, r2
        mov     r1, #28
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI84_0:
        .long   str.0-(.LPC84_0+8)
.LCPI84_1:
        .long   .L__unnamed_9-(.LPC84_1+8)

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
        bne     .LBB85_2
        ldr     r1, [sp]
        ldr     r2, [sp, #4]
        movw    r0, #0
        sub     r0, r0, r2
        str     r0, [r1]
        mov     sp, r11
        pop     {r11, pc}
.LBB85_2:
        ldr     r0, .LCPI85_0
.LPC85_0:
        add     r0, pc, r0
        ldr     r2, .LCPI85_1
.LPC85_1:
        add     r2, pc, r2
        mov     r1, #31
        bl      core::panicking::panic
        .inst   0xe7ffdefe
.LCPI85_0:
        .long   str.4-(.LPC85_0+8)
.LCPI85_1:
        .long   .L__unnamed_10-(.LPC85_1+8)

example::State::empty:
        bx      lr

<example::dispatch_markers::Empty as example::Op>::call:
        bx      lr

example::generate_dynamic_dispatch_code:
        push    {r4, r5, r11, lr}
        add     r11, sp, #8
        sub     sp, sp, #384
        str     r0, [sp, #188]
        mov     r0, #0
        strb    r0, [r11, #-121]
        mov     r1, #1
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #192]
        b       .LBB88_2
        str     r0, [r11, #-64]
        str     r1, [r11, #-60]
        ldr     r0, [r11, #-64]
        str     r0, [sp, #184]
        b       .LBB88_74
.LBB88_2:
        ldr     r0, [sp, #192]
        str     r0, [sp, #180]
        ldr     r0, [sp, #188]
        ldr     r1, [sp, #180]
        mov     r2, #1
        strb    r2, [r11, #-121]
        str     r1, [sp, #196]
        ldr     r1, .LCPI88_6
.LPC88_6:
        add     r1, pc, r1
        str     r1, [sp, #200]
        bl      <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
        str     r1, [sp, #172]
        str     r0, [sp, #176]
        b       .LBB88_12
.LBB88_4:
        ldrb    r0, [r11, #-121]
        tst     r0, #1
        bne     .LBB88_72
        b       .LBB88_71
        str     r0, [sp, #164]
        str     r1, [sp, #168]
        b       .LBB88_6
.LBB88_6:
        ldr     r1, [sp, #164]
        ldr     r0, [sp, #168]
        str     r1, [sp, #156]
        str     r0, [sp, #160]
        b       .LBB88_7
.LBB88_7:
        ldr     r1, [sp, #156]
        ldr     r0, [sp, #160]
        str     r1, [sp, #148]
        str     r0, [sp, #152]
        b       .LBB88_8
.LBB88_8:
        ldr     r1, [sp, #148]
        ldr     r0, [sp, #152]
        str     r1, [sp, #140]
        str     r0, [sp, #144]
        b       .LBB88_9
.LBB88_9:
        ldr     r1, [sp, #140]
        ldr     r0, [sp, #144]
        str     r1, [sp, #132]
        str     r0, [sp, #136]
        b       .LBB88_10
.LBB88_10:
        ldr     r1, [sp, #132]
        ldr     r0, [sp, #136]
        str     r1, [sp, #124]
        str     r0, [sp, #128]
        b       .LBB88_11
.LBB88_11:
        ldr     r1, [sp, #124]
        ldr     r0, [sp, #128]
        str     r1, [r11, #-120]
        str     r0, [r11, #-116]
        b       .LBB88_4
.LBB88_12:
        ldr     r1, [sp, #172]
        ldr     r0, [sp, #176]
        bl      core::slice::<impl [T]>::iter
        str     r1, [sp, #116]
        str     r0, [sp, #120]
        b       .LBB88_13
.LBB88_13:
        ldr     r1, [sp, #116]
        ldr     r0, [sp, #120]
        bl      core::iter::traits::iterator::Iterator::rev
        str     r1, [sp, #108]
        str     r0, [sp, #112]
        b       .LBB88_14
.LBB88_14:
        ldr     r2, [sp, #108]
        ldr     r1, [sp, #112]
        sub     r0, r11, #176
        mov     r3, #1
        bl      core::iter::traits::iterator::Iterator::skip
        b       .LBB88_15
.LBB88_15:
        sub     r0, r11, #188
        sub     r1, r11, #176
        bl      <I as core::iter::traits::collect::IntoIterator>::into_iter
        b       .LBB88_16
.LBB88_16:
        ldr     r0, [r11, #-188]
        str     r0, [r11, #-164]
        ldr     r0, [r11, #-184]
        str     r0, [r11, #-160]
        ldr     r0, [r11, #-180]
        str     r0, [r11, #-156]
.LBB88_17:
        sub     r0, r11, #164
        bl      <core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::next
        str     r0, [sp, #104]
        b       .LBB88_18
.LBB88_18:
        ldr     r0, [sp, #104]
        str     r0, [r11, #-152]
        ldr     r0, [r11, #-152]
        cmp     r0, #0
        mov     r1, r0
        movwne  r1, #1
        cmp     r0, #0
        beq     .LBB88_21
        b       .LBB88_19
.LBB88_19:
        b       .LBB88_22
        .inst   0xe7ffdefe
.LBB88_21:
        mov     r2, #0
        strb    r2, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        strb    r2, [r11, #-121]
        sub     sp, r11, #8
        pop     {r4, r5, r11, pc}
.LBB88_22:
        ldr     r0, [r11, #-152]
        ldrb    r0, [r0]
        str     r0, [sp, #100]
        ldr     r1, [sp, #100]
        adr     r0, .LJTI88_0
        ldr     r1, [r0, r1, lsl #2]
        add     pc, r0, r1
.LJTI88_0:
        .long   .LBB88_26-.LJTI88_0
        .long   .LBB88_27-.LJTI88_0
        .long   .LBB88_28-.LJTI88_0
        .long   .LBB88_29-.LJTI88_0
        .long   .LBB88_30-.LJTI88_0
        .long   .LBB88_31-.LJTI88_0
        .long   .LBB88_32-.LJTI88_0
        .inst   0xe7ffdefe
.LBB88_26:
        mov     r1, sp
        mov     r0, #0
        str     r0, [r1]
        ldr     r1, .LCPI88_7
.LPC88_7:
        add     r1, pc, r1
        ldr     r3, .LCPI88_8
.LPC88_8:
        add     r3, pc, r3
        sub     r0, r11, #148
        mov     r2, #1
        bl      core::fmt::Arguments::new_v1
        b       .LBB88_69
.LBB88_27:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Inc::new
        str     r1, [sp, #92]
        str     r0, [sp, #96]
        b       .LBB88_63
.LBB88_28:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Dec::new
        str     r1, [sp, #84]
        str     r0, [sp, #88]
        b       .LBB88_57
.LBB88_29:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Div2::new
        str     r1, [sp, #76]
        str     r0, [sp, #80]
        b       .LBB88_51
.LBB88_30:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Mul2::new
        str     r1, [sp, #68]
        str     r0, [sp, #72]
        b       .LBB88_45
.LBB88_31:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Add7::new
        str     r1, [sp, #60]
        str     r0, [sp, #64]
        b       .LBB88_39
.LBB88_32:
        mov     r0, #0
        strb    r0, [r11, #-121]
        ldr     r0, [sp, #196]
        ldr     r1, [sp, #200]
        bl      example::dispatch_markers::Neg::new
        str     r1, [sp, #52]
        str     r0, [sp, #56]
        b       .LBB88_33
.LBB88_33:
        ldr     r0, [sp, #52]
        ldr     r1, [sp, #56]
        str     r1, [r11, #-96]
        str     r0, [r11, #-92]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #48]
        b       .LBB88_37
        str     r0, [r11, #-88]
        str     r1, [r11, #-84]
        sub     r0, r11, #96
        bl      core::ptr::drop_in_place<example::dispatch_markers::Neg>
        b       .LBB88_36
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_36:
        ldr     r1, [r11, #-88]
        ldr     r0, [r11, #-84]
        str     r1, [sp, #132]
        str     r0, [sp, #136]
        b       .LBB88_10
.LBB88_37:
        ldr     r1, [sp, #48]
        mov     r0, r1
        str     r0, [sp, #44]
        ldr     r2, [r11, #-96]
        ldr     r0, [r11, #-92]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #44]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_0
.LPC88_0:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_39:
        ldr     r0, [sp, #60]
        ldr     r1, [sp, #64]
        str     r1, [r11, #-40]
        str     r0, [r11, #-36]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #40]
        b       .LBB88_43
        str     r0, [r11, #-32]
        str     r1, [r11, #-28]
        sub     r0, r11, #40
        bl      core::ptr::drop_in_place<example::dispatch_markers::Add7>
        b       .LBB88_42
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_42:
        ldr     r1, [r11, #-32]
        ldr     r0, [r11, #-28]
        str     r1, [sp, #156]
        str     r0, [sp, #160]
        b       .LBB88_7
.LBB88_43:
        ldr     r1, [sp, #40]
        mov     r0, r1
        str     r0, [sp, #36]
        ldr     r2, [r11, #-40]
        ldr     r0, [r11, #-36]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #36]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_1
.LPC88_1:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_45:
        ldr     r0, [sp, #68]
        ldr     r1, [sp, #72]
        str     r1, [r11, #-56]
        str     r0, [r11, #-52]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #32]
        b       .LBB88_49
        str     r0, [r11, #-48]
        str     r1, [r11, #-44]
        sub     r0, r11, #56
        bl      core::ptr::drop_in_place<example::dispatch_markers::Mul2>
        b       .LBB88_48
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_48:
        ldr     r1, [r11, #-48]
        ldr     r0, [r11, #-44]
        str     r1, [sp, #148]
        str     r0, [sp, #152]
        b       .LBB88_8
.LBB88_49:
        ldr     r1, [sp, #32]
        mov     r0, r1
        str     r0, [sp, #28]
        ldr     r2, [r11, #-56]
        ldr     r0, [r11, #-52]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #28]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_2
.LPC88_2:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_51:
        ldr     r0, [sp, #76]
        ldr     r1, [sp, #80]
        str     r1, [r11, #-24]
        str     r0, [r11, #-20]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #24]
        b       .LBB88_55
        str     r0, [r11, #-16]
        str     r1, [r11, #-12]
        sub     r0, r11, #24
        bl      core::ptr::drop_in_place<example::dispatch_markers::Div2>
        b       .LBB88_54
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_54:
        ldr     r1, [r11, #-16]
        ldr     r0, [r11, #-12]
        str     r1, [sp, #164]
        str     r0, [sp, #168]
        b       .LBB88_6
.LBB88_55:
        ldr     r1, [sp, #24]
        mov     r0, r1
        str     r0, [sp, #20]
        ldr     r2, [r11, #-24]
        ldr     r0, [r11, #-20]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #20]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_3
.LPC88_3:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_57:
        ldr     r0, [sp, #84]
        ldr     r1, [sp, #88]
        str     r1, [r11, #-80]
        str     r0, [r11, #-76]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #16]
        b       .LBB88_61
        str     r0, [r11, #-72]
        str     r1, [r11, #-68]
        sub     r0, r11, #80
        bl      core::ptr::drop_in_place<example::dispatch_markers::Dec>
        b       .LBB88_60
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_60:
        ldr     r1, [r11, #-72]
        ldr     r0, [r11, #-68]
        str     r1, [sp, #140]
        str     r0, [sp, #144]
        b       .LBB88_9
.LBB88_61:
        ldr     r1, [sp, #16]
        mov     r0, r1
        str     r0, [sp, #12]
        ldr     r2, [r11, #-80]
        ldr     r0, [r11, #-76]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #12]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_4
.LPC88_4:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_63:
        ldr     r0, [sp, #92]
        ldr     r1, [sp, #96]
        str     r1, [r11, #-112]
        str     r0, [r11, #-108]
        mov     r0, #8
        mov     r1, #4
        bl      alloc::alloc::exchange_malloc
        str     r0, [sp, #8]
        b       .LBB88_67
        str     r0, [r11, #-104]
        str     r1, [r11, #-100]
        sub     r0, r11, #112
        bl      core::ptr::drop_in_place<example::dispatch_markers::Inc>
        b       .LBB88_66
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_66:
        ldr     r1, [r11, #-104]
        ldr     r0, [r11, #-100]
        str     r1, [sp, #124]
        str     r0, [sp, #128]
        b       .LBB88_11
.LBB88_67:
        ldr     r1, [sp, #8]
        mov     r0, r1
        str     r0, [sp, #4]
        ldr     r2, [r11, #-112]
        ldr     r0, [r11, #-108]
        str     r2, [r1]
        str     r0, [r1, #4]
        ldr     r0, [sp, #4]
        movw    r1, #1
        strb    r1, [r11, #-121]
        str     r0, [sp, #196]
        ldr     r0, .LCPI88_5
.LPC88_5:
        add     r0, pc, r0
        str     r0, [sp, #200]
        b       .LBB88_17
.LBB88_69:
        ldr     r1, .LCPI88_9
.LPC88_9:
        add     r1, pc, r1
        sub     r0, r11, #148
        bl      core::panicking::panic_fmt
        b       .LBB88_70
.LBB88_70:
        .inst   0xe7ffdefe
.LBB88_71:
        ldr     r0, [r11, #-120]
        str     r0, [sp, #184]
        b       .LBB88_74
.LBB88_72:
        add     r0, sp, #196
        bl      core::ptr::drop_in_place<alloc::boxed::Box<dyn example::Op>>
        b       .LBB88_71
        bl      core::panicking::panic_no_unwind
        .inst   0xe7ffdefe
.LBB88_74:
        ldr     r0, [sp, #184]
        bl      _Unwind_Resume
        .inst   0xe7ffdefe
.LCPI88_0:
        .long   .L__unnamed_11-(.LPC88_0+8)
.LCPI88_1:
        .long   .L__unnamed_12-(.LPC88_1+8)
.LCPI88_2:
        .long   .L__unnamed_13-(.LPC88_2+8)
.LCPI88_3:
        .long   .L__unnamed_14-(.LPC88_3+8)
.LCPI88_4:
        .long   .L__unnamed_15-(.LPC88_4+8)
.LCPI88_5:
        .long   .L__unnamed_16-(.LPC88_5+8)
.LCPI88_6:
        .long   .L__unnamed_17-(.LPC88_6+8)
.LCPI88_7:
        .long   .L__unnamed_18-(.LPC88_7+8)
.LCPI88_8:
        .long   .L__unnamed_2-(.LPC88_8+8)
.LCPI88_9:
        .long   .L__unnamed_19-(.LPC88_9+8)

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
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
        bx      lr

<example::dispatch_markers::Inc as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::inc
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Dec::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
        bx      lr

<example::dispatch_markers::Dec as example::Op>::call:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #16
        str     r1, [sp, #4]
        mov     r1, r0
        ldr     r0, [sp, #4]
        str     r1, [sp, #8]
        str     r0, [r11, #-4]
        bl      example::State::dec
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Mul2::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
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
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Div2::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
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
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Add7::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
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
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

example::dispatch_markers::Neg::new:
        sub     sp, sp, #8
        str     r0, [sp]
        str     r1, [sp, #4]
        ldr     r0, [sp]
        ldr     r1, [sp, #4]
        add     sp, sp, #8
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
        ldr     r1, [r11, #-4]
        ldr     r2, [sp, #8]
        ldr     r0, [r2]
        ldr     r2, [r2, #4]
        ldr     r2, [r2, #12]
        blx     r2
        mov     sp, r11
        pop     {r11, pc}

.L__unnamed_20:
        .ascii  "invalid args"

.L__unnamed_1:
        .long   .L__unnamed_20
        .asciz  "\f\000\000"

.L__unnamed_2:

.L__unnamed_21:
        .ascii  "/rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/fmt/mod.rs"

.L__unnamed_3:
        .long   .L__unnamed_21
        .asciz  "K\000\000\000\205\001\000\000\r\000\000"

.L__unnamed_24:
        .ascii  "/rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs"

.L__unnamed_4:
        .long   .L__unnamed_24
        .asciz  "J\000\000\000\254\000\000\000\033\000\000"

.L__unnamed_25:
        .ascii  "/app/example.rs"

.L__unnamed_5:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000\025\000\000\000\t\000\000"

str.0:
        .ascii  "attempt to add with overflow"

.L__unnamed_6:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000\030\000\000\000\t\000\000"

str.1:
        .ascii  "attempt to subtract with overflow"

.L__unnamed_7:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000\033\000\000\000\t\000\000"

str.2:
        .ascii  "attempt to multiply with overflow"

.L__unnamed_8:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000\036\000\000\000\t\000\000"

str.3:
        .ascii  "attempt to divide with overflow"

.L__unnamed_9:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000!\000\000\000\t\000\000"

.L__unnamed_10:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000$\000\000\000\024\000\000"

str.4:
        .ascii  "attempt to negate with overflow"

.L__unnamed_17:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Empty>
        .asciz  "\000\000\000\000\001\000\000"
        .long   <example::dispatch_markers::Empty as example::Op>::call

.L__unnamed_11:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Neg>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Neg as example::Op>::call

.L__unnamed_12:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Add7>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Add7 as example::Op>::call

.L__unnamed_13:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Mul2>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Mul2 as example::Op>::call

.L__unnamed_14:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Div2>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Div2 as example::Op>::call

.L__unnamed_15:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Dec>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Dec as example::Op>::call

.L__unnamed_16:
        .long   core::ptr::drop_in_place<example::dispatch_markers::Inc>
        .asciz  "\b\000\000\000\004\000\000"
        .long   <example::dispatch_markers::Inc as example::Op>::call

.L__unnamed_26:
        .ascii  "UNEXPECTED END!!!"

.L__unnamed_18:
        .long   .L__unnamed_26
        .asciz  "\021\000\000"

.L__unnamed_19:
        .long   .L__unnamed_25
        .asciz  "\017\000\000\000g\000\000\000 \000\000"

__rustc_debug_gdb_scripts_section__:
        .asciz  "\001gdb_load_rust_pretty_printers.py"