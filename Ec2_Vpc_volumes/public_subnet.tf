resource "aws_subnet" "custom-vpc-public-subnet-one" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = true
  cidr_block  = var.public_subnet_one
  availability_zone = "us-east-1a"
  tags = {
    Name = var.public_subnet_one_tags
  }
}

resource "aws_subnet" "custom-vpc-public-subnet-two" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = true
  cidr_block  = var.public_subnet_two
  availability_zone = "us-east-1b"

  tags = {
    Name = var.public_subnet_two_tags
  }
}
