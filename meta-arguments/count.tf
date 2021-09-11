provider "aws" {
profile = "default"
region = "us-east-1"
}

resource "aws_instance" "server" {
  count = 4 # create four similar EC2 instances

  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

  tags = {
    Name = "Server ${count.index}"
  }
}
