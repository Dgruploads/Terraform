provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_instance" "Ubuntu" {
  count                  = var.instance_count
  instance_type          = var.instance_type
  ami                    = lookup(var.image_id_os,"Ubuntu")
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_http.id}"]
}

resource "aws_instance" "Amazon" {
  count                  = var.instance_count
  instance_type          = var.instance_type
  ami                    = lookup(var.image_id_os,"Amazon")
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
