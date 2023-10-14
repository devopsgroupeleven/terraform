resource "aws_vpc" "null_vpc" {
  cidr_block = "16.16.0.0/16"
  tags = {
    Name = "null-vpc"
}
}

resource "aws_instance" "instance_creation" {
  instance_type = "t2.micro"
  key_name = "terraforn_saas"
  ami = "ami-0f5ee92e2d63afc18"
  tags = {
    Name = "remote-execution"
}
   
}

output "vpc_id" {
  value = aws_vpc.null_vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.null_vpc.cidr_block
}


resource "null_resource" "local_execution" {
  depends_on = [aws_vpc.null_vpc]
  provisioner "local-exec" {
    command = "terraform output >> abc.txt"
}
}


resource "null_resource" "remote_execution" {
   connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("/home/ubuntu/pemkey")
    host     = aws_instance.instance_creation.public_ip
  }

   provisioner "remote-exec" {
     inline = [
        "sudo apt-get update -y",
        "sudo apt-get install nginx -y",
        "sudo /etc/init.d/nginx start"
    ]
}
}
