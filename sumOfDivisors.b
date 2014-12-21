:- modeh(*,findPattern(+number,+number,+number,+number,-number)).

:- modeb(*,getNumber(+number,-integer)).
:- modeb(*,getIndex(+number,-integer)).

:- modeb(*,getDivisors(+number,-list)).
:- modeb(*,getFactors(+integer,-list)).
:- modeb(*,getSum(+list,-number)).
:- modeb(*,getCount(+list,-number)).
:- modeb(*,list_sum(+list,-integer)).

:- modeb(*,number(+integer,+integer)).

:- determination(findPattern/5,getDivisors/2).
:- determination(findPattern/5,getSum/2).
:- determination(findPattern/5,getCount/2).

number(Index,SeqNumber).

getNumber(number(_,X),X).
getIndex(number(X,_),X).

getDivisors(A,B) :-
	getIndex(A,Number),
	integer(Number),
	getFactors(Number,B).

getFactors(1,[1]):- true, !.
getFactors(X,[Factor1|T]):- X > 0,
 between(2,X,Factor1), 
 NewX is X // Factor1, (X mod Factor1) =:= 0,
 getFactors(NewX,T), !.

getCount(A,number(SeqIndex,SeqNumber)) :-
	length(A,SeqNumber),
	number(SeqIndex,SeqNumber).

list_sum([], 0).
list_sum([Head | Tail], TotalSum) :-
list_sum(Tail, Sum1),
TotalSum is Head + Sum1.


 getSum(A,number(SeqIndex,SeqNumber)) :-
 	list_sum(A,SeqNumber),
 	number(SeqIndex,SeqNumber).