variable "Name" {
    type  = string
    default = "Hello World"
    description = "Description of the variable"
}
variable "var_tuple" {
  type = tuple ([
    string,
    number,
    list(string),
    map(any)
  ] )

  default = [
    "one",
    10,
    ["first", "second"],
    {
      "one" = "first",
      "two" = "second"
    }
  ]
}
variable "example_list" {
  type    = list(string)
  default = ["apple", "banana", "orange", "banana", "apple"]
}

variable "set_from_list" {
  type = set(string)
  
}

locals {
  set_from_list  = toset(var.example_list)
}



