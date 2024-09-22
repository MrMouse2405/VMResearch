/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/

use vm_research::computed_goto::interpeter_computed_goto;
use vm_research::dynamic_dispatch::generate_dynamic_dispatch_code;
use vm_research::dynamic_dispatch::interpreter_dynamic_dispatch;
use vm_research::dynamic_dispatch::DispatchType;
use vm_research::generate_bytecode;
// use vm_research::interpeter_predicated;
use vm_research::interpeter_switch;

fn main() {
    let code = generate_bytecode(100);
    // println!("{:?}", code);

    // switch
    println!("{}", interpeter_switch(&code, 0));

    // goto
    println!("{}", interpeter_computed_goto(&code, 0));

    // dynamic dispatch
    let dyna_code: DispatchType = generate_dynamic_dispatch_code(&code);
    println!("{}", interpreter_dynamic_dispatch(&dyna_code, 0));
    // predicated : failed attempt
    // let predicated_code = vm_research::predicated_branching::interpreter_predicated_init(&code);
    // println!("{}", interpeter_predicated(&predicated_code, 0));
}
