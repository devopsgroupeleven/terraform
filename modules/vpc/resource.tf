resource "aws_vpc" "module_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.Name
    department = var.department
    tool = var.tool
}
}
