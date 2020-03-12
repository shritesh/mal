let read = x => x;
let eval = x => x;
let print = x => x;

let rep = x => x |> read |> eval |> print;

let historyFile = Sys.getenv("HOME") ++ "/.mal-history";

let main = {
  LNoise.history_load(~filename=historyFile) |> ignore;

  let rec loop = () =>
    switch (LNoise.linenoise("user> ")) {
    | None => ()
    | Some(input) =>
      LNoise.history_add(input) |> ignore;
      input |> rep |> print_endline;
      loop();
    };

  loop();

  LNoise.history_save(~filename=historyFile) |> ignore;
};