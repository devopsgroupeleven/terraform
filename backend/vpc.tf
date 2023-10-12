resource "aws_vpc" "backend_vpc" {
  cidr_block = "32.32.0.0/16"
  tags = {
    Name = "backend_vpc"
    department = "devops"
    tool = "terraform"
}
}

resource "aws_subnet" "backend_subnet" {
  vpc_id = aws_vpc.backend_vpc.id
  cidr_block = "32.32.0.0/24"
  tags = {
    Name = "backend_subnet"
    department = "devops"
    tool = "terraform"
}
}

resource "aws_subnet" "backend_subnet_two" {
  vpc_id = aws_vpc.backend_vpc.id
  cidr_block = "32.32.1.0/24"
  tags = {
    Name = "backend_subnet_one"
    department = "devops"
    tool = "terraform"
}
}
