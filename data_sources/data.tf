data "aws_instance" "fetch-one" {
  instance_id = "i-033096d626ebb0656"

}


output "public_ip" {
  value = data.aws_instance.fetch-one.public_ip
}

output "key_name" {
  value = data.aws_instance.fetch-one.key_name
}
