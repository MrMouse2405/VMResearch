use VMResearch::generate_bytecode;
use VMResearch::interpeter_switch;

fn main() {
    let code = generate_bytecode(10);
    println!("{:?}",code);
    println!("{}",interpeter_switch(&code, 0));
}
