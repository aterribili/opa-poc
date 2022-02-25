package auth.ops.health

default allow = false

allow {
  roles := data.roles.roles
	user_roles := object.filter(roles, input.identity.roles)
	regex.match(user_roles[_][_].action, input.resource.action)
  regex.match(user_roles[_][_].service, input.resource.service)
  regex.match(user_roles[_][_].path, input.resource.path)
}
