:- modeh(*,findPattern(+list,-integer)).

:- modeb(*,even(+integer)).
:- modeb(*,add(+integer,+integer,-integer)).
:- modeb(*,getListElements(List,X,Y)).
:- modeb(1,s(+integer,-integer)).

:- set(abduce,true).
:- abducible(add/3).

:- determination(findPattern/2,even/1).
:- determination(findPattern/2,add/3).
:- determination(findPattern/2,getListElements/3).
:- determination(findPattern/2,s/2).

list([_|_]).

even(X) :-
	0 is X mod 2.

add(X,Y,Z) :-
	Z is X+Y.

s(X,Y) :- 
	integer(X),
	Y is X+1.

getListElements(List,X,Y) :-
	List = [X|Y].