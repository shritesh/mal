pub type ReadLineError {
  Eof
  NoData
}

pub external fn get_line(String) -> Result(string, ReadLineError) =
  "readline_erl" "get_line"
