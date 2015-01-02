%					     A          B        C       D        E

:- modeh(*,findPattern(+float,+integer,+float,+integer,+float,+integer,+float,+integer,+float,-integer)).

:- modeb(*,add(+integer,+integer,-integer)).
:- modeb(*,add(+float,+integer,-integer)).
:- modeb(*,add(+integer,+float,-integer)).
:- modeb(*,add(+float,+float,-integer)).

:- modeb(*,sub(+integer,+integer,-integer)).
:- modeb(*,sub(+float,+integer,-integer)).
:- modeb(*,sub(+integer,+float,-integer)).
:- modeb(*,sub(+float,+float,-integer)).


:- modeb(*,square(+integer,-integer)).
:- modeb(*,square(+float,-integer)).

:- modeb(*,mul(+integer,+integer,-integer)).
:- modeb(*,mul(+float,+integer,-integer)).
:- modeb(*,mul(+integer,+float,-integer)).
:- modeb(*,mul(+float,+float,-integer)).



:- determination(findPattern/10,add/3).
:- determination(findPattern/10,sub/3).

:- determination(findPattern/10,square/2).
:- determination(findPattern/10,mul/3).

:- determination(findPattern/10,div/3).
:- determination(findPattern/10,div/3).


add(A,B,C) :-
	integer(A),
	integer(B),
	C is A+B.


add(A,B,C) :-
	float(A),
	D is round(A),
	integer(B),
	C is D+B.

add(A,B,C) :-
	integer(A),
	float(B),
	D is round(B),
	C is A+D.

add(A,B,C) :-
	float(A),
	D is round(A),
	float(B),
	E is round(B),
	C is D+E.

sub(A,B,C) :-
	integer(A),
	integer(B),
	C is A-B.


sub(A,B,C) :-
	float(A),
	D is round(A),
	integer(B),
	C is D-B.

sub(A,B,C) :-
	integer(A),
	float(B),
	D is round(B),
	C is A-D.

sub(A,B,C) :-
	float(A),
	D is round(A),
	float(B),
	E is round(B),
	C is D-E.


square(A,B) :-
	integer(A),
	B is A*A.

suqare(A,B) :-
	float(A),
	C is round(A),
	B is C*C.	

mul(A,B,C) :-
	integer(A),
	integer(B),
	C is A*B.


mul(A,B,C) :-
	float(A),
	D is round(A),
	integer(B),
	C is D*B.

mul(A,B,C) :-
	integer(A),
	float(B),
	D is round(B),
	C is A*D.

mul(A,B,C) :-
	float(A),
	D is round(A),
	float(B),
	E is round(B),
	C is D*E.


div(A,B,C) :-
	integer(A),
	integer(B),
	C is A // B.


div(A,B,C) :-
	float(A),
	D is round(A),
	integer(B),
	C is D // B.

div(A,B,C) :-
	integer(A),
	float(B),
	D is round(B),
	C is A // D.

div(A,B,C) :-
	float(A),
	D is round(A),
	float(B),
	E is round(B),
	C is D // E.