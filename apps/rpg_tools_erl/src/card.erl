-module(card).
-export([pick/1]).
-export([pick_32/0]).
-export([pick_54/0]).
-export([pick_random/1]).
-define(HEADS, ["Jack", "Queen", "King", "Ace"]).
-define(COLORS, ["Clubs", "Hearts", "Diamonds", "Spades"]).
-define(DECK_32, lists:append(lists:seq(7, 10), ?HEADS)).
-define(DECK_54, lists:append(lists:seq(2, 10), ?HEADS)).

pick(DeckSize) ->
    CardNumber = if DeckSize =:= 32 -> pick_32();
                    true -> pick_54()
                 end,

    lists:concat([CardNumber, ' of ', pick_random(?COLORS),  '.']).

pick_32() ->
    pick_random(?DECK_32).

pick_54() ->
    pick_random(?DECK_54).

pick_random(List) ->
    Index = random:uniform(length(List)),
    lists:nth(Index, List).
