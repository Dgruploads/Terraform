provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "example_terraform" {
  instance_type = "t2.micro"
  ami           = "ami-0b898040803850657"
}

resource "aws_instance" "another_example_terraform" {
  instance_type = "t2.micro"
  ami           = "ami-09d95fab7fff3776c"
}
