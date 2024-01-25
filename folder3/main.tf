resource "local_file" "test1" {
  content = var.example_one
  filename = "${path.module}/create_one.txt" 
}
resource "local_sensitive_file" "name" {
    content = var.name
    filename = "${path.module}/create_two.txt"
}
resource "local_sensitive_file" "name2" {
    content = var.number_type
    filename = "${path.module}/create_two.txt"
}

resource "local_file" "all_types"{
  content = var.example_one
  filename = "${path.module}/all/all.txt"
}

resource "local_file" "example" {
  filename = "output_file.txt"
  content  = join("\n", var.file_contents)
}
resource "local_file" "example_bool" {
  count    = var.enable_res ? 1 : 0
  filename = "output_file1.txt"
  content  = var.file_contents1
}
