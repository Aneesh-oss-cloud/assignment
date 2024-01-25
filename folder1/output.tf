output "tuple" {
  value = var.var_tuple
}

output "tuple_map" {
  value = var.var_tuple[3]
}
output "set_from_list" {
  value = locals.set_from_list
}