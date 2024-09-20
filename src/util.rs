/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/

use crate::bytecode::{random_bytecode, ByteCode};

pub fn generate_bytecode(lenght: usize) -> Vec<ByteCode> {
    let mut code = vec![ByteCode::EMPTY; lenght];

    for idx in 0..lenght - 1 {
        code[idx] = random_bytecode();
    }

    code
}
