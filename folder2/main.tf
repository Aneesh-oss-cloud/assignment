resource "random_bytes" "server_secret" {
  length = 64
}
resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.acc_id
    # content = ami_id
    #filename="${path.module}/id.txt"
  }
  byte_length = 8
}
resource "random_integer" "priority" {
  min = var.ran_min
  max = var.ran_max
  keepers = {
    # Generate a new integer each time we switch to a new listener ARN
    #listener_arn = var.listener_arn
  }
}
resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}