countDivisors(Number,NumberDivisors) :-
	countFactors(Number,0,1,NumberDivisors).


countFactors(Product, Count, Divisor, Tot) :-
     Divisor > Product/2,
     !, Tot is Count.
countFactors(Product, Count, Divisor, Tot):-
     (   Product mod Divisor =:= 0
     ->  NewC is Count + 1
     ;   NewC is Count
     ),
     NextD is Divisor + 1,
     countFactors(Product, NewC, NextD, Tot).