-module(coin).
-export([flip/0]).
-export([flip/1]).

flip() ->
    flip(dice:roll(2)).

flip(Result) ->
    if Result =:= 2 -> "Tails!";
       true -> "Heads!"
    end.
