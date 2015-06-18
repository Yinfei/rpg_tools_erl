-module(rpg_tool).
-export([roll/1]).

roll(X) ->
  random:uniform(X).
