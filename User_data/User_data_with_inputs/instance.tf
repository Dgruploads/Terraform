provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ebs_instance" {
  ami             = lookup(var.ami_id, var.region)
  instance_type   = var.instance_type
  subnet_id       = var.subnet
  vpc_security_group_ids = [aws_security_group.custom_security_group.id]
  key_name        = var.key_name
  user_data       = data.template_file.init.rendered

  tags = {
    Name = "ebs with user data example"
  }
}
