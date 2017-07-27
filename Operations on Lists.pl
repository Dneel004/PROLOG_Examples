%Operations_On_Lists

add(X, L, [X|L]).

conc([], L, L).
conc([X|L1], L2, [X|L3]). :- conc(L1,L2,L3).

del(X, [X|Tail], Tail).
del(X, [Y|Tail], [Y|Tail1]). :- del(X, Tail, Tail1).

sublist(S,L) :- conc(L1,L2,L), conc(S,L3,L2).

permutation([], []).
permutation([X|L], P) :- permutation(L, L1), insert(X,L1,P).