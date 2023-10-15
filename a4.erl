-module(a4).
-export([simple_program_one/0]).

get_numData() ->
        {ok, Num} = io:read("Enter a number: "),
        io:format("The number you entered is: ~w~n", [Num]),
     Num.

factorial(N) -> N * factorial(N - 1).

simple_program_one() ->
   Num = get_numData(),
   if 
      not Is_Integer(num) ->
   	io:format("not an integer~n");
      Num == 0 -> 
         io:format("0~n"); 
      Num < 0 ->
   	temp = math:pow(abs(Num), 7),
   	io:format("~n", [Result]);
      Num rem 7 == 0 ->
        temp = math:pow(Num, 1/5),
        io:format("~n", [temp]);
      true -> 
        temp = factorial(Num),
        io:format("~n", [temp]);
   
   end.
