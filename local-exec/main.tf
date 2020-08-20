provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "cluster" {
  instance_type = "t2.micro"
  ami           = "ami-0b898040803850657"
  count         = 2

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}
