add(X,Y,Z) :-
	integer(X),
	integer(Y),
	Z is X+Y.

add(X,Y,Z) :-
	integer(X),
	integer(Z),
	sub(Z,X,Y).

add(X,Y,Z) :-
	integer(Y),
	integer(Z),
	sub(Z,Y,X).

sub(X,Y,Z) :-
	Z is X-Y.