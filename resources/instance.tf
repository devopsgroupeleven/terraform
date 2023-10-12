resource "aws_instance" "first_instance_one" {
  ami = var.ami["ubuntu20"]
  instance_type = var.instance_type[0]
  associate_public_ip_address = var.associate_public_ip_address
  key_name = var.key_name
  tags = {
    Name = "first_instance"
    department = "devops"
    tool = "terraform"
}
}
