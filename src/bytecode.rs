use rand::distributions::{Distribution,Standard};
use rand::Rng;

#[derive(Copy,Clone,Debug)]
pub enum ByteCode {
    EMPTY=0,
    HALT=1,
    INC=2,
    DEC=3,
    DIV2=4,
    MUL2=5,
    ADD7=6,
    NEG=7, 
}

impl Distribution<ByteCode> for Standard {
    fn sample<R: Rng + ?Sized>(&self, rng: &mut R) -> ByteCode {
        match rng.gen_range(0..7) {
            0 => ByteCode::EMPTY,
            1 => ByteCode::HALT,
            2 => ByteCode::INC,
            3 => ByteCode::DEC,
            4 => ByteCode::DIV2,
            5 => ByteCode::MUL2,
            6 => ByteCode::ADD7,
            7 => ByteCode::NEG,
            _ => ByteCode::EMPTY,
        }
    }
}