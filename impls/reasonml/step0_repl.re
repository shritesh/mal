let read = x => x;
let eval = x => x;
let print = x => x;

let rep = x => x |> read |> eval |> print;

let rec main = () => {
  print_string("user> ");
  switch (read_line()) {
  | input =>
    input |> rep |> print_endline;
    main();
  | exception End_of_file => ()
  };
};

main();