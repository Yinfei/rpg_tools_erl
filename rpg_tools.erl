-module(rpg_tools).
-export([roll_dice/1]).
-export([roll_dice/2]).
-export([roll_dice_batch/2]).
-export([roll_dice_batch/3]).
-export([flip_coin/0]).
-export([flip_coin/1]).

roll_dice(MaxValue) ->
    random:uniform(MaxValue).

roll_dice(MaxValue, Modifier) ->
    Modifier + roll_dice(MaxValue).

roll_dice_batch(BatchSize, MaxValue) ->
    [roll_dice(MaxValue) || _ <- lists:seq(1, BatchSize)].

roll_dice_batch(BatchSize, MaxValue, Modifier) ->
    [Modifier + N || N <- roll_dice_batch(BatchSize, MaxValue)].

flip_coin() ->
    flip_coin(roll_dice(2)).

flip_coin(Result) ->
    if
        Result == 2 -> "Heads!";
        Result /= 2 -> "Tails!"
    end.
