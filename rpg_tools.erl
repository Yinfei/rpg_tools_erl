-module(rpg_tools).
-export([roll_dice/1]).
-export([roll_dice_batch/2]).
-export([flip_coin/0]).

roll_dice(X) ->
  random:uniform(X).

roll_dice_batch(X, Y) ->
  [random:uniform(Y) || _ <- lists:seq(1, X)].

flip_coin() ->
  case random:uniform(2) == 2 of
      true ->
          "Heads !";
      _Else ->
          "Tails!"
  end.
