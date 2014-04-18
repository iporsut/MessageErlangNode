-module(node).

-export([start/0]).

start() ->
    spawn(fun() -> receive_message_loop() end).

receive_message_loop() ->
    receive
        Message ->
            io:format("~s~n",[Message])
    end,
    receive_message_loop().
