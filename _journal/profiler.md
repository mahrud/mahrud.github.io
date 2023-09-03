---
layout: default
title: M2 Profiler
status: draft
---

Here's a [FlameGraph] visualization for the output of a M2 profiler that I've implemented:

> [![](../profile.svg){:width="100%"}](../profile.svg)
*Click on each box to interact and inspect the details*

### Guide

1. [Build Macaulay2 using CMake](https://github.com/mahrud/M2/blob/feature/cmake/M2/INSTALL-CMake.md).
2. Enable profiling, by running `cmake -DPROFILING=ON .` in the build directory.
3. Run the test or script you would like to profile.
4. Locate the raw profiling data file named `profile-$PID.raw`.
5. Run `ninja profile`; when asked, enter the name of the profiling data file.
6. A FlameGraph should automatically open. If not, open `profile-$PID.raw.html` in a browser.

[FlameGraph]: http://www.brendangregg.com/flamegraphs.html

### Ideas

- https://v8.dev/docs/profile
- https://v8.dev/docs/gdb-jit
- https://v8.dev/docs/stack-trace-api
- https://github.com/jrfonseca/gprof2dot
- https://www.graphviz.org/doc/info/lang.html
- https://docs.julialang.org/en/v1/manual/profile/
