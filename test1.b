%					     A          B        C       D        E
:- modeh(*,findPattern(+number,+number,+number,+number,-number)).

:- modeb(*,number(+integer,+integer)).

:- modeb(*,getNumber(+number,-integer)).

:- modeb(*,getIndex(+number,-integer)).

:- modeb(*,squareIndex(+number,+number)).

:- modeb(*,addIndex(+number,-number)).

:- determination(findPattern/5,squareIndex/2).
:- determination(findPattern/5,addIndex/3).

number(Index,SeqNumber).

getNumber(number(_,X),X).
getIndex(number(X,_),X).

