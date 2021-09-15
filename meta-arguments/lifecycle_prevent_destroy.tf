provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "lifecycle_example" {
  ami           = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  lifecycle {
    prevent_destroy = true
  }
}
