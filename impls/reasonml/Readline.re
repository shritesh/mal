let historyFile = Sys.getenv("HOME") ++ "/.mal-history";

let init = () => LNoise.history_load(~filename=historyFile) |> ignore;

let prompt = LNoise.linenoise;

let add = str => LNoise.history_add(str) |> ignore;
let save = () => LNoise.history_save(~filename=historyFile) |> ignore;