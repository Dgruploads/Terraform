resource "aws_subnet" "custom-vpc-private-subnet-one" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = false
  cidr_block  = var.private_subnet_one

  tags = {
    Name = var.private_subnet_one_tags
  }
}

resource "aws_subnet" "custom-vpc-private-subnet-two" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = false
  cidr_block  = var.private_subnet_two

  tags = {
    Name = var.private_subnet_two_tags
  }
}
