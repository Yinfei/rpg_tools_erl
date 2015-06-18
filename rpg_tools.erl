-module(rpg_tools).
-export([roll_dice/1]).
-export([roll_dice_batch/2]).

roll_dice(X) ->
  random:uniform(X).

roll_dice_batch(X, Y) ->
  [random:uniform(Y) || _ <- lists:seq(1, X)].
