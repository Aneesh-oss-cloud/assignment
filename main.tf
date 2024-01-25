# arguments accepted by this resource is sensitive
resource "local_sensitive_file" "anish" {
  content  = "it is important content"
  filename = "${path.module}/anii.txt"
}
# local file use in terraform and create a folder for the local resource
resource "local_file" "test"{
    content = "file in the another folder"
    filename = "${path.module}/file/aneesh.txt"
}    

#list with local resource
resource "local_file" "file" {
  # filename = "file-${var.var_list_any[1]}.txt"
  filename = "${path.module}/list.txt"
  content = var.var_list_string[0]
}

resource "local_file" "string1"{
  content = var.var_string
  filename = "${path.module}/output/output.txt"
}

resource "local_file" "number1" {
  content = var.var_number1
  filename = "${path.module}/number/output.txt"
  
}
resource "local_file" "bool1" {
  content = var.var_bool
  filename = "${path.module}/number/output1.txt"
}

resource "local_file" "file1" {
  filename = "${path.module}/file1.txt"

  content = var.var_list_string[0]
}