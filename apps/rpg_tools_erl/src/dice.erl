-module(dice).
-export([roll/1]).
-export([roll/2]).
-export([roll_batch/2]).
-export([roll_batch/3]).

roll(MaxValue) ->
    random:uniform(MaxValue).

roll(MaxValue, Modifier) ->
    Modifier + roll(MaxValue).

roll_batch(BatchSize, MaxValue) ->
    [roll(MaxValue) || _ <- lists:seq(1, BatchSize)].

roll_batch(BatchSize, MaxValue, Modifier) ->
    [Modifier + N || N <- roll_batch(BatchSize, MaxValue)].
