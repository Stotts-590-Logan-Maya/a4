% GROUP MEMBERS: Logan Stach & Maya Agnihotri

-module(program1).
-export([start/0, simple_program_2/0, get_numData/0, greater/1, lesser/1, factorial/1]).

start() ->
  simple_program_2().


get_numData() ->
  {ok, Num} = io:read("Enter a number: "),
  io:format("The number you entered is: ~w~n", [Num]),
  Num.

simple_program_2() ->
  Num = get_numData(),
  if not is_integer(Num) -> io:fwrite("not an integer~n");
     Num > 0 -> greater(Num);
     Num < 0 -> lesser(Num);
     Num == 0 -> io:fwrite("0~n")
  end.
greater(Num) ->
  if
    Num rem 7 == 0 ->
      Val = math:pow(Num, 0.2),
      io:fwrite("~w~n", [Val]);
    true ->
      Val = factorial(Num),
      io:fwrite("~w~n", [Val])
  end.

lesser(Num) ->
  Val = math:pow(abs(Num), 7),
  io:fwrite("~w~n", [Val]).

factorial(0) -> 1;

factorial(Num) when Num > 0 -> Num * factorial(Num - 1).