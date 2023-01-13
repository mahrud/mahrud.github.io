---
layout: default
title: Next Steps
status: draft
---

## Community

- Contribution Guide
- Code of Conduct
- Style Guides
- Roadmap

## Engineering

> **Slogan:** do for M2 what [V8](https://v8.dev) does for JavaScript.

- JIT
  - [LLVM's ORC](https://www.youtube.com/watch?v=hILdR8XRvdQ)
  - [Julia & LLVM](https://docs.julialang.org/en/v1/devdocs/llvm/)
  - [Julia IR](https://docs.julialang.org/en/v1/devdocs/reflection/#Intermediate-and-compiled-representations-1)
- GC
  - [High-performance GC for C++](https://v8.dev/blog/high-performance-cpp-gc)
  - [Oilpan](https://docs.google.com/document/d/1y7_0ni0E_kxvrah-QtnreMlzCDKN3QP4BN1Aw7eSLfY/edit#)
  - [Cross-Component GC](https://research.google/pubs/pub47359/)
  - [V8 GC](https://v8.dev/blog/trash-talk)
  - [memory leaks](https://v8.dev/docs/memory-leaks)
  - [Julia GC](https://docs.julialang.org/en/v1/devdocs/object/)
- M2 REPL from Julia?
  - [10000 foot view of Julia loading](https://docs.julialang.org/en/v1/devdocs/eval/#Julia-Execution)
  - [Cxx REPL package](https://github.com/JuliaInterop/Cxx.jl)
  - OMG: julia --lisp
- FFI
  - [Haskell's FFI](https://wiki.haskell.org/Foreign_Function_Interface)
- STL
- Engine refactor
  - folder structure:
    basic rings, res, gb, matrices, utilities
  - change file names to associate to class names
  - Modernization, including replacing array, intarray, queue, etc. types
  - rewrite smat, instead use eigen's sparse matrix format
  - Catch2 vs googletest
  - Eigen branch memory fixes
  - ringelem unGC
  - cache friendly
- Rings
  - rewrite polys
  - noncommutative things, DG-algebra
- Profiling/Code Coverage
- Benchmark
- Linter: https://github.com/marketplace/actions/latex-linter-chktex
- Documentation
  - Doxygen on the engine side


## old scope of work
1. figure out how to bring the benefits of parallelization on multiple threads to the user at top level without placing any demands on the user;
2. figure out the best way to parallelize computation-intensive engine routines;
3. review and simplify the interface to internal Gröbner basis algorithms;
4. reorganize the engine and the Core package, including its tests and documentation;
5. update the hierarchy of mathematical types and the way functions use it (e.g., in a categorical sense);
6. move some mathematical types or methods to separate packages (e.g., moving ideal quotients and saturation to Colon.m2);
7. making the Core package’s code more readable and maintainable.

Item (1) includes making printing thread safe; figuring out how to get good speed-ups from running tasks in parallel; making lots of Macaulay2 code thread-safe; parallelizing standard list/vector functions like ‘all’, ‘any’, etc.

Item (2) includes parallelizing Gröbner basis routines or free resolution computations using vectorization or multiple threads.

Item (3) includes integrating already implemented algorithms such as FGLM as strategies of the default Gröbner basis functions and updating the documentation of the improved Gröbner basis methods.
