-module(brigadier_dns_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.
	
to_html(ReqData, State) ->
	{ok, Content} = zones_dtl:render([{driver,"zerigo"}]),
    {Content, ReqData, State}.
