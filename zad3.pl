isnumber(zero).
isnumber(s(X)):-isnumber(X).

isequal(X,X) :- isnumber(X).
isequal(s(X),s(Y)) :- isequal(X,Y).

lessthanequal(zero,X):- isnumber(X).
lessthanequal(s(X),s(Y)):- lessthanequal(X,Y).

add(zero,X,X) :- isnumber(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

even(zero).
even(s(X)) :- odd(X).

odd(s(X)) :- even(X).

times(zero,X,zero) :- isnumber(X).
times(s(X),Y,Z) :- times(X,Y,W), add(W,Y,Z).

quotient(X,s(Y),zero) :- lessthanequal(s(X),s(Y)).
quotient(X,s(Y),s(Q)) :- add(s(Y),D,X), quotient(D,s(Y),Q).

remainder(X,zero,X) :- isnumber(X).
remainder(X,s(Y),X) :- lessthanequal(s(X),s(Y)).
remainder(X,s(Y),R) :- add(s(Y),D,X), remainder(D,s(Y),R).

fact(zero,s(zero)).
fact(s(N),X) :- fact(N,Y), times(s(N),Y,X).

fibonacci(zero,zero).
fibonacci(s(zero),s(zero)).
fibonacci(s(s(N)),X) :- fibonacci(N,A), fibonacci(s(N),B), add(A,B,X).

shownum(zero,0).
shownum(s(X),N) :- var(N), shownum(X,M), N is M+1.
shownum(s(X),N) :- integer(N), N > 0, M is N-1, shownum(X,M).
