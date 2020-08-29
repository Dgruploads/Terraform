provider "aws" {
	profile = "default"
        region  = "us-east-1"
}

data "aws_vpc" "exiting" {
	
	filter {
		name 	= "tag:Name"
		values	= ["Default"]
	}	
}

resource "aws_subnet" "example" {
	vpc_id			= "${data.aws_vpc.exiting.id}"
	cidr_block		= "172.31.24.0/20"
}

resource "aws_security_group" "allow_http" {
  name          = "terraform security group"
  description   = "terraform security group"
  vpc_id        = "${data.aws_vpc.exiting.id}"

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
