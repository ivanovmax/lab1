-module(lab1).
-export([hi/0, fac/1, fib/1, member/2, cost/1]).

hi() -> 
	io:format("Hello world!~n").

fac(0) -> 1;
fac(1) -> 1;
fac(N) -> N * fac(N-1).

fib(1) -> 1;
fib(2) -> 1;
fib(N) -> fib(N-2) + fib(N-1).

member([E|_], E) -> true;
member([], _) -> false;
member([_|T], E) -> member(T, E).


% home
price(apple) -> 100;
price(pear) -> 150;
price(milk) -> 70;
price(beaf) -> 400;
price(pork) -> 300.

%[{apple, Count}, ...]
cost([]) -> 0;
cost([{A,C}|T]) -> price(A) * C + cost(T).