variable "var_list_any" {
  type = list 
  default = ["a string", 10]
}

variable "var_list_string" {
  type = list(string)
  default = ["first string", "second string"]
}
variable "var_map" {
  type = map
  default = {
    "one" = "first",
    "two" = "second"
  }
}

variable "var_set_any" {
  type = set(any)
  default = ["string", 1]
}

variable "var_set_string" {
  type = set(string)
  default = ["string1", "string2"]
}

variable "var_object" {
  type = object({
    name = string,
    id = number,
    data = list(string)
    data_map = map(any)
  })

  default = {
    name = "one",
    id = 10,
    data = ["first", "second"],
    data_map = {
      "one" = "first",
      "two" = "second"
    }
  }
}

variable "var_string" {
  type = string
  default = "a string"
}
variable "var_bool" {
  type = bool 
  default = true
}
variable "var_number1" {
  type = number
  default = 1
}

variable "var_list_any1" {
  type = list 
  default = ["a string", 10]
}

variable "var_list_string1" {
  type = list(string)
  default = ["Aneesh", "Sharma"]
}

variable "instance_cost" {
  type = map
  default = {
    "t3.medium" = "0.04USD",
    "t3.large" = "0.08USD",
  }
}

variable "instance_number" {
  type = map
  default = {
    "0.04USD" = 2,
    "0.08USD" = 1,
  }
}
