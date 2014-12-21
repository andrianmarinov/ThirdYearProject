:- modeh(*,findPattern(+number,+number,+number,+number,-number)).
:- modeb(1,s(+integer,-integer)).
:- modeb(*,add(+integer,+integer,-integer)).
:- modeb(*,addLast(+integer,+integer,-integer)).
:- modeb(*,sub(+integer,+integer,-integer)).
:- modeb(*,addNumber(+number,+number,-integer)).
:- modeb(*,subNumber(+number,+number,-integer)).
:- modeb(1,even(+integer)).
:- modeb(1,odd(+integer)).
:- modeb(1,getIndex(+number,-integer)).
:- modeb(1,getNumber(+number,-integer)).
:- modeb(*,successor(+number,-number)).
:- modeb(*,number(+integer,+integer)).

%:- determination(findPattern/5,even/1).
%:- determination(findPattern/5,odd/1).
%:- determination(findPattern/5,add/3).
%:- determination(findPattern/5,addLast/3).
:- determination(findPattern/5,sub/3).
%:- determination(findPattern/5,successor/2).
:- determination(findPattern/5,getIndex/2).
:- determination(findPattern/5,getNumber/2).

getIndex(number(X,_),X).
getNumber(number(_,Y),Y).

even(A) :-
	0 is A mod 2.

odd(A) :- 
	1 is A mod 2.

number(Index,SeqNumber).	

successor(number(Index,_),number(NextIndex,NextInt)) :- 
	s(Index,X),
	NextIndex is X,
	number(NextIndex,Y),
	NextInt is Y.
		
s(Number,NextNumber) :-
	NextNumber is Number+1.

add(X,Y,Z) :-
	Z is X+Y.

addNumber(X,Y,Z) :-
	getNumber(X,SeqNumber),
	getNumber(Y,SeqNumber2),
	add(SeqNumber,SeqNumber2,Z).

sub(X,Y,Z) :-
	Z is X-Y.

addLast(X,0,X).
addLast(X,Y,Z) :-
	Y > 0,
	Y1 is Y-1,
	s(X,X1),
	add(X1,Y1,Z).

subNumber(X,Y,Z) :-
	getNumber(X,SeqNumber),
	getNumber(Y,SeqNumber2),
	sub(SeqNumber,SeqNumber2,Z).	