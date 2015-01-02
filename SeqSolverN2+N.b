%                         A      B        c       D       E
:- modeh(*,findPattern(+number,+number,+number,+number,+number)).

%:- modeb(*,number(+integer,+integer)).

%:- modeb(*,getNumber(+number,-integer)).
%:- modeb(*,getNumber(-number,-integer)).


:- modeb(*,getIndex(+number,-integer)).
%:- modeb(*,getIndex(-number,-integer)).

%:- modeb(*,add(+integer,+integer,-integer)).
%:- modeb(*,square(+integer,-integer)).


:- modeb(*,squareIndex(+number,-number)).

:- modeb(*,addIndex(+number,+number,+number)).

:- determination(findPattern/5,squareIndex/2).
:- determination(findPattern/5,addIndex/3).

number(Index,SeqNumber).

getNumber(number(_,X),X).
getIndex(number(X,_),X).

add(A,B,C) :-
	C is A + B.

square(A,B) :-
	B is A*A.

% Sequence to solve: 2,6,12,20,30
% Hypothesis: n^2 + n = a(n)
% 1^2 + 1 = 2; 2^2+2 = 6 etc...

squareIndex(A,number(IndexResult,IndexResult)) :-
	getIndex(A,SeqIndex1),
	integer(SeqIndex1),
	square(SeqIndex1,IndexResult),
	number(IndexResult,IndexResult).

addIndex(A,B,number(Index,IndexRes)) :- 
	getIndex(A,Index1),
	integer(Index1),
	getIndex(B,Index2),
	integer(Index2),
	add(Index1,Index2,IndexRes),
	number(Index,IndexRes).