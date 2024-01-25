output "file_path" {
  value = resource.local_file.example.filename
}
output "file_path1" {
  value = resource.local_file.example_bool[0].filename
}
