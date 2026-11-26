import gleam/int

pub fn is_leap_year(year: Int) -> Bool {
  {is_divisible_by_four(year) && !is_divisible_by_one_hundred(year)} ||
  {is_divisible_by_four(year) && is_divisible_by_one_hundred(year) && is_divisible_by_four_hundred(year)}
}

fn is_divisible_by_four(n: Int) {
  int.modulo(n, 4) == Ok(0)
}

fn is_divisible_by_one_hundred(n: Int) {
  int.modulo(n, 100) == Ok(0)
}

fn is_divisible_by_four_hundred(n: Int) {
  int.modulo(n, 400) == Ok(0)
}
