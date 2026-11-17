member1(X,[X|_]).
member1(X,[_|T]) :- member1(X,T).

concat1([],L,L).
concat1([H|T],L,[H|R]) :- concat1(T,L,R).

delete1(X,[X|T],T).
delete1(X,[H|T],[H|R]) :- delete1(X,T,R).

len([],0).
len([_|T],N) :- len(T,M), N is M+1.

rlen([],0).
rlen(X,1) :- atomic(X), X \== [].
rlen([H|T],N) :- rlen(H,A), rlen(T,B), N is A+B.

reverse1([],[]).
reverse1([H|T],R) :- reverse1(T,RT), concat1(RT,[H],R).

reverse2([],A,A).
reverse2([H|T],A,R) :- reverse2(T,[H|A],R).

sum([],0).
sum([H|T],N) :- sum(T,M), N is H+M.

avg(X,N) :- len(X,L), L > 0, sum(X,S), N is S // L.

count(_,[],0).
count(X,[X|T],N) :- count(X,T,M), N is M+1.
count(X,[H|T],N) :- X \= H, count(X,T,N).

double([],[]).
double([H|T],[H,H|R]) :- double(T,R).

repeatelem(_,0,[]).
repeatelem(X,N,[X|R]) :- N > 0, M is N-1, repeatelem(X,M,R).

repeat1([],[],_).
repeat1([H|T],Y,N) :- repeatelem(H,N,P), repeat1(T,R,N), concat1(P,R,Y).
