resource "aws_security_group" "custom-vpc-security-group" {
  name          = "custom-vpc-security-group"
  description   = "custom-vpc-security-group"
  vpc_id        = aws_vpc.custom-vpc-terraform.id

  ingress {
    description = "custom-vpc-security-group"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow https access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "Custom security group"
  }
}
