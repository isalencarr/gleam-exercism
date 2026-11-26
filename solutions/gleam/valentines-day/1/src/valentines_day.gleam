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
    BoardGame | Chill -> No
    Movie(Romance) -> Yes
    Movie(_) -> No
    Restaurant(Korean) -> Yes
    Restaurant(Turkish) -> Maybe
    Walk(t) if t > 6 && t <= 11 -> Maybe
    Walk(t) if t > 11 -> Yes
    _ -> No
  }
}
