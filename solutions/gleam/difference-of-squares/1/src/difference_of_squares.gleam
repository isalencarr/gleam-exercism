import gleam/int
import gleam/list


pub fn square_of_sum(n: Int) -> Int {
  n
  |> to_sequence
  |> int.sum
  |> in_squares
}

pub fn sum_of_squares(n: Int) -> Int {
  n
  |> to_sequence
  |> list.map(in_squares)
  |> int.sum
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}

fn in_squares(n: Int) -> Int { n * n }

fn to_sequence(n: Int) -> List(Int) {
  build_list_to_n(1, n, [])
}

fn build_list_to_n(current: Int, target: Int, acc: List(Int)) -> List(Int) {
  case current <= target {
    True -> {
      build_list_to_n(current + 1, target, [current, ..acc])
    }
    False -> acc
  }
}

