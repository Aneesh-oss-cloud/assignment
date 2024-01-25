variable "example_one" {
    type = number
    default = 45
}

variable "name"{
    type = string
    default = "Aneesh Sharma"
    description = "this is a string type"
}

variable "number_type"{
    type = number
    default = 11
    description = "this  is a number type and only store the numeric value"
}

variable "file_contents" {
  type    = list(string)
  default = [
    "Hi i am the 1st Student",
    "Hi i am the 2nd Student",
    "Hi i am the 3rd Student",
  ]
}

variable "enable_res" {
  type    = bool
  default = true
}
variable "file_contents1" {
  type    = string
  default = "This is the content of the file"
}

variable "map_contents" {
  type = map(string)
  default = {
    "file1" = "Content for file 1",
    "file2" = "Content for file 2",
    "file3" = "Content for file 3",
  }
}



