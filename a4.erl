-module(a4).
-export([simple_program_one/0]).

get_numData() ->
        {ok, Num} = io:read("Enter a number: "),
        io:format("The number you entered is: ~w~n", [Num]),
	   Num.

simple_program_one() ->
Num = get_numData(),
   
   if 
      Num == 2 -> 
         io:fwrite("True"); 
      true -> 
         io:fwrite("False") 
   end.