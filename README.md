rpg_tools_erl
=====

A nice toolbox for RPG and tabletop games!

Build
-----

Compile it:

    $ rebar3 compile

and then run it:

    $ erl -env ERL_LIBS _build/default/lib -eval 'application:ensure_all_started(rpg_tools_erl).'
