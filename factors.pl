getDivisors(A,B) :-
	getIndex(A,Number),
	integer(Number),
	getFactors(Number,B).

getFactors(1,[1]):- true, !.
getFactors(X,[Factor1|T]):- X > 0,
 between(2,X,Factor1), 
 NewX is X // Factor1, (X mod Factor1) =:= 0,
 getFactors(NewX,T), !.

 number(A,B).
 getIndex(number(X,_),X).