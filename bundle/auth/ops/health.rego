package auth.ops.health
import data.packages.authorization

default allow = false

allow {
  authorization.is_authorized
}
