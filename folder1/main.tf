resource "local_file" "check1" {
    content = "this is my first content and it is not important or sensitive so i use local_file resource"
    filename = "${path.module}/example1.txt"
}
# create a new folder for the local file resource
resource "local_file" "check2"{
    content = "create a new file for resorce  in the out outside folder "
    filename = "../check2/example2.txt"
}
# create a new folder for resorce in side a directory
resource "local_file" "check3"{
    content = "create a new file for resorce  in side the folder "
    filename = "${path.module}/check3/example2.txt"
}
resource "local_file" "check4"{
    content =var.Name
    filename ="${path.module}/output/entry.txt" 
}
resource "local_file" "Local1s" {
    
     filename = "${path.module}/output/toset.txt"
    
 }