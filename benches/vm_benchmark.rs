use criterion::{black_box, criterion_group, criterion_main, Criterion, Throughput};
use vm_research::{
    generate_bytecode, generate_dynamic_dispatch_code, interpeter_computed_goto, interpeter_switch,
    interpreter_dynamic_dispatch,
};

pub fn criterion_benchmark(c: &mut Criterion) {
    let bytecode_len = 100;

    for iterations in 1..2 {
        let bytecode_len = bytecode_len * iterations;
        let code = generate_bytecode(bytecode_len);
        let init_val = black_box(0);
        let test_code = black_box(&code);
        let dyna_code = generate_dynamic_dispatch_code(&code);
        let dyna_test_code = black_box(&dyna_code);

        let mut research_group = c.benchmark_group("vm_runtime_research");
        research_group.throughput(Throughput::Bytes(bytecode_len as u64));
        research_group.bench_function("switch-case", |b| {
            b.iter(|| interpeter_switch(test_code, init_val))
        });
        research_group.bench_function("computed-goto", |b| {
            b.iter(|| interpeter_computed_goto(test_code, init_val))
        });
        research_group.bench_function("dynamic-dispatch", |b| {
            b.iter(|| interpreter_dynamic_dispatch(dyna_test_code, init_val))
        });
        // research_group.bench_function("predicated", |b| {
        //     b.iter(|| interpeter_predicated(&test_code2, init_val))
        // });
    }
    // c.bench_function("parallel", |b| b.iter(|| euler1_par(black_box(input))));
    // c.bench_function("series", |b| b.iter(|| euler1_series(black_box(input))));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
