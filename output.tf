output "list_any" {
  value = var.var_list_any
}

output "list_string" {
  value = var.var_list_string
}
output "map_one" {
  value = var.var_map["one"]
}
output "map_two" {
  value = var.var_map["two"]
}
output "set_any" {
  value = var.var_set_any
}

output "set_string" {
  value = var.var_set_string
}

output "object" {
  value = var.var_object
}

output "object_map" {
  value = var.var_object.data_map
}

output "string" {
  value = var.var_string
}
output "number" {
  value = var.var_bool ? "True" : "False"
}
output "number1" {
  value = var.var_number1
}
output "list_any1" {
  value = var.var_list_any1
}

output "list_string1" {
  value = var.var_list_string1
}

output "instances_count" {
  value = lookup(var.instance_number, var.instance_cost["t3.medium"], 0)
}