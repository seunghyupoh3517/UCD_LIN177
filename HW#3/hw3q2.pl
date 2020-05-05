% A sample transition. You may use it or delete it.

transition(1, S, 1, S) :-
    S \= eps,
    S \= '^'.

% ENTER ADDITIONAL TRANSITIONS HERE

transition(1, S, 2, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    sibilant(S).

transition(1, S, 5, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(sibilant(S)),
    not(voiced(S)).

transition(1, S, 8, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    voiced(S),
    not(sibilant(S)).


transition(2, S, 2, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    sibilant(S).

transition(2, '^', 3, ih).

transition(2, S, 1, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(sibilant(S)).

transition(3, s, 4, z).
transition(4, '#', 1, '#').


transition(5, S, 5, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(sibilant(S)),
    not(voiced(S)).

transition(5, '^', 6, s).

transition(5, S, 1, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    sibilant(S),
    voiced(S).

transition(6, s, 7, eps).
transition(7, '#', 1, '#').


transition(8, S, 8, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    voiced(S),
    not(sibilant(S)).    

transition(8, '^', 9, z).

transition(8, S, 1, S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(voiced(S)),
    sibilant(S).

transition(9, s, 10, eps).
transition(10, '#', 1, '#').


% Adjust your initial and final states if needed.

initial(1).
final(1).

% potentially useful features

voiced(aa).
voiced(ae).
voiced(ah).
voiced(ao).
voiced(aw).
voiced(ay).
voiced(b).
voiced(d).
voiced(dh).
voiced(eh).
voiced(er).
voiced(ey).
voiced(g).
voiced(ih).
voiced(iy).
voiced(jh).
voiced(l).
voiced(m).
voiced(n).
voiced(ng).
voiced(ow).
voiced(oy).
voiced(r).
voiced(uh).
voiced(uw).
voiced(v).
voiced(w).
voiced(y).
voiced(z).
voiced(zh).
% fill in more.
% look at the list of arpabet symbols in
% the cmu dictionary, and add the rest of
% the voiced symbols here.

sibilant(ch).
sibilant(s).
sibilant(sh).
sibilant(jh).
sibilant(z).
sibilant(zh).

% once we have listed the sibilants,
% we can define what a nonsibilant is.
% here we can assume that the alphabet
% is the symbols in the arpabet, ^ and #.
% in summary, the following says that a
% symbols S corresponds to a nonsibilant
% if S is not ^, S is not #, S is not
% a sibilant, and S is not eps.

nonsibilant(S) :-
    S \= eps,
    S \= '^',
    S \= '#',
    not(sibilant(S)).


