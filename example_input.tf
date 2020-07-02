provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# ami-0b898040803850657
variable "image_id" {     
  type = "string"
}

variable "instance_type" {
  type = "string"
}

resource "aws_instance" "example_terraform" {
  instance_type = "t2.micro"
  ami           = var.image_id
}

resource "aws_instance" "another_example_terraform" {
  instance_type = var.instance_type
  ami           = "ami-09d95fab7fff3776c"
}

# terraform plan -input=true
