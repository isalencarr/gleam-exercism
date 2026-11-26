import gleam/int

pub fn convert(number: Int) -> String {
  let sound = sound_for(number, 3, "")
  case sound {
    "" -> int.to_string(number)
    _ -> sound
  }
}

fn sound_for(n: Int, m: Int, s: String) -> String {
  case m {
    m if m > 7 -> s
    m if n % m == 0 -> {
      let acc = s <> concat_to_result(m)
      sound_for(n, m + 2, acc)
    }
    _ -> sound_for(n, m + 2, s)
  }
}

fn concat_to_result(m: Int) -> String {
  case m {
    3 -> "Pling"
    5 -> "Plang"
    7 -> "Plong"
    _ -> ""
  }
}