provider "aws" {
  access_key = "AKIAUOAFDXKX6D4KXIG4"
  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_instance" "first_instance" {
  ami = "ami-08e5424edfe926b43"
  availability_zone = "ap-south-1a"
  key_name = "web_server_aws"
  vpc_security_group_ids = ["sg-067732b0eb9f45c44"]
  instance_type = "t2.medium"
  tags = {
    Name = "first_instance"
    Department = "DevOps"
    tools = "Terraform"
}

}
