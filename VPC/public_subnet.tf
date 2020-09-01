resource "aws_route_table_association" "public_route_association" {
  subnet_id   =  aws_subnet.custom-vpc-public-subnet-one.id
  route_table_id = aws_route_table.public_route_table.id
}
resource "aws_subnet" "custom-vpc-public-subnet-one" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = true
  cidr_block  = var.public_subnet_one

  tags = {
    Name = var.public_subnet_one_tags
  }
}

resource "aws_subnet" "custom-vpc-public-subnet-two" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = true
  cidr_block  = var.public_subnet_two

  tags = {
    Name = var.public_subnet_two_tags
  }
}
