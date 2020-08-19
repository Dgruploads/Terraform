provider "aws" {
  AWS_ACCESS_KEY_ID = $AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = $AWS_SECRET_ACCESS_KEY
  region  = var.region
}

resource "aws_instance" "this" {
  count                  = var.instance_count
  instance_type          = var.instance_type
  ami                    = var.image_id
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_http.id}"]
}

resource "aws_security_group" "allow_http" {
  name                   = var.name
  description            = var.name
  vpc_id                 = "vpc-06a5dd7cbb70bcf5e"

  ingress {
    description          = "Allow http access"
    from_port            = 80
    to_port              = 80
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }

  ingress {
    description          = "Allow ssh access"
    from_port            = 22
    to_port              = 22
    protocol             = "tcp"
    cidr_blocks          = ["0.0.0.0/0"]
  }
}
