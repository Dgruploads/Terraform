provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

variable "high_availability" {
  type    = bool
#  default = true
  default = false
}

resource "aws_instance" "server" {
  count = (var.high_availability == true ? 3 : 1)

  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
