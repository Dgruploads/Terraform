resource "aws_instance" "example_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_ami

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ips.txt"
  }
}
