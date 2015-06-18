-module(rpg_tools).
-export([roll/1]).

roll(X) ->
  random:uniform(X).
