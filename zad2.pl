parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(joe, jim).

male(tom).
male(bob).
male(joe).
male(jim).

female(pam).
female(liz).
female(ann).
female(pat).


son(X, Y) :- parent(Y, X), male(X).

% granddaughter(X,Y): X jest wnuczka Y.
granddaughter(X, Y) :- parent(Y, Z), parent(Z, X), female(X).

% aunt(X,Y): X jest ciotka Y (siostra rodzica Y).
aunt(X, Y) :- parent(P, Y), parent(G, P), parent(G, X), X \= P, female(X).

% partner(X,Y): X ma wspolne dziecko z Y.
partner(X, Y) :- parent(X, C), parent(Y, C), X \= Y.
