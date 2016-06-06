-module(card).
-export([pick/1]).
-export([pick_number/1]).
-export([pick_random_list_element/1]).
-define(HEADS, ["Jack", "Queen", "King", "Ace"]).
-define(COLORS, ["Clubs", "Hearts", "Diamonds", "Spades"]).
-define(DECK_32, lists:append(lists:seq(7, 10), ?HEADS)).
-define(DECK_54, lists:append(lists:seq(2, 10), ?HEADS)).

pick(DeckSize) ->
    CardNumber = pick_number(DeckSize),

    lists:concat([CardNumber, ' of ', pick_random_list_element(?COLORS),  '.']).

pick_number(MaxSize) ->
    if MaxSize =:= 32 -> pick_random_list_element(?DECK_32);
       true -> pick_random_list_element(?DECK_54)
    end.

pick_random_list_element(List) ->
    Index = random:uniform(length(List)),
    lists:nth(Index, List).
