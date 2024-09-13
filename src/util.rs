use rand::random;
use crate::bytecode::ByteCode;

pub fn generate_bytecode(lenght : usize)->Vec<ByteCode>{
    let mut code = vec![ByteCode::EMPTY; lenght];
    for c in code.iter_mut() {
        *c = random();
    }
    code
}