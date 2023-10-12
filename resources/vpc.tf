resource "aws_vpc" "first_vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "first_vpc"
    department = "devops"
    tool = "terraform"
}
}


resource "aws_subnet" "first_subnet-one" {
  vpc_id = aws_vpc.first_vpc.id
  cidr_block = "10.10.0.0/24"
  tags = {
    Name = "first_subnet_one"
    department = "devops"
    tool = "terraform"
}
}

resource "aws_subnet" "first_subnet_two" {
  vpc_id = aws_vpc.first_vpc.id
  cidr_block = "10.10.1.0/24"
  tags = {
    Name = "first_subnet_two"
    department = "devops"
    tool = "terraform"
}
}


resource "aws_internet_gateway" "first_igw" {
  vpc_id = aws_vpc.first_vpc.id
  tags = {
   Name = "first_igw"
   department = "devops"
   tool = "terraform"
}
}


resource "aws_route_table" "fist_public_rtb" {
  vpc_id = aws_vpc.first_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.first_igw.id
}
  tags = {
    Name = "first_public_rtb"
    department = "devops"
    tool = "terraform"
}
}


resource "aws_route_table_association" "first_public_rtb_assoc" {
  subnet_id = aws_subnet.first_subnet-one.id
  route_table_id = aws_route_table.fist_public_rtb.id
}
