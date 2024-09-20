/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/
use rand::{self, Rng};

#[derive(Copy, Clone, Debug)]
pub enum ByteCode {
    EMPTY = 0,
    INC = 1,
    DEC = 2,
    DIV2 = 3,
    MUL2 = 4,
    ADD7 = 5,
    NEG = 6,
}

pub fn map_into(b: ByteCode) -> i32 {
    match b {
        ByteCode::EMPTY => 0,
        ByteCode::INC => 1,
        ByteCode::DEC => 2,
        ByteCode::DIV2 => 3,
        ByteCode::MUL2 => 4,
        ByteCode::ADD7 => 5,
        ByteCode::NEG => 6,
    }
}

pub fn map_outof(i: i32) -> ByteCode {
    match i {
        1 => ByteCode::INC,
        2 => ByteCode::DEC,
        3 => ByteCode::DIV2,
        4 => ByteCode::MUL2,
        5 => ByteCode::ADD7,
        6 => ByteCode::NEG,
        _ => ByteCode::EMPTY,
    }
}

// eh, just syntax sugar, let b : ByteCode = random() will assign a random bytecode lmao, I might as well..., huh, idk
pub fn random_bytecode() -> ByteCode {
    map_outof(rand::thread_rng().gen_range(1..6))
}
