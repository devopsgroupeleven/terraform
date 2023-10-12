module "vpc" {
  source = "/home/ubuntu/terraform/modules/vpc"
  cidr_block = "14.14.0.0/16"
  Name = "snapdeal-vpc"
  department = "devops"
  tool = "terraform"
}
