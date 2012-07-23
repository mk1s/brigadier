-module(brigadier_sms_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.
	
to_html(ReqData, State) ->
	{ok, Content} = sms_dtl:render([{driver,"clickatell"}]),
    {Content, ReqData, State}.
