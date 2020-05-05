transition(1, Sym, 1, Sym):- Sym \= s.
transition(1, t, 2, t_h).
transition(1, p, 2, p_h).
transition(1, k, 2, k_h).
transition(1, Sym, 4, Sym).

transition(2, aa1, 3, aa1 ).
transition(2, ae1, 3, ae1 ).
transition(2, ah1, 3, ah1 ).
transition(2, ao1, 3, ao1 ).
transition(2, aw1, 3, aw1 ).
transition(2, ay1, 3, ay1 ).
transition(2, eh1, 3, eh1 ).
transition(2, er1, 3, er1 ).
transition(2, ey1, 3, ey1 ).
transition(2, ih1, 3, ih1 ).
transition(2, iy1, 3, iy1 ).
transition(2, ow1, 3, ow1 ).
transition(2, oy1, 3, oy1 ).
transition(2, uh1, 3, uh1 ).
transition(2, uw1, 3, uw1 ).

transition(3, Sym, 3, Sym).
transition(3, Sym, 1, Sym):- Sym \= s.

transition(4, Sym, 4, Sym).
transition(4, eps, 1, Sym):- Sym \= s.

initial(1).
final(1).
final(4).
final(3).
