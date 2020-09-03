resource "aws_internet_gateway" "custom-vpc-IGW" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id

  tags = {
    Name = var.custom-vpc-IGW
  }
}
