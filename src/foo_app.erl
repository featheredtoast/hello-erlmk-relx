-module(foo_app).
-behaviour(application).
-export([start/2, stop/1]).
start(_StartType, _StartArgs) ->
    Priv = code:priv_dir(foo),
    io:format("loading" ++ Priv ++ "~n",[]),
    {ok, Config} = file:consult(Priv ++ "/app.config"),
    [application:set_env(foo,K,V)||{K,V}<-Config],
    foo_sup:start_link().
stop(_State) ->
    ok.
