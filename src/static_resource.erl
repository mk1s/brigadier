%% @author Bryan Fink
%% @doc Serve static content from disk
%%      Note: for a much more full-featured filesystem
%%      resource, have a look at demo_fs_resource.erl
%%      in webmachine's demo directory.
-module(static_resource).
-export([init/1,
	resource_exists/2,
	 to_html/2]).

-record(context, {root, filepath}).

-include_lib("webmachine/include/webmachine.hrl").

init(Opts) ->
    {ok, #context{root=proplists:get_value(root, Opts)}}.


resource_exists(R, S) ->
	io:format("Context: ~p~n", [S]),	
	{false, R, S}.
	
to_html(R, S) ->
	{"HELP", R, S}.