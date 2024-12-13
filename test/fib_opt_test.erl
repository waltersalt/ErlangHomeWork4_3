-module(fib_opt_test).
-author("soldatenko").
-include_lib("eunit/include/eunit.hrl").
-import(fib_opt, [fib_opt/1]).

fib_test_() -> [
  ?_assert(fib_opt(0) =:= 1),
  ?_assert(fib_opt(1) =:= 1),
  ?_assert(fib_opt(2) =:= 2),
  ?_assert(fib_opt(3) =:= 3),
  ?_assert(fib_opt(4) =:= 5),
  ?_assert(fib_opt(5) =:= 8),
  ?_assertException(error, function_clause, fib_opt(-1)),
  ?_assert(fib_opt(31) =:= 2178309)
].