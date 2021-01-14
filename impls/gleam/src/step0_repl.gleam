import gleam/io
import readline

pub fn main(_args) {
  loop()
}

fn loop() {
  case readline.get_line("user> ") {
    Ok(input) -> {
      input
      |> rep
      |> io.println
      loop()
    }
    Error(_) -> Nil
  }
}

fn read(input) {
  input
}

fn eval(input) {
  input
}

fn print(input) {
  input
}

fn rep(input) {
  input
  |> read
  |> eval
  |> print
}
