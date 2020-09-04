resource "aws_route_table" "public_route_table" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.custom-vpc-IGW.id
  }

  tags = {
    Name = var.public_route_table
  }
}

resource "aws_route_table_association" "public_route_association" {
  subnet_id   =  aws_subnet.custom-vpc-public-subnet-one.id
  route_table_id = aws_route_table.public_route_table.id
}
