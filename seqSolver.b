
:- modeh(*,findPattern(+number,+number,+number,+number,-number)).

:- modeb(*,number(+integer,+integer)).

:- modeb(*,addNumber(+number,+number,-number)).
:- modeb(*,subNumber(+number,+number,-number)).
:- modeb(*,mulNumber(+number,+number,-number)).
:- modeb(*,squareNumber(+number,-number)).

:- modeb(*,addIndex(+number,+number,-number)).
:- modeb(*,subIndex(+number,+number,-number)).
:- modeb(*,mulIndex(+number,+number,-number)).
:- modeb(*,squareIndex(+number,-number)).

:- modeb(*,getNumber(+number,-integer)).
:- modeb(*,getIndex(+number,-integer)).

:- modeb(*,add(+integer,+integer,-integer)).
:- modeb(*,sub(+intger,+intger,-integer)).
:- modeb(*,square(+integer,-integer)).

:- modeb(*,addTemp1(+number,+number,-number)).
:- modeb(*,addTemp2(+number,+number,-number)).
:- modeb(*,mulTemp1(+number,+number,-number)).
:- modeb(*,mulTemp2(+number,+number,-number)).
:- modeb(*,subTemp1(+number,+number,-number)).
:- modeb(*,subTemp2(+number,+number,-number)).

:- determination(findPattern/5,addNumber/3).
:- determination(findPattern/5,subNumber/3).
%:- determination(findPattern/5,mulNumber/3).
%:- determination(findPattern/5,squareNumber/2).

%:- determination(findPattern/5,addIndex/3).
%:- determination(findPattern/5,subIndex/3).
%:- determination(findPattern/5,mulIndex/3).
%:- determination(findPattern/5,squareIndex/2).

%:- determination(findPattern/5,addTemp1/3).
%:- determination(findPattern/5,addTemp2/3).
%:- determination(findPattern/5,mulTemp1/3).
%:- determination(findPattern/5,mulTemp2/3).
%:- determination(findPattern/5,subTemp1/3).
%:- determination(findPattern/5,subTemp2/3).

getNumber(number(_,X),X).
getIndex(number(X,_),X).

number(Index,SeqNumber).

add(A,B,C) :-
	C is A + B.

sub(A,B,C) :- 
	C is A-B.

mul(A,B,C) :- 
	C is A * B.

square(A,B) :-
	B is A*A.

addTemp1(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getNumber(A,SeqNumber1),
	integer(SeqNumber1),

	getIndex(B,SeqIndex2),
	var(SeqIndex2),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),

	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

addTemp2(A,B,number(Index,SeqResult)) :-
	getIndex(B,SeqIndex1),
	integer(SeqIndex1),
	getNumber(B,SeqNumber1),
	integer(SeqNumber1),

	getIndex(A,seqIndex2),
	var(seqIndex2),
	getNumber(A,SeqNumber2),
	integer(SeqNumber2),

	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).


subTemp1(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),
	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

subTemp2(A,B,number(Index,SeqResult)) :-
	getIndex(B,SeqIndex1),
	integer(SeqIndex1),
	getNumber(A,SeqNumber2),
	integer(SeqNumber2),
	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).	

mulTemp1(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),
	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

mulTemp2(A,B,number(Index,SeqResult)) :-
	getIndex(B,SeqIndex1),
	integer(SeqIndex1),
	getNumber(A,SeqNumber2),
	integer(SeqNumber2),
	add(SeqIndex1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

addNumber(A,B,number(Index,SeqResult)) :-
	getNumber(A,SeqNumber1),
	integer(SeqNumber1),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),
	add(SeqNumber1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

subNumber(A,B,number(Index,SeqResult)) :-
	getNumber(A,SeqNumber1),
	integer(SeqNumber1),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),
	sub(SeqNumber1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

mulNumber(A,B,number(Index,SeqResult)) :-
	getNumber(A,SeqNumber1),
	integer(SeqNumber1),
	getNumber(B,SeqNumber2),
	integer(SeqNumber2),
	mul(SeqNumber1,SeqNumber2,SeqResult),
	number(Index,SeqResult).

squareNumber(A,number(Index,SeqResult)) :-
	getNumber(A,SeqNumber1),
	integer(SeqNumber1),
	square(SeqNumber1,SeqResult),
	number(Index,SeqResult).

addIndex(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getIndex(B,SeqIndex2),
	integer(SeqIndex2),
	add(SeqIndex1,SeqIndex2,SeqResult),
	number(Index,SeqResult).

subIndex(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getIndex(B,SeqIndex2),
	integer(SeqIndex2),
	sub(SeqIndex1,SeqIndex1,SeqResult),
	number(Index,SeqResult).

mulIndex(A,B,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	getIndex(B,SeqIndex2),
	integer(SeqIndex2),
	mul(SeqIndex1,SeqIndex2,SeqResult),
	number(Index,SeqResult).

squareIndex(A,number(Index,SeqResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	square(SeqIndex1,SeqResult),
	number(Index,SeqResult).