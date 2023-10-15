-module(a4).
-export([get_numData/0]).
get_numData() ->
        {ok, Num} = io:read("Enter a number: "),
        io:format("The number you entered is: ~w~n", [Num]).