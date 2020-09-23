provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "private_ip_example" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [aws_security_group.custom_security_group.id]
  private_ip    = "10.0.1.10"
  key_name      = var.key_name

  tags = {
    Name = "Private_IP_example"
  }
}
