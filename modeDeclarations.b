%						A          B        C         D     E
:- modeh(*,findPattern(+integer,+integer,+integer,+integer,-integer)).

:- modeb(*,add(+integer,+integer,-integer)).

%:- modeb(*,add(+integer,+integer,+integer)).

%:- modeb(*,sub(+integer,+integer,+integer)).

:- modeb(*,sub(+integer,+integer,-integer)).

:- determination(findPattern/5,add/3).
:- determination(findPattern/5,sub/3).
:- determination(findPattern/5,integer/1).

:- set(noise,0).

add(A,B,C) :-
	C is A+B.
	
sub(A,B,C) :-
	C is A-B.	