-module(fib_opt).
-author("soldatenko").
-export([fib_opt/1]).

fib_opt(0) ->
  1;
fib_opt(1) ->
  1;
fib_opt(N) ->
  {Result, _} = lists:foldl(
    fun(_, {A, B}) -> {B, A + B} end,
    {1, 1},
    lists:seq(1, N)
  ),
  Result.