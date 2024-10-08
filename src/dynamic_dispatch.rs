/*
    VM Research

    It's kinda hard to figure out Tail Recursive Optimization
    in rust, I will try to reimplement this in C, if we can
    achieve that, I believe we should be able to close to
    native speed.

    Look at dynamic_dispatch_asm.asm (generated by godbolt).

    You can see that the operation inc,dec, et. al follow the
    same stack format. If we can use tail recursive optimization
    there, and reuse the same stack, we can achieve this.

    Explanation for logic:
    Each operation, holds the pointer to next operation.
    This way, branch predictor knows exactly what function to call next.

    Problem:
    There is a large overhead of function calls, and setting up stacks,
    and vtable generation and etc.

    We are currently trying to reimplement this method in C, and then
    see how we can re-implement it in rust after we have figured out a
    structure.

    Author: MrMouse2405
    Date:   Sep 13,2024
*/
use crate::bytecode::ByteCode;

pub struct State {
    val: i32,
}

// interpreter functions
impl State {
    pub fn new(val: i32) -> Self {
        State { val }
    }
    pub fn inc(&mut self) {
        self.val += 1;
    }
    pub fn dec(&mut self) {
        self.val -= 1;
    }
    pub fn mul2(&mut self) {
        self.val *= 2;
    }
    pub fn div2(&mut self) {
        self.val /= 2;
    }
    pub fn add7(&mut self) {
        self.val += 7;
    }
    pub fn neg(&mut self) {
        self.val = -self.val;
    }
    pub fn empty(&mut self) {}
}

// Interpreter VTable
pub trait Op {
    fn call(&self, state: &mut State);
}

pub type DispatchType = Box<dyn Op>;

mod dispatch_markers {
    macro_rules! DispatchMarker {
        ($struct_name:ident, $call:ident) => {
            // Dispatch Method
            pub struct $struct_name {
                pub next: Box<dyn super::Op>,
            }
            impl $struct_name {
                pub fn new(next: Box<dyn super::Op>) -> Self {
                    Self { next: next }
                }
            }
            impl super::Op for $struct_name {
                #[inline(always)]
                fn call(&self, state: &mut super::State) {
                    state.$call();
                    self.next.call(state);
                }
            }
        };
    }
    DispatchMarker!(Inc, inc);
    DispatchMarker!(Dec, dec);
    DispatchMarker!(Mul2, mul2);
    DispatchMarker!(Div2, div2);
    DispatchMarker!(Add7, add7);
    DispatchMarker!(Neg, neg);
    pub struct Empty;
    impl super::Op for Empty {
        // Action
        #[inline(always)]
        fn call(&self, _: &mut super::State) {}
    }
}

pub fn generate_dynamic_dispatch_code(code: &Vec<ByteCode>) -> DispatchType {
    let mut last_code: Box<dyn Op> = Box::new(dispatch_markers::Empty {});

    macro_rules! make_dispatch {
        ($name:ident) => {{
            let next_dispatch = Box::new(dispatch_markers::$name::new(last_code));
            last_code = next_dispatch;
        }};
    }

    for bytecode in code.iter().rev().skip(1) {
        match bytecode {
            ByteCode::INC => make_dispatch!(Inc),
            ByteCode::DEC => make_dispatch!(Dec),
            ByteCode::MUL2 => make_dispatch!(Mul2),
            ByteCode::DIV2 => make_dispatch!(Div2),
            ByteCode::ADD7 => make_dispatch!(Add7),
            ByteCode::NEG => make_dispatch!(Neg),
            ByteCode::EMPTY => panic!("UNEXPECTED END!!!"),
        }
    }

    last_code
}

pub fn interpreter_dynamic_dispatch(code: &DispatchType, init_val: i32) -> i32 {
    let mut state = State { val: init_val };
    code.call(&mut state);
    state.val
}
