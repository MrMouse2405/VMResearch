/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/

use crate::bytecode::ByteCode;

/*

    Q: Why is this faster than vm_research::interpreter_switchcase()?
    A: Here,
    LLVM is effectively replacing the continue statements with copies of the
    indirect branch at the top of the loop. It could also do that with the
    indirect branch that is inherent in a switch; it chooses to not do that
    for code size reasons.

    So, LLVM can transform back and forth between having a single indirect
    branch at the top of the loop, or having individual indirect branches at
    the end of each opcode handler. It can do this whether you write your source
    code using a normal switch statement or a computed goto.

*/

pub fn interpeter_computed_goto(code: &Vec<ByteCode>, init_val: i32) -> i32 {
    let mut val = init_val;
    let mut idx = 0;

    loop {
        let bytecode = code[idx];
        idx += 1;
        match bytecode {
            ByteCode::INC => {
                val += 1;
                continue;
            }
            ByteCode::DEC => {
                val -= 1;
                continue;
            }
            ByteCode::MUL2 => {
                val *= 2;
                continue;
            }
            ByteCode::DIV2 => {
                val /= 2;
                continue;
            }
            ByteCode::ADD7 => {
                val += 7;
                continue;
            }
            ByteCode::NEG => {
                val = -val;
                continue;
            }
            _ => break val,
        };
    }
}
