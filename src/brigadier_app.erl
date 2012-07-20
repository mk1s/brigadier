%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the brigadier application.

-module(brigadier_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for brigadier.
start(_Type, _StartArgs) ->
    brigadier_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for brigadier.
stop(_State) ->
    ok.
