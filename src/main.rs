/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/

use vm_research::computed_goto::interpeter_computed_goto;
use vm_research::generate_bytecode;
use vm_research::interpeter_predicated;
use vm_research::interpeter_switch;

fn main() {
    let code = generate_bytecode(10);
    println!("{:?}", code);
    println!("{}", interpeter_switch(&code, 0));
    println!("{}", interpeter_computed_goto(&code, 0));
    let code = vm_research::predicated_branching::interpreter_predicated_init(&code);
    println!("{}", interpeter_predicated(&code, 0));
}
