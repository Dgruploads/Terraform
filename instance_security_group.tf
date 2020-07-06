provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example_terraform" {
  instance_type = "t2.micro"
  ami           = "ami-0b898040803850657"
}

resource "aws_security_group" "allow_http" {
  name          = "terraform security group"
  description   = "terraform security group"
  vpc_id        = "vpc-06a5dd7cbb70bcf5e"

  ingress {
    description = "Custom security group"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "Custom security group"
  }
}
