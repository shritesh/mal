let read = x => x;
let eval = x => x;
let print = x => x;

let rep = x => x |> read |> eval |> print;

let main = {
  Readline.init();

  let rec loop = () =>
    switch (Readline.prompt("user> ")) {
    | None => ()
    | Some(input) =>
      Readline.add(input);
      input |> rep |> print_endline;
      loop();
    };

  loop();

  Readline.save();
};