debug Core

demo = method (
    Options => {
	LengthLimit => 2,
	Strategy    => null,
	}
    )

DemoContext = new SelfInitializingType of Context
DemoContext.synonym = "demo context"


DemoComputation = new Type of Computation
DemoComputation.synonym = "demo computation"

new DemoContext     from RingMap  := (C, f) -> DemoContext{ f }
new DemoComputation from Sequence := (C, S) -> new DemoComputation from {
    LengthLimit => 2,
    Result      => null}

isComputationDone DemoComputation := Boolean => options demo >> opts -> container -> (
    instance(container.Result, ChainComplex)
    and opts.LengthLimit <= container.LengthLimit)

updateComputation(DemoComputation, ChainComplex) := ChainComplex => options demo >> opts -> (container, result) -> (
    container.LengthLimit = opts.LengthLimit;
    container.Result      = result)

cacheHit DemoComputation := x -> printerr("Cache hit on a ", synonym class x, "! 🎉");

-----------------------------------------------------------------------------

demo(RingMap, Module) := ChainComplex => opts -> (f, M) -> (
    strategy := opts.Strategy;

    -- this logic runs the strategies in order, or the specified strategy
    computation := (opts, container) -> (
	runHooks((demo, RingMap, Module), (opts, f, M), Strategy => strategy));

    -- this is the logic for caching partial basis computations. M.cache contains an option:
    --   DemoContext{} => DemoComputation{ Result, ... }
    container := fetchComputation(DemoComputation, M, (f, M), new DemoContext from f);

    -- the actual computation of the basis occurs here
    C := (cacheComputation(opts, container)) computation;

    if C =!= null then C else if strategy === null
    then error("no applicable strategy for computing demo")
    -- used to be: error "'basis' can't handle this type of ring";
    else error("assumptions for demo strategy ", toString strategy, " are not met"))


-- Algorithms for demo function
algorithms = new MutableHashTable;
algorithms#(demo, RingMap, Module) = new MutableHashTable from {
    Default => (opts, f, M) -> res(of M, LengthLimit => opts.LengthLimit),
    }

-- Installing hooks for demo function
scan({Default}, strategy ->
    addHook(key := (demo, RingMap, Module), algorithms#key#strategy, Strategy => strategy))


end--
restart
needs "caching.m2"

hooks demo
code 0

S = ZZ/3[x,y]
M = module ideal gens S

R = S/ideal(x^5 + y^5)
f = map(R, S)

demo(f, M, LengthLimit => 1)
length demo(f, M, LengthLimit => 1)
length demo(f, M, LengthLimit => 3)
length demo(f, M, LengthLimit => 4)
length demo(f, M, LengthLimit => 3)
length demo(f, M, LengthLimit => 5)

peek M.cache
peek M.cache#(DemoContext{f})


use S
R' = S/ideal(x^7 + y^7)
f' = map(R', S)

demo(f', M, LengthLimit => 2)
demo(f,  M, LengthLimit => 7)

peek M.cache
peek M.cache#(DemoContext{f'})

select(keys   M.cache, k -> instance(k, DemoContext))
select(values M.cache, k -> instance(k, DemoComputation))




-- code from presentation
restart
debug Core
n = 16

R = kk[x_1..x_n];
elapsedTime C = res module ideal vars R; -- ~4s
elapsedTime C = res module ideal vars R; -- ~0.001s

R = kk[x_1..x_n];
elapsedTime C = res(module ideal vars R, StopBeforeComputation => true) -- ~0.02s
isComputationDone C.Resolution
status C.Resolution.RawComputation -- "not started"

elapsedTime rawStartComputation C.Resolution.RawComputation -- ~3.6s

gbTrace = 15
elapsedTime rawStartComputation C.Resolution.RawComputation -- 0.00001s
elapsedTime C = res module ideal vars R; -- ~0.001s


restart

P3 = ZZ/32003[a..i];
P2 = ZZ/32003[a,b,c,d,e,f];

M = comodule monomialCurveIdeal(P3, {1,3,8,9,12,13,17,21});
m = random(P3^1, P3^{-1,-1,-1,-1,-1,-1});

G = map(P3, P2, m);
elapsedTime pushForward(G, M);

G' = map(P3, P2, m);
elapsedTime pushForward(G', M);

debug Core
cacheHit Computation := x -> printerr("Cache hit on a ", synonym class x, "! 🎉");
elapsedTime pushForward(G', M);

