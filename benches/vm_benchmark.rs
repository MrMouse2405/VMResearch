use criterion::{black_box, criterion_group, criterion_main, BenchmarkGroup, Criterion};
use VMResearch::{generate_bytecode,interpeter_switch};


pub fn criterion_benchmark(c: &mut Criterion) {
    let code = generate_bytecode(10);
    let mut research_group = c.benchmark_group("ByteCode VM Research");
    research_group.bench_function("Switch-Case VM", |b| b.iter(|| interpeter_switch(black_box(&code),black_box(0))));
    research_group.bench_function("Switch-Case", |b| b.iter(|| interpeter_switch(black_box(&code),black_box(0))));
    // c.bench_function("parallel", |b| b.iter(|| euler1_par(black_box(input))));
    // c.bench_function("series", |b| b.iter(|| euler1_series(black_box(input))));
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
