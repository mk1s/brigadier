ERL ?= erl
APP := brigadier

.PHONY: deps

all: deps
	@./rebar compile

deps:
	@./rebar get-deps

clean:
	@./rebar clean
	rm -rf priv/log/access.log.*

distclean: clean
	@./rebar delete-deps

docs:
	@erl -noshell -run edoc_run application '$(APP)' '"."' '[]'
