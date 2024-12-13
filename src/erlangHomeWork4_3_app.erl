%%%-------------------------------------------------------------------
%% @doc homework4_3 public API
%% @end
%%%-------------------------------------------------------------------

-module(erlangHomeWork4_3_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    homework4_3_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
