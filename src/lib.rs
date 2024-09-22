/*
    VM Research

    Author: MrMouse2405
    Date:   Sep 13,2024
*/
pub mod bytecode;
pub mod computed_goto;
pub mod dynamic_dispatch;
// pub mod predicated_branching;
pub mod switch_case;
pub mod util;

pub use computed_goto::interpeter_computed_goto;
pub use dynamic_dispatch::generate_dynamic_dispatch_code;
pub use dynamic_dispatch::interpreter_dynamic_dispatch;
pub use dynamic_dispatch::DispatchType;
// pub use predicated_branching::interpeter_predicated;
pub use switch_case::interpeter_switch;
pub use util::generate_bytecode;
