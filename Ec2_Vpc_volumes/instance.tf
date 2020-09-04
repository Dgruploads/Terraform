resource "aws_instance" "web_instance" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.custom-vpc-public-subnet-one.id
  vpc_security_group_ids = [aws_security_group.custom-vpc-security-group.id]
  key_name      = var.key_name
  availability_zone = "us-east-1a"
  tags = {
    Name = var.ec2_tags
  }
}
