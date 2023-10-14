resource "aws_instance" "import_resource" {
 instance_type = "t2.micro"
 ami = "ami-08e5424edfe926b43"
 tags = {
   Name = "imported_to_terraform"
   department = "devops"
}

 
}
