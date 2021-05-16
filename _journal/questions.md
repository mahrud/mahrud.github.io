---
layout: default
title: Notes
status: draft
---

## Tips:
- examine, erase
- the core command `X` defined in file `d/Y.d` is called `Y_X` within the engine.
- debugLevel = 123 prints place on the REPL.
- pushForward (https://arxiv.org/abs/1703.03357)
- m // n : factor matrices
- peek and showStructure
- apropos
- hash
- collectGarbage and GCstats() and export GC_INITIAL_HEAP_SIZE=50G
- profile, profileSummary
- nm --demangle M2-binary 
- `commandInterpreter`: to peek into a function
- see e/interrupted.cpp: `if (system_interrupted()) return COMP_INTERRUPTED;`
- M-. (find-tags); M-, ; and (visit-tags-table)
- rawHelloWorld = value Core#"private dictionary"#"rawHelloWorld" to export from the Core without debug Core.
- benchmark("M = random(ZZ^4, ZZ^10, Height => 100); image M == target M") (or gens gb M or LLL M or smithNormalForm M)

## Questions:
- in M2lib.c
  - interpFunc doesn't use vargs2
  - where is main_inits() defined
  - what is trap() and trapchk() -> defined in debugging.c
- what is [atomic.d](https://github.com/Macaulay2/M2/blob/master/M2/Macaulay2/d/atomic.d)?
- what does `notify` do?
- what does `DebuggingMode` actually do?
- what's up with `pkgTitle Package`
- what does `PackageDictionary#pkgtitle <- PackageDictionary#pkgtitle` do? "clear out the value of the symbol"??
- what is the Dispatch option of method?
- `disassemble`

## To Do:
- Tropical and SemidefiniteProgramming check for nonexisting stuff!
- learn about map files https://interrupt.memfault.com/blog/get-the-most-out-of-the-linker-map-file
- https://github.com/rouge-ruby/rouge
- https://rouge-ruby.github.io/docs/file.LexerDevelopment.html
- engine
  - https://stanford.edu/~mluciano/M2-help/0181.html
  - https://faculty.math.illinois.edu/Macaulay2/doc/Macaulay2-1.12/share/doc/Macaulay2/Macaulay2Doc/html/___Developer_sqs_sp__Corner.html
- Packages
  - Dan's [Package Writing Style Guide](https://github.com/Macaulay2/M2/wiki/Package-Writing-Style-Guide).
  - https://github.com/Macaulay2/M2/wiki/GitForWorkshop
  - https://github.com/Macaulay2/M2/wiki/GitHowTo
- interpreter
  - https://gnuu.org/2009/09/18/writing-your-own-toy-compiler/
  - https://github.com/xkbeyer/liquid/tree/master/src
- magmas (monoid over arbitrary hashtable?)
  - see merge and combine
- associative algebras?
- Hom<T>
- macros
- generating functions
- predicate sets
- https://www.python.org/dev/peps/pep-0289/
- readeval4 in interp.dd
  - does peektoken(file,true) read the line?
- help TeXmacs
- get rid of installedpackages
- get rid of loadsequence
- use `SpaceCurves::isSmooth` instead of `SpaceCurves$isSmooth`

## Ideas:
- [use Clang's `__builtin_dump_struct`](https://clang.llvm.org/docs/LanguageExtensions.html#builtin-dump-struct)
- [replace dumpdata with criu](https://www.redhat.com/en/blog/how-can-process-snapshotrestore-help-save-your-day)
- [tcmalloc](http://goog-perftools.sourceforge.net/doc/tcmalloc.html)
- [openmp](https://www.openmp.org/spec-html/5.0/openmpse50.html)
- tbb
- [geobuckets](https://core.ac.uk/download/pdf/82008137.pdf)
- [mathic](https://arxiv.org/abs/1206.6940)
- [eigen and openmp](https://eigen.tuxfamily.org/dox/TopicMultiThreading.html)
- [using lapack from eigen](https://eigen.tuxfamily.org/dox/TopicUsingBlasLapack.html)
- [using mkl from eigen](https://eigen.tuxfamily.org/dox/TopicUsingIntelMKL.html)

## Things to check:
- tvalues
- currentLayout
- prefixDirectory
- startup.c
- srcdir
- m2/packages.m2
  - newpkg#"package prefix" for Macaulay2Doc
  - currentFileDirectory (set in interp.dd)
- initcurrentlayout() -> line 339 of startup.m2.in fixes usr-dist :/ bug?
- the big numbers here are the same as in hash() for sequences in structure.d `keyhash0 := 27449 * 27457 + methhash;`
