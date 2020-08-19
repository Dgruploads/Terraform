provider "aws" {
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
  vpc_id                 = "vpc-00f6f586c20bfc847"

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
