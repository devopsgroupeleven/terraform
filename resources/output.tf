output "public_ip" {
  value = aws_instance.first_instance_one.public_ip
}

output "private_ip" {
  value = aws_instance.first_instance_one.private_ip

}


output "key_name" {
  value = var.key_name
}

output "instance_type" {
  value = var.instance_type
}

output "ami" {
  value = var.ami
}
