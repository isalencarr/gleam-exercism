pub type Approval {
  No
  Yes
  Maybe
}

pub type Cuisine {
  Korean
  Turkish
}

pub type Genre {
  Crime
  Horror
  Thriller
  Romance
}

pub type Activity {
  BoardGame
  Chill
  Movie(Genre)
  Restaurant(Cuisine)
  Walk(Int)
}

pub fn rate_activity(activity: Activity) -> Approval {
  case activity {
    Movie(Romance) -> Yes
    Restaurant(Korean) -> Yes
    Restaurant(Turkish) -> Maybe
    Walk(t) if t > 11 -> Yes
    Walk(t) if t > 6-> Maybe
    _ -> No
  }
}
