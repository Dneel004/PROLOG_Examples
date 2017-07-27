%Family program 

%facts
male(robert).
male(john).
female(nancy).
female(victoria).
parent(robert, john).
parent(victoria, john).
%rules
father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).