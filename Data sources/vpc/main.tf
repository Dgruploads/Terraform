resource "aws_security_group" "ec2_security_group" {
  name          = "terraform_security_group"
  description   = "terraform_security_group"
  vpc_id        = "${data.aws_vpc.existing_vpc.id}"

  ingress {
    description = "Custom security group"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    description = "Allow ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "terraform_security_group"
  }
}
resource "aws_instance" "ec2_instance" {
  instance_type          = var.ec2_instance_type
  ami                    = var.ec2_ami
  vpc_security_group_ids = ["${aws_security_group.ec2_security_group.id}"]
}
