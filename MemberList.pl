%Facts
member(X,[X|Tail]).
conc([], L, L).

%Rules
member(X,[Head|Tail]) :- member(X,Tail).

conc([X|L1], L2, [X|L3]). :- conc(L1,L2,L3).