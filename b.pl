successor(number(Index,_),number(NextIndex,NextInt)) :- 
	s(Index,X),
	NextIndex is X,
	number(NextIndex,Y),
	NextInt is Y.

number(0,2).
number(1,4).
number(2,6).
number(3,8).
number(4,10).	

		
s(Number,NextNumber) :-
	NextNumber is Number+1.