-module(coin).
-export([flip/0]).
-export([flip/1]).

flip() ->
    flip(random:uniform(2)).

flip(Result) ->
    if Result =:= 2 -> "Tails!";
       true -> "Heads!"
    end.
