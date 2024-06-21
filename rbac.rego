package authz

default allow = false

allow {
  input.user.subscription_status == "active"
}

allow {
  input.user.subscription_status == "free"
  input.user.usage < 100
}
