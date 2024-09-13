use crate::bytecode::ByteCode;

pub fn interpeter_switch(code : &[ByteCode], init_val : i32) -> i32 {

    let mut val = init_val;

    for bytecode in code {

        match bytecode {
            ByteCode::HALT => return val,
            ByteCode::INC  => val += 1,
            ByteCode::DEC  => val -= 1,
            ByteCode::MUL2 => val *= 2,
            ByteCode::DIV2 => val /= 2,
            ByteCode::ADD7 => val += 7,
            ByteCode::NEG  => val = -val, 
            _ => return val,
            
        }

    }
    
    // incase there is zero code
    return val;

}