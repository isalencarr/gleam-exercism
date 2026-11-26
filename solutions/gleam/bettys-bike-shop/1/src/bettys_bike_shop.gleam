import gleam/int
import gleam/float
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  let pence_to_pounts_conversion_factor = 100
  int.to_float(pence) /.int.to_float(pence_to_pounts_conversion_factor)
}

pub fn pounds_to_string(pounds: Float) -> String {
  "£" <> float.to_string(pounds)
}
