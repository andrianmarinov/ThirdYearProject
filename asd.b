:- modeh(*,add(+integer,+integer,-integer)).

:- modeb(1,s(+integer,-integer)).

:- determination(add/3,s/2).

s(X,Y) :- 
	integer(X),
	Y is X+1.