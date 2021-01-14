-module(readline_erl).

-export([get_line/1]).

get_line(Prompt) ->
    case io:get_line(Prompt) of
        eof -> {error, eof};
        {error, _} -> {error, no_data};
        Data -> {ok, Data}
    end.