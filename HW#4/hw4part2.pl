:- use_module(library(tabling)).
:- table s/3.
:- table np/3.
:- table vp/3.
:- table pp/3.

% enter your rules

s(s(NP, VP)) --> np(NP), vp(VP).
np(np(DET, N)) --> det(DET), n(N).
vp(vp(VP, PP)) --> vp(VP), pp(PP).
vp(vp(V, NP)) --> v(V), np(NP).
pp(pp(P, NP)) --> p(P), np(NP).
np(np(NP, PP)) --> np(NP), pp(PP).

% enter your lexical rules

n(n(dogs)) --> [dogs].
n(n(cats)) --> [cats].
n(n(garden)) --> [garden].
det(det(the)) --> [the].
v(v(chased)) --> [chased].
p(p(in)) --> [in].