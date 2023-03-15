resource "aws_instance" "server" {
  count         = 3 #This will launch 3 EC2 instances with the same configuration
  ami           = var.ec2_image
  instance_type = var.ec2_instance_type

  tags = { 
   Name         = "server_${count.index}"
  }
}
