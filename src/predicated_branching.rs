/*
    VM Research

    using predicates / wish branching

    still WIP.

    Need to rethink the implementation,
    cool idea tho.

    Plan failed due to current implementation
    having too much function call overhead.

    Probably a good idea for future.

    Author: MrMouse2405
    Date:   Sep 13,2024
*/

use crate::bytecode::ByteCode;

fn inc(v: i32) -> i32 {
    v + 1
}

fn inc_dec(v: &mut i32, dec: fn(i32) -> i32) {
    *v += 1;
}

fn dec(v: i32) -> i32 {
    v - 1
}

fn neg(v: i32) -> i32 {
    -v
}

fn mul2(v: i32) -> i32 {
    v * 2
}

fn div2(v: i32) -> i32 {
    v / 2
}

fn add7(v: i32) -> i32 {
    v + 7
}

fn empty(v: i32) -> i32 {
    v
}

pub fn interpreter_predicated_init(code: &Vec<ByteCode>) -> Vec<Box<dyn Fn(i32) -> i32>> {
    let mut vm_code: Vec<Box<dyn Fn(i32) -> i32>> = Vec::with_capacity(code.len());

    for bytecode in code {
        match bytecode {
            ByteCode::INC => vm_code.push(Box::new(inc)),
            ByteCode::DEC => vm_code.push(Box::new(dec)),
            ByteCode::MUL2 => vm_code.push(Box::new(mul2)),
            ByteCode::DIV2 => vm_code.push(Box::new(div2)),
            ByteCode::ADD7 => vm_code.push(Box::new(add7)),
            ByteCode::NEG => vm_code.push(Box::new(neg)),
            ByteCode::EMPTY => vm_code.push(Box::new(empty)),
        }
    }

    vm_code
}

pub fn interpeter_predicated(vm_code: &Vec<Box<dyn Fn(i32) -> i32>>, init_val: i32) -> i32 {
    let mut val = init_val;

    for instructions in vm_code {
        val = instructions(val);
    }

    // incase there is zero code
    return val;
}
