:- modeh(1, fib(+int,-int)).

:- modeb(1, pred(+int,-int)).

:- modeb(1, fib(+int,-int)).

:- modeb(1, add(+int,+int,-int)).

:- commutative(add/3).

:- determination(fib/2, pred/2).

:- determination(fib/2, fib/2).

:- determination(fib/2, add/3).

pred(A, B):- B is A-1.

add(A, B, C):- C is A+B.

fib(0, 0):-!.

fib(1, 1):-!.