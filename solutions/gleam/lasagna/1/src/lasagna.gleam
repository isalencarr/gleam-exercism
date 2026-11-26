pub fn expected_minutes_in_oven() -> Int {
  40
}

pub fn remaining_minutes_in_oven(minutes: Int) -> Int {
  expected_minutes_in_oven() - minutes
}

pub fn preparation_time_in_minutes(number_of_layers: Int) -> Int {
  let preparation_time_per_layer = 2
  preparation_time_per_layer * number_of_layers
}

pub fn total_time_in_minutes(added_layers: Int, past_time_in_oven: Int) -> Int {
  preparation_time_in_minutes(added_layers) + past_time_in_oven
}

pub fn alarm() -> String {
  "Ding!"
}