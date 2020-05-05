:- use_module(library(tabling)).
:- table s/2.
:- table np/2.
:- table vp/2.
:- table pp/2.

% enter your rules

s --> np, vp.
np --> det, n.
vp --> vp, pp.
vp --> v, np.
pp --> p, np.
np --> np, pp.

% enter your lexical rules

n --> [dogs].
n --> [cats].
n --> [garden].
det --> [the].
p --> [in].
v --> [chased].
